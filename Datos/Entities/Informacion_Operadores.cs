//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Datos.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class Informacion_Operadores
    {
        public int Informacion_Operadores_Id { get; set; }
        public Nullable<int> Empresa_Id { get; set; }
        public string Login_Operador { get; set; }
        public string Clave_Operador { get; set; }
    
        public virtual Empresa Empresa { get; set; }
    }
}