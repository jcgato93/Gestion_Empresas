USE [master]
GO
/****** Object:  Database [Nx_Gestion_Empresas]    Script Date: 01/01/2018 9:43:44 p. m. ******/
CREATE DATABASE [Nx_Gestion_Empresas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Nx_Gestion_Empresas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Nx_Gestion_Empresas.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Nx_Gestion_Empresas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Nx_Gestion_Empresas_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Nx_Gestion_Empresas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET  MULTI_USER 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Nx_Gestion_Empresas]
GO
/****** Object:  User [Invitado]    Script Date: 01/01/2018 9:43:45 p. m. ******/
CREATE USER [Invitado] FOR LOGIN [Invitado] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cliente_Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Identificacion] [varchar](50) NULL,
	[Telefono_Fijo] [int] NULL,
	[Telefono_Celular] [int] NULL,
	[Email] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Cliente_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Codigos_Actividad_Economica]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Codigos_Actividad_Economica](
	[Codigos_Actividad_Economica_Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_Actividad] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Codigos_Actividad_Economica] PRIMARY KEY CLUSTERED 
(
	[Codigos_Actividad_Economica_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[Empresa_Id] [int] IDENTITY(1,1) NOT NULL,
	[Razon_Social] [varchar](50) NULL,
	[Representante_Legal_Id] [int] NULL,
	[Fecha_Registro] [date] NULL,
	[Fecha_Creacion] [date] NULL,
	[NIT] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Telefono_Fijo] [int] NULL,
	[Telefono_Celular] [int] NULL,
	[RUT] [varchar](50) NULL,
	[Nombre_Contacto] [varchar](50) NULL,
	[Telefono_Contacto] [varchar](50) NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[Empresa_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresas_Prestadoras_Servicios]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresas_Prestadoras_Servicios](
	[Empresas_Prestadoras_Servicios_Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Empresa] [varchar](50) NULL,
	[NIT] [varchar](50) NULL,
	[Telefono_Fijo] [int] NULL,
	[Telefono_Celular] [int] NULL,
	[Email] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
 CONSTRAINT [PK_Empresas_Prestadoras_Servicios] PRIMARY KEY CLUSTERED 
(
	[Empresas_Prestadoras_Servicios_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Informacion_Bancaria]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Informacion_Bancaria](
	[Informacion_Bancaria_Id] [int] IDENTITY(1,1) NOT NULL,
	[Empresa_Id] [int] NULL,
	[Entidad_Bancaria] [varchar](50) NULL,
	[Tipo_Cuenta] [varchar](50) NULL,
	[Numero_Cuenta] [varchar](50) NULL,
 CONSTRAINT [PK_Informacion_Bancaria] PRIMARY KEY CLUSTERED 
(
	[Informacion_Bancaria_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Informacion_DIAN]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Informacion_DIAN](
	[Informacion_DIAN_Id] [int] IDENTITY(1,1) NOT NULL,
	[Empresa_Id] [int] NULL,
	[Login_DIAN] [varchar](50) NULL,
	[Clave_DIAN] [varchar](50) NULL,
	[Firma_Electronica] [varchar](50) NULL,
 CONSTRAINT [PK_Informacion_DIAN] PRIMARY KEY CLUSTERED 
(
	[Informacion_DIAN_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Informacion_Industria_Comercio]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Informacion_Industria_Comercio](
	[Informacion_Industria_Comercio_Id] [int] IDENTITY(1,1) NOT NULL,
	[Empresa_Id] [int] NULL,
	[Login_Ind_Comercio] [varchar](50) NULL,
	[Clave_Ind_Comercio] [varchar](50) NULL,
 CONSTRAINT [PK_Informacion_Industria_Comercio] PRIMARY KEY CLUSTERED 
(
	[Informacion_Industria_Comercio_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Informacion_Operadores]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Informacion_Operadores](
	[Informacion_Operadores_Id] [int] IDENTITY(1,1) NOT NULL,
	[Empresa_Id] [int] NULL,
	[Login_Operador] [varchar](50) NULL,
	[Clave_Operador] [varchar](50) NULL,
 CONSTRAINT [PK_Informacion_Operadores] PRIMARY KEY CLUSTERED 
(
	[Informacion_Operadores_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Re_Empresa_Cliente]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Re_Empresa_Cliente](
	[Re_Empresa_Cliente_Id] [int] IDENTITY(1,1) NOT NULL,
	[Empresa_Id] [int] NULL,
	[Cliente_Id] [int] NULL,
 CONSTRAINT [PK_Re_Empresa_Cliente] PRIMARY KEY CLUSTERED 
(
	[Re_Empresa_Cliente_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Re_Empresa_CodigosActiEconomica]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Re_Empresa_CodigosActiEconomica](
	[Re_Empresa_CodigosActiEconomica_Id] [int] IDENTITY(1,1) NOT NULL,
	[Empresa_Id] [int] NULL,
	[Codigos_Actividad_Economica_Id] [int] NULL,
 CONSTRAINT [PK_Re_Empresa_CodigosActiEconomica] PRIMARY KEY CLUSTERED 
(
	[Re_Empresa_CodigosActiEconomica_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Re_Empresa_EmpresaPresServicios]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Re_Empresa_EmpresaPresServicios](
	[Re_Empresa_EmpresaPresServicios_Id] [int] IDENTITY(1,1) NOT NULL,
	[Empresa_Id] [int] NULL,
	[Empresas_Prestadoras_Servicios_Id] [int] NULL,
	[Fecha_Contrato] [date] NULL,
	[Fecha_Vencimiento_Contrato] [date] NULL,
 CONSTRAINT [PK_Re_Empresa_EmpresaPresServicios] PRIMARY KEY CLUSTERED 
(
	[Re_Empresa_EmpresaPresServicios_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Re_Empresa_ServiciosMensualidad]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Re_Empresa_ServiciosMensualidad](
	[Re_Empresa_ServiciosMensualidad_Id] [int] IDENTITY(1,1) NOT NULL,
	[Empresa_Id] [int] NULL,
	[Servicios_Mensualidad_Id] [int] NULL,
	[Tarifa_Servicio] [int] NULL,
 CONSTRAINT [PK_Re_Empresa_ServiciosMensualidad] PRIMARY KEY CLUSTERED 
(
	[Re_Empresa_ServiciosMensualidad_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Re_Empresa_ServiciosPorUsuario]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Re_Empresa_ServiciosPorUsuario](
	[Re_Empresa_ServiciosPorUsuarios_Id] [int] IDENTITY(1,1) NOT NULL,
	[Empresa_Id] [int] NULL,
	[Servicios_Por_Usuario_Id] [int] NULL,
	[Tarifa_Servicio] [int] NULL,
 CONSTRAINT [PK_Re_Empresa_ServiciosPorUsuario] PRIMARY KEY CLUSTERED 
(
	[Re_Empresa_ServiciosPorUsuarios_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Representante_Legal]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Representante_Legal](
	[Representante_Legal_Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Telefono_Fijo] [int] NULL,
	[Telefono_Celular] [int] NULL,
	[Identificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Representante_Legal] PRIMARY KEY CLUSTERED 
(
	[Representante_Legal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Resolucion_Facturacion]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Resolucion_Facturacion](
	[Resolucion_Facturacion_Id] [int] IDENTITY(1,1) NOT NULL,
	[Empresa_Id] [int] NULL,
	[Fecha_Inicio] [date] NULL,
	[Fecha_Fin] [date] NULL,
	[Rango_Numeracion_Inicio] [varchar](50) NULL,
	[Rango_Numeracion_Fin] [varchar](50) NULL,
 CONSTRAINT [PK_Resolucion_Facturacion] PRIMARY KEY CLUSTERED 
(
	[Resolucion_Facturacion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servicios_Mensualidad]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servicios_Mensualidad](
	[Servicios_Mensualidad_Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_Servicios_Mensualidad] PRIMARY KEY CLUSTERED 
(
	[Servicios_Mensualidad_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servicios_Por_Usuarios]    Script Date: 01/01/2018 9:43:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servicios_Por_Usuarios](
	[Servicios_Por_Usuarios_Id] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Servicios_Por_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Servicios_Por_Usuarios_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Representante_Legal] FOREIGN KEY([Representante_Legal_Id])
REFERENCES [dbo].[Representante_Legal] ([Representante_Legal_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Representante_Legal]
GO
ALTER TABLE [dbo].[Informacion_Bancaria]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Bancaria_Empresa] FOREIGN KEY([Empresa_Id])
REFERENCES [dbo].[Empresa] ([Empresa_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Informacion_Bancaria] CHECK CONSTRAINT [FK_Informacion_Bancaria_Empresa]
GO
ALTER TABLE [dbo].[Informacion_DIAN]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_DIAN_Empresa] FOREIGN KEY([Empresa_Id])
REFERENCES [dbo].[Empresa] ([Empresa_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Informacion_DIAN] CHECK CONSTRAINT [FK_Informacion_DIAN_Empresa]
GO
ALTER TABLE [dbo].[Informacion_Industria_Comercio]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Industria_Comercio_Empresa] FOREIGN KEY([Empresa_Id])
REFERENCES [dbo].[Empresa] ([Empresa_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Informacion_Industria_Comercio] CHECK CONSTRAINT [FK_Informacion_Industria_Comercio_Empresa]
GO
ALTER TABLE [dbo].[Informacion_Operadores]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Operadores_Empresa] FOREIGN KEY([Empresa_Id])
REFERENCES [dbo].[Empresa] ([Empresa_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Informacion_Operadores] CHECK CONSTRAINT [FK_Informacion_Operadores_Empresa]
GO
ALTER TABLE [dbo].[Re_Empresa_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Re_Empresa_Cliente_Cliente] FOREIGN KEY([Cliente_Id])
REFERENCES [dbo].[Cliente] ([Cliente_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Re_Empresa_Cliente] CHECK CONSTRAINT [FK_Re_Empresa_Cliente_Cliente]
GO
ALTER TABLE [dbo].[Re_Empresa_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Re_Empresa_Cliente_Empresa] FOREIGN KEY([Empresa_Id])
REFERENCES [dbo].[Empresa] ([Empresa_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Re_Empresa_Cliente] CHECK CONSTRAINT [FK_Re_Empresa_Cliente_Empresa]
GO
ALTER TABLE [dbo].[Re_Empresa_CodigosActiEconomica]  WITH CHECK ADD  CONSTRAINT [FK_Re_Empresa_CodigosActiEconomica_Codigos_Actividad_Economica] FOREIGN KEY([Codigos_Actividad_Economica_Id])
REFERENCES [dbo].[Codigos_Actividad_Economica] ([Codigos_Actividad_Economica_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Re_Empresa_CodigosActiEconomica] CHECK CONSTRAINT [FK_Re_Empresa_CodigosActiEconomica_Codigos_Actividad_Economica]
GO
ALTER TABLE [dbo].[Re_Empresa_CodigosActiEconomica]  WITH CHECK ADD  CONSTRAINT [FK_Re_Empresa_CodigosActiEconomica_Empresa] FOREIGN KEY([Empresa_Id])
REFERENCES [dbo].[Empresa] ([Empresa_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Re_Empresa_CodigosActiEconomica] CHECK CONSTRAINT [FK_Re_Empresa_CodigosActiEconomica_Empresa]
GO
ALTER TABLE [dbo].[Re_Empresa_EmpresaPresServicios]  WITH CHECK ADD  CONSTRAINT [FK_Re_Empresa_EmpresaPresServicios_Empresa] FOREIGN KEY([Empresa_Id])
REFERENCES [dbo].[Empresa] ([Empresa_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Re_Empresa_EmpresaPresServicios] CHECK CONSTRAINT [FK_Re_Empresa_EmpresaPresServicios_Empresa]
GO
ALTER TABLE [dbo].[Re_Empresa_EmpresaPresServicios]  WITH CHECK ADD  CONSTRAINT [FK_Re_Empresa_EmpresaPresServicios_Empresas_Prestadoras_Servicios] FOREIGN KEY([Empresas_Prestadoras_Servicios_Id])
REFERENCES [dbo].[Empresas_Prestadoras_Servicios] ([Empresas_Prestadoras_Servicios_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Re_Empresa_EmpresaPresServicios] CHECK CONSTRAINT [FK_Re_Empresa_EmpresaPresServicios_Empresas_Prestadoras_Servicios]
GO
ALTER TABLE [dbo].[Re_Empresa_ServiciosMensualidad]  WITH CHECK ADD  CONSTRAINT [FK_Re_Empresa_ServiciosMensualidad_Empresa] FOREIGN KEY([Empresa_Id])
REFERENCES [dbo].[Empresa] ([Empresa_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Re_Empresa_ServiciosMensualidad] CHECK CONSTRAINT [FK_Re_Empresa_ServiciosMensualidad_Empresa]
GO
ALTER TABLE [dbo].[Re_Empresa_ServiciosMensualidad]  WITH CHECK ADD  CONSTRAINT [FK_Re_Empresa_ServiciosMensualidad_Servicios_Mensualidad] FOREIGN KEY([Servicios_Mensualidad_Id])
REFERENCES [dbo].[Servicios_Mensualidad] ([Servicios_Mensualidad_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Re_Empresa_ServiciosMensualidad] CHECK CONSTRAINT [FK_Re_Empresa_ServiciosMensualidad_Servicios_Mensualidad]
GO
ALTER TABLE [dbo].[Re_Empresa_ServiciosPorUsuario]  WITH CHECK ADD  CONSTRAINT [FK_Re_Empresa_ServiciosPorUsuario_Empresa] FOREIGN KEY([Empresa_Id])
REFERENCES [dbo].[Empresa] ([Empresa_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Re_Empresa_ServiciosPorUsuario] CHECK CONSTRAINT [FK_Re_Empresa_ServiciosPorUsuario_Empresa]
GO
ALTER TABLE [dbo].[Re_Empresa_ServiciosPorUsuario]  WITH CHECK ADD  CONSTRAINT [FK_Re_Empresa_ServiciosPorUsuario_Servicios_Por_Usuarios] FOREIGN KEY([Servicios_Por_Usuario_Id])
REFERENCES [dbo].[Servicios_Por_Usuarios] ([Servicios_Por_Usuarios_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Re_Empresa_ServiciosPorUsuario] CHECK CONSTRAINT [FK_Re_Empresa_ServiciosPorUsuario_Servicios_Por_Usuarios]
GO
ALTER TABLE [dbo].[Resolucion_Facturacion]  WITH CHECK ADD  CONSTRAINT [FK_Resolucion_Facturacion_Empresa] FOREIGN KEY([Empresa_Id])
REFERENCES [dbo].[Empresa] ([Empresa_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Resolucion_Facturacion] CHECK CONSTRAINT [FK_Resolucion_Facturacion_Empresa]
GO
USE [master]
GO
ALTER DATABASE [Nx_Gestion_Empresas] SET  READ_WRITE 
GO
