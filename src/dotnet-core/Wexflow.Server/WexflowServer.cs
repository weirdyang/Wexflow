using log4net;
using log4net.Config;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using System;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Xml;
using Wexflow.Core;

namespace Wexflow.Server
{
    public class WexflowServer
    {
        private static string superAdminUsername;

        public static FileSystemWatcher Watcher;
        public static IConfiguration Config;
        public static WexflowEngine WexflowEngine;

        public static void Main(string[] args)
        {
            Config = new ConfigurationBuilder()
                .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true)
                .Build();

            var log4NetConfig = new XmlDocument();
            log4NetConfig.Load(File.OpenRead("log4net.config"));
            var repo = LogManager.CreateRepository(Assembly.GetEntryAssembly(), typeof(log4net.Repository.Hierarchy.Hierarchy));
            XmlConfigurator.Configure(repo, log4NetConfig["log4net"]);

            var wexflowSettingsFile = Config["WexflowSettingsFile"];
            superAdminUsername = Config["SuperAdminUsername"];
            var enableWorkflowsHotFolder = bool.Parse(Config["EnableWorkflowsHotFolder"]);
            WexflowEngine = new WexflowEngine(wexflowSettingsFile, enableWorkflowsHotFolder);
            WexflowEngine.Run();

            if (enableWorkflowsHotFolder)
            {
                InitializeFileSystemWatcher();
            }
            else
            {
                Logger.Info("Workflows hot folder is disabled.");
            }

            var port = int.Parse(Config["WexflowServicePort"]);

            var host = new WebHostBuilder()
                .UseContentRoot(Directory.GetCurrentDirectory())
                .UseKestrel((context, options) =>
                {
                    options.ListenAnyIP(port);
                })
                .UseStartup<Startup>()
                .Build();

            host.Run();

            Console.Write("Press any key to stop Wexflow server...");
            Console.ReadKey();
            WexflowEngine.Stop(true, true);
        }

        public static void InitializeFileSystemWatcher()
        {
            Logger.Info("Initializing FileSystemWatcher...");
            Watcher = new FileSystemWatcher
            {
                Path = WexflowEngine.WorkflowsFolder,
                Filter = "*.xml",
                IncludeSubdirectories = false
            };

            // Add event handlers.
            Watcher.Created += OnCreated;
            Watcher.Changed += OnChanged;
            Watcher.Deleted += OnDeleted;

            // Begin watching.
            Watcher.EnableRaisingEvents = true;
            Logger.InfoFormat("FileSystemWatcher.Path={0}", Watcher.Path);
            Logger.InfoFormat("FileSystemWatcher.Filter={0}", Watcher.Filter);
            Logger.InfoFormat("FileSystemWatcher.EnableRaisingEvents={0}", Watcher.EnableRaisingEvents);
            Logger.Info("FileSystemWatcher Initialized.");
        }

        private static void OnCreated(object source, FileSystemEventArgs e)
        {
            Logger.Info("FileSystemWatcher.OnCreated");
            try
            {
                var admin = WexflowEngine.GetUser(superAdminUsername);
                WexflowEngine.SaveWorkflowFromFile(admin.GetId(), Core.Db.UserProfile.SuperAdministrator, e.FullPath);
            }
            catch (Exception ex)
            {
                Logger.ErrorFormat("Error while creating the workflow {0}", ex, e.FullPath);
            }
        }

        private static void OnChanged(object source, FileSystemEventArgs e)
        {
            Logger.Info("FileSystemWatcher.OnChanged");
            try
            {
                var admin = WexflowEngine.GetUser(superAdminUsername);
                WexflowEngine.SaveWorkflowFromFile(admin.GetId(), Core.Db.UserProfile.SuperAdministrator, e.FullPath);
            }
            catch (Exception ex)
            {
                Logger.ErrorFormat("Error while updating the workflow {0}", ex, e.FullPath);
            }
        }

        private static void OnDeleted(object source, FileSystemEventArgs e)
        {
            Logger.Info("FileSystemWatcher.OnDeleted");
            try
            {
                var removedWorkflow = WexflowEngine.Workflows.SingleOrDefault(wf => wf.FilePath == e.FullPath);
                if (removedWorkflow != null)
                {
                    WexflowEngine.DeleteWorkflow(removedWorkflow.DbId);
                }
            }
            catch (Exception ex)
            {
                Logger.ErrorFormat("Error while deleting the workflow {0}", ex, e.FullPath);
            }
        }

    }
}
