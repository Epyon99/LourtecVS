using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace TaskDemo
{
    class Program
    {
        static async void Main(string[] args)
        {
            AsyncClass c = new AsyncClass();
            
            // Cuando devuelve void sin async/await
            c.SumaAsync(1, 2).Wait();

            // cuando devuelve un valor sin async/await
            Task<int> asd = c.SumaAsync(1,2);
            asd.Wait();
            var valor = asd.Result;
            
            // Cuando devuelve void con async/await
            await c.SumaAsync(1, 2);

            // cuando devuelve un valor con async/await
            var v = await c.SumaAsync(1, 2);
        }

        public static void ParallelAsync()
        {

        }

        public async static void TaskAsync()
        {
            await Task.Run(() =>
            {
                Console.WriteLine("Antes de Ejecutar 15 segundos");
                Console.WriteLine("Luego de Ejecutar 15 Segundos");
            }
            );
        }

        public static void ParallelTest()
        {
            while (true)
            {
                // Ciclo que se ejecuta cada 10 segundos
                // Pueden aplicar System.Timers 
                Task.Run(() => Console.WriteLine("x"));
                Task.Delay(1).Wait();
                break;
            }

            Parallel.Invoke(() =>
            {
                Console.WriteLine("1:" + DateTime.Now.Millisecond);
                Task.Delay(new Random().Next(1000, 10000));
                Console.WriteLine("Termino metodo 1:");
            },
                            () =>
                            {
                                Console.WriteLine("2:" + DateTime.Now.Millisecond);
                                Task.Delay(new Random().Next(2000, 20000));
                                Console.WriteLine("Termino metodo 2:");
                            },
                            () =>
                            {
                                Console.WriteLine("3:" + DateTime.Now.Millisecond);
                                Task.Delay(new Random().Next(3000, 30000));
                                Console.WriteLine("Termino metodo 3:");
                            });
            Console.ReadLine();
        }

        public static void TaskTest()
        {
            System.Threading.CancellationToken x = new System.Threading.CancellationToken();

            Task task1 = new Task(() =>
            {
                Console.WriteLine("Antes de Ejecutar 15 segundos");
                Task.Delay(15000).Wait();
                Console.WriteLine("Luego de Ejecutar 15 Segundos");
            }
            );
            task1.Start();
            var resultado = Task<string>.Run(() =>
            {
                Console.WriteLine("Antes de Ejecutar 2");
                Task.Delay(10000).Wait();
                Console.WriteLine("Luego de Ejecutar 2");
                return "Hola Mundo";
            }).ContinueWith((q) =>
            {
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
