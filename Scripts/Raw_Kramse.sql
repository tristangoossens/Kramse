USE [Raw_Kramse]
GO
/****** Object:  Table [dbo].[Raw_Consignor]    Script Date: 29-3-2023 11:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raw_Consignor](
	[Id] [int] NULL,
	[Consignor] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[Discount] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raw_Containers]    Script Date: 29-3-2023 11:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raw_Containers](
	[Id] [int] NULL,
	[Type] [nvarchar](255) NULL,
	[RefrigerationFlag] [nvarchar](255) NULL,
	[PowerFlag] [nvarchar](255) NULL,
	[Length] [decimal](18, 2) NULL,
	[Cube] [decimal](18, 2) NULL,
	[EuroPricePerKm] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raw_Item]    Script Date: 29-3-2023 11:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raw_Item](
	[Item_key] [int] NULL,
	[Item_description] [nvarchar](255) NULL,
	[Item_category] [nvarchar](255) NULL,
	[Item_mfgr] [nvarchar](255) NULL,
	[Item_storage_type] [nvarchar](255) NULL,
	[Item_hazard_flag] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raw_MRV]    Script Date: 29-3-2023 11:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raw_MRV](
	[ShipName] [nvarchar](50) NOT NULL,
	[TotalFuelConsumptionInTonnes] [float] NULL,
	[TotalCo2EmissionsInTonnes] [float] NULL,
	[TotalTimeSpentAtSeaInHours] [int] NULL,
	[AnnualAverageFuelConsumptionPerDistanceKgToNMile] [float] NULL,
	[AnnualAverageCo2EmissionPerDistanceKgCo2ToNMile] [float] NULL,
	[ReportingYear] [int] NULL,
 CONSTRAINT [PK_Raw_MRV] PRIMARY KEY CLUSTERED 
(
	[ShipName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raw_Port]    Script Date: 29-3-2023 11:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raw_Port](
	[P_PortOrder] [int] NULL,
	[VPS_PortId] [int] NULL,
	[P_PortName] [nvarchar](255) NULL,
	[P_Country] [nvarchar](255) NULL,
	[P_DistanceFormOslo] [nvarchar](255) NULL,
	[P_DistanceFromPiraeus] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raw_Ship]    Script Date: 29-3-2023 11:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raw_Ship](
	[VS_ShipId] [int] NULL,
	[Sh_Shipname] [nvarchar](255) NULL,
	[Sh_MaxTeu] [int] NULL,
	[Sh_SpeedInKnots] [tinyint] NULL,
	[Sh_SpeedInKm] [tinyint] NULL,
	[Sh_Country] [nvarchar](255) NULL,
	[Sh_Yearcost] [float] NULL,
	[Sh_Length] [smallint] NULL,
	[Sh_Width] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raw_Shipment]    Script Date: 29-3-2023 11:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raw_Shipment](
	[ShipmentId] [int] NULL,
	[VoyageId] [int] NULL,
	[ConsignorId] [int] NULL,
	[PortIdFrom] [int] NULL,
	[PortIdTo] [int] NULL,
	[Distance] [int] NULL,
	[NumberContainer] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raw_ShipmentDetail]    Script Date: 29-3-2023 11:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raw_ShipmentDetail](
	[ShipmentId] [int] NULL,
	[ContainerNr] [nvarchar](255) NULL,
	[Item] [int] NULL,
	[ContainerTypeId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raw_Voyage]    Script Date: 29-3-2023 11:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raw_Voyage](
	[VV_VoyageId] [int] NULL,
	[VS_ShipId] [int] NULL,
	[V_DateDepartVoyage] [date] NULL,
	[VPS_PortIdStart] [int] NULL,
	[V_PortIdEnd] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raw_VoyagePort]    Script Date: 29-3-2023 11:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raw_VoyagePort](
	[VV_VoyageId] [int] NULL,
	[VP_PortIdCurrent] [int] NULL,
	[VP_PortIdNext] [int] NULL,
	[VP_LegDateDepart] [date] NULL,
	[VP_LegDateArrival] [date] NULL,
	[VP_Traject_Distance] [int] NULL,
	[VP_PortOrder] [int] NULL
) ON [PRIMARY]
GO
