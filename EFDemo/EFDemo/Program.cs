using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            DatabaseFirstEntities model = new DatabaseFirstEntities();
            model.Menus.Add(new Menu() { });
            model.Teas.Add(new Tea());
            model.SaveChanges();
            Console.ReadKey();
        }
    }
}
