﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using UCV.Comun.Modelos;
using UCV.DatabaseAccess.Servicios;

namespace UCV.Services
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "CompaniasService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select CompaniasService.svc or CompaniasService.svc.cs at the Solution Explorer and start debugging.
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerCall)]
    public class CompaniasService : ICompaniasService
    {
        // Run sin debug, Ctrl + F5
        ServicioCompania dao = new ServicioCompania();

        public void DeleteCompania(Compania compania)
        {
            dao.DeleteCompania(compania);
        }

        public Compania GetCompania(string id)
        {
            return dao.GetCompania(new Guid(id));
        }

        public List<Compania> GetCompanias()
        {
            return dao.GetCompanias();
        }

        public List<Compania> GetCompanias(string id, string ruc, int calificacion)
        {
            throw new NotImplementedException();
        }

        public List<Compania> GetCompanias(string id, string ruc)
        {
            throw new NotImplementedException();
        }

        public List<Compania> GetCompanias(string id, int calificacion)
        {
            throw new NotImplementedException();
        }

        public List<Compania> GetCompaniasAllFilters(string id, string ruc, int calificacion)
        {
            throw new NotImplementedException();
        }

        public List<Compania> GetCompaniasByIdAndCal(string id, int calificacion)
        {
            throw new NotImplementedException();
        }

        public List<Compania> GetCompaniasByIdAndRuc(string id, string ruc)
        {
            throw new NotImplementedException();
        }

        public List<Compania> GetCompaniasContains(string id)
        {
            throw new NotImplementedException();
        }

        public void SaveCompania(Compania compania)
        {
            dao.SaveCompania(compania);
        }

        public void UpdateCompania(Compania compania)
        {
            dao.UpdateCompania(compania);
        }
    }
}
