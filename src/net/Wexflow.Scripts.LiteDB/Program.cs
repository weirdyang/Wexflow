using System;
using System.Configuration;
using Wexflow.Core.Db.LiteDB;
using Wexflow.Scripts.Core;

namespace Wexflow.Scripts.LiteDB
{
    class Program
    {
        static void Main()
        {
            try
            {
                Db.Create(ConfigurationManager.AppSettings["connectionString"]);
                var db = Db.Instance;
                Helper.InsertWorkflowsAndUser(db);
                db.Dispose();
            }
            catch (Exception e)
            {
                Console.WriteLine("An error occured: {0}", e);
            }

            Console.Write("Press any key to exit...");
            Console.ReadKey();
        }
    }
}
