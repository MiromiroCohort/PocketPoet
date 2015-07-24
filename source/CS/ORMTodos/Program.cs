using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Demo;

namespace ORMTodos
{
    class Program
    {
        /********************Tip**********************
         * As you know the static void main is the start of the app, follow the code through and identify what each part is doing. Work out how you will extend the app to meet the requirements.
         * You may need to change the connection string to that of your computer checkout the app.config file
         */
        static void Main(string[] args)
        {
            Router router = new Router();
            router.Route(args);
        }
    }
}
