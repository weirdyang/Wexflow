using System;
using System.Threading;
using System.Xml.Linq;
using Wexflow.Core;

namespace Wexflow.Tasks.SubWorkflow
{
    public enum KickOffMode
    {
        Sync,
        Async
    }

    public class SubWorkflow : Task
    {
        public int WorkflowId { get; private set; }
        public KickOffMode Mode { get; private set; }

        public SubWorkflow(XElement xe, Workflow wf) : base(xe, wf)
        {
            WorkflowId = int.Parse(GetSetting("id"));
            Mode = (KickOffMode)Enum.Parse(typeof(KickOffMode), GetSetting("mode", "sync"), true);
        }

        public override TaskStatus Run()
        {
            InfoFormat("Kicking off the sub workflow {0} ...", WorkflowId);

            var success = true;
            var warning = false;

            try
            {
                var workflow = Workflow.WexflowEngine.GetWorkflow(WorkflowId);
                switch (Mode)
                {
                    case KickOffMode.Sync:
                        success = workflow.StartSync(Guid.NewGuid(), ref warning);
                        break;
                    case KickOffMode.Async:
                        workflow.StartAsync();
                        break;
                }
            }
            catch (ThreadAbortException)
            {
                throw;
            }
            catch (Exception e)
            {
                ErrorFormat("An error occured while Kicking off the sub workflow {0}.", e, WorkflowId);
                success = false;
            }

            var status = Status.Success;

            if (!success)
            {
                status = Status.Error;
            }
            else if (warning)
            {
                status = Status.Warning;
            }

            Info("Task finished.");
            return new TaskStatus(status);
        }
    }
}
