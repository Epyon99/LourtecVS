using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TaskDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            
        }

        public static void TaskTest()
        {
            System.Threading.CancellationToken x = new System.Threading.CancellationToken();

            Task task1 = new Task(() => {
                Console.WriteLine("Antes de Ejecutar 15 segundos");
                Task.Delay(15000).Wait();
                Console.WriteLine("Luego de Ejecutar 15 Segundos");
            }
            );
            task1.Start();
            var resultado = Task<string>.Run(() => {
                Console.WriteLine("Antes de Ejecutar 2");
                Task.Delay(10000).Wait();
                Console.WriteLine("Luego de Ejecutar 2");
                return "Hola Mundo";
            }).ContinueWith((q) => {
                Console.WriteLine("Antes de Ejecutar");
                Task.Delay(10000).Wait();
                Console.WriteLine("Luego de Ejecutar");
                return q + " Hola";
            });
            resultado.Wait();
            Console.WriteLine("Escribir por escribir");
            Console.WriteLine($"Resultado:{resultado.Result}");

            //task1.Start();
            Console.ReadKey();
        }
    }
}
