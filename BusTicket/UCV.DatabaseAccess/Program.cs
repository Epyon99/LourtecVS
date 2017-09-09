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

            var companias = new List<Compania>()
            {
                new Compania()
                {
                    Ruc = $"Ruc Masico Unico {new Random().Next(1, 10000).ToString()}",
                    Calificacion = new Random().Next(1, 10)
                },
                null,
                new Compania()
                {
                    Ruc = string.Empty,
                    Calificacion = 1,
                }
            };

            servicioCompania.SaveCompania(compania);
            servicioCompania.SaveCompania(companias);
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
