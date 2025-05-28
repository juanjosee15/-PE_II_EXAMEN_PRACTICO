using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace proyecto_peti.Models
{
    [Table("CadenaValor")]
    public class CadenaValor
    {
        public int Id { get; set; }
        public int PlanId { get; set; }
        public int? PreguntaNumero { get; set; }
        public string PreguntaTexto { get; set; }

        [Range(1, 5, ErrorMessage = "La valoraci�n debe estar entre 1 y 5")]
        public int? Valoracion { get; set; }

        // Campos originales que ya exist�an en tu tabla
        public string ActividadPrimaria { get; set; }
        public string ActividadSecundaria { get; set; }

        public DateTime CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }

        [ForeignKey("PlanId")]
        public virtual PlanEstrategico PlanEstrategico { get; set; }
    }

    [Table("ObservacionesCadenaValor")]
    public class ObservacionesCadenaValor
    {
        public int Id { get; set; }
        public int PlanId { get; set; }
        public string Fortalezas1 { get; set; }
        public string Fortalezas2 { get; set; }
        public string Fortalezas3 { get; set; }
        public string Fortalezas4 { get; set; }
        public string Debilidades1 { get; set; }
        public string Debilidades2 { get; set; }
        public string Debilidades3 { get; set; }
        public string Debilidades4 { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }

        [ForeignKey("PlanId")]
        public virtual PlanEstrategico PlanEstrategico { get; set; }
    }
}

namespace proyecto_peti.ViewModels
{
    public class CadenaValorViewModel
    {
        public List<proyecto_peti.Models.CadenaValor> CadenaValores { get; set; }
        public proyecto_peti.Models.ObservacionesCadenaValor Observaciones { get; set; }
        public double? PotencialMejora { get; set; }
    }
}