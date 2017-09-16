using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LockDemo
{
    class Program
    {
        static readonly object _object = new object();

        static void TestLock()
        {
            lock (_object)
            {
                Task.Delay(10000).Wait();
                Console.WriteLine(DateTime.Now.TimeOfDay.ToString() + ":---" + DateTime.Now.Millisecond);
            }
        }

        static void Main(string[] args)
        {
            for (int i = 0; i < 10; i++)
            {
                Task.Run(() => TestLock());
                Console.WriteLine($"For iteracion:{i}");
            }
            Console.ReadKey();
        }
    }
}
