﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using UCV.Comun.Modelos;

namespace UCV.Services
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ICompaniasService" in both code and config file together.
    [ServiceContract]
    public interface ICompaniasService
    {
        [OperationContract]
        List<Compania> GetCompanias();

        [OperationContract]
        List<Compania> GetCompaniasAllFilters(string id, string ruc, int calificacion);

        [OperationContract]
        List<Compania> GetCompaniasContains(string id);

        [OperationContract]
        List<Compania> GetCompaniasByIdAndRuc(string id,string ruc);

        [OperationContract]
        List<Compania> GetCompaniasByIdAndCal(string id,int calificacion);

        [OperationContract]
        Compania GetCompania(string id);



        [OperationContract]
        void SaveCompania(Compania compania);

        [OperationContract]
        void UpdateCompania(Compania compania);

        [OperationContract]
        void DeleteCompania(Compania compania);
    }
}
