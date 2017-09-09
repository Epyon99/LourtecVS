using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace UCV.Comun.Modelos
{
    public class Compania : BaseClass
    {
        public string Ruc { get; set; }

        public float Calificacion { get; set; }
    }
}