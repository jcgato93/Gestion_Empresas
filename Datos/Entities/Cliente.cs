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
    using System.ComponentModel.DataAnnotations;

    public partial class Cliente
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Cliente()
        {
            this.Re_Empresa_Cliente = new HashSet<Re_Empresa_Cliente>();
        }

        [Display(Name = "Cliente ID")]
        public int Cliente_Id { get; set; }

        [Required(ErrorMessage = "El campo {0} es Requerido")]
        [Display(Name ="Nombres")]
        public string Nombre { get; set; }

        [Required(ErrorMessage = "El campo {0} es Requerido")]
        [Display(Name = "Apellidos")]
        public string Apellido { get; set; }

        [Display(Name = "Numero Identificacion")]
        public string Identificacion { get; set; }

        [Display(Name = "Telefono Fijo")]
        public Nullable<int> Telefono_Fijo { get; set; }

        [Display(Name = "Telefono Celular")]
        public Nullable<int> Telefono_Celular { get; set; }

        [Display(Name = "Email")]
        [EmailAddress]
        public string Email { get; set; }

        [Display(Name = "Direccion")]
        public string Direccion { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Re_Empresa_Cliente> Re_Empresa_Cliente { get; set; }
    }
}