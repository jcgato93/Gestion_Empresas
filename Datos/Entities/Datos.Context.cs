﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Nx_Gestion_EmpresasEntities : DbContext
    {
        public Nx_Gestion_EmpresasEntities()
            : base("name=Nx_Gestion_EmpresasEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Cliente> Cliente { get; set; }
        public virtual DbSet<Codigos_Actividad_Economica> Codigos_Actividad_Economica { get; set; }
        public virtual DbSet<Empresa> Empresa { get; set; }
        public virtual DbSet<Empresas_Prestadoras_Servicios> Empresas_Prestadoras_Servicios { get; set; }
        public virtual DbSet<Informacion_Bancaria> Informacion_Bancaria { get; set; }
        public virtual DbSet<Informacion_DIAN> Informacion_DIAN { get; set; }
        public virtual DbSet<Informacion_Industria_Comercio> Informacion_Industria_Comercio { get; set; }
        public virtual DbSet<Informacion_Operadores> Informacion_Operadores { get; set; }
        public virtual DbSet<Re_Empresa_Cliente> Re_Empresa_Cliente { get; set; }
        public virtual DbSet<Re_Empresa_CodigosActiEconomica> Re_Empresa_CodigosActiEconomica { get; set; }
        public virtual DbSet<Re_Empresa_EmpresaPresServicios> Re_Empresa_EmpresaPresServicios { get; set; }
        public virtual DbSet<Re_Empresa_ServiciosMensualidad> Re_Empresa_ServiciosMensualidad { get; set; }
        public virtual DbSet<Re_Empresa_ServiciosPorUsuario> Re_Empresa_ServiciosPorUsuario { get; set; }
        public virtual DbSet<Representante_Legal> Representante_Legal { get; set; }
        public virtual DbSet<Resolucion_Facturacion> Resolucion_Facturacion { get; set; }
        public virtual DbSet<Servicios_Mensualidad> Servicios_Mensualidad { get; set; }
        public virtual DbSet<Servicios_Por_Usuarios> Servicios_Por_Usuarios { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
    }
}