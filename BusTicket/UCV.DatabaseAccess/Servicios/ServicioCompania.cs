using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UCV.Comun.Interfaces;
using UCV.Comun.Modelos;
using UCV.DatabaseAccess.Contextos;

namespace UCV.DatabaseAccess.Servicios
{
    public class ServicioCompania : IServiciosCompania
    {
        SqlBusContexto db;

        public ServicioCompania()
        {
            db = new SqlBusContexto();
        }

        public bool DeleteCompania(Compania Compania)
        {
            throw new NotImplementedException();
        }

        public List<Compania> GetCompanias()
        {
            // SELECT * FROM Companias;
            return db.Companias.Where(g=> true).Take(20).ToList();
        }

        public void SaveCompania(Compania compania)
        {
            if (compania.Ruc == null || compania.Ruc == String.Empty)
            {
                throw new NullReferenceException("El Ruc no puede ser nulo o vacio");
            }
            compania.Id = Guid.NewGuid();
            db.Companias.Add(compania);
            db.SaveChanges();
        }

        public void SaveCompania(List<Compania> companias)
        {
            // Validar si hay elementos vacios en la coleccion Linq Funcional/Extension
            var hayElementosVacios = companias.Where(g => g == null ||
                                   g.Ruc == null ||
                                   g.Ruc == String.Empty)
                            .Count() > 0;

            // Validar si hay elementos vacios en la coleccion Linq Clasico
            hayElementosVacios = (from g in companias
                                  where g == null ||
                                        g.Ruc == null ||
                                        g.Ruc == String.Empty
                                  select g).Count() > 0;
            if (hayElementosVacios)
            {
                throw new NullReferenceException("El Ruc no puede ser nulo o vacio");
            }
            // Recrear todos los valores con un ID nuevo Linq Funcional/Extension
            var data = companias.Select(g => new Compania
            {
                Id = Guid.NewGuid(),
                Ruc = g.Ruc,
                Calificacion = g.Calificacion
            });
            // Recrear todos los valores con un ID nuevo Linq Clasico
            data = from g in companias
                   select new Compania()
                   {
                       Id = Guid.NewGuid(),
                       Ruc = g.Ruc,
                       Calificacion = g.Calificacion,
                   };
            db.Companias.AddRange(data);
            db.SaveChanges();
        }

        public void UpdateCompania(Compania Compania)
        {
            throw new NotImplementedException();
        }
    }
}
