using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UCV.Comun.Modelos;
using UCV.DatabaseAccess.Contextos;
using UCV.DatabaseAccess.Servicios;

namespace UCV.DatabaseAccess
{
    class Program
    {
        static void Main(string[] args)
        {
            var servicioCompania = new ServicioCompania();
            var compania = new Compania()
            {
                Ruc = $"Ruc Unico {new Random().Next(1, 10000).ToString()}",
                Calificacion = new Random().Next(1, 10)
            };
            var cc = new Compania();
            cc.Ruc = "Hola Mundo";
            cc.Calificacion = 1;

            var companias = new List<Compania>()
            {
                new Compania()
                {
                    Ruc = $"Ruc Masico Unico {new Random().Next(1, 10000).ToString()}",
                    Calificacion = new Random().Next(1, 10)
                },
            };
            var ll = new List<Compania>();
            ll.Add(cc);
            ll.Add(null);

            try
            {
                servicioCompania.SaveCompania(compania);
                servicioCompania.SaveCompania(companias);
            }
            catch (Exception e)
            {
                Console.WriteLine("No se pudo hacer un guardado: " + e.Message);
            }

            foreach (var c in servicioCompania.GetCompanias())
            {
                Console.WriteLine($"-- Registro ---");
                Console.WriteLine($"{c.Id}-{c.Ruc}-{c.Calificacion}");
            }


            while (true)
            {
                if (Console.ReadLine() == "quit")
                {
                    break;
                }
            }
        }
    }
}
