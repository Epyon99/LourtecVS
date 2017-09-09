using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UCV.Comun.Modelos;

namespace UCV.Comun.Interfaces
{
    public interface IServiciosCompania
    {
        List<Compania> GetCompanias();

        void SaveCompania(Compania Compania);

        void SaveCompania(List<Compania> Compania);

        void UpdateCompania(Compania Compania);

        bool DeleteCompania(Compania Compania);
    }
}
