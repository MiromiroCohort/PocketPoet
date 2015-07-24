using System;
using System.Linq;
using ORMTodos;

namespace Demo
{
    internal class Router
    {
        public void Route(string[] args)
        {
            var command = args.Length != 0 ? args[0].ToLowerInvariant() : String.Empty;

            IControler controler;
            switch (command)
            {
                case "add":
                    controler = new AddControler();
                    break;
                // TODO Implement the list controller and list view so they retrieve from the database and show the list of todos in the console
                //case "list":
                //    controler = new ListController();
                //    break;
                case "help":
                case "h":
                case "-h":
                    controler = new HelpControler();
                    break;
                default:
                    controler = new FallBackControler();
                    break;
            }


            try
            {
                controler.Process(command, args.Skip(1));
            }
            catch (Exception ex)
            {
                Console.WriteLine(string.Empty);
                Console.WriteLine(ex.Message);
                Console.WriteLine(string.Empty);
            }
        }
    }
}