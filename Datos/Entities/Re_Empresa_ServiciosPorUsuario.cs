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
    
    public partial class Re_Empresa_ServiciosPorUsuario
    {
        public int Re_Empresa_ServiciosPorUsuarios_Id { get; set; }
        public Nullable<int> Empresa_Id { get; set; }
        public Nullable<int> Servicios_Por_Usuario_Id { get; set; }
        public Nullable<int> Tarifa_Servicio { get; set; }
    
        public virtual Empresa Empresa { get; set; }
        public virtual Servicios_Por_Usuarios Servicios_Por_Usuarios { get; set; }
    }
}
