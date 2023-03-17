USE [RDBMS_Kramse]
GO
/****** Object:  Table [dbo].[RDBMS_Consignor]    Script Date: 16-3-2023 10:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Consignor](
	[Id] [int] NOT NULL,
	[Consignor] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Discount] [tinyint] NULL,
 CONSTRAINT [PK_RDBMS_Consignor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_Containers]    Script Date: 16-3-2023 10:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Containers](
	[Id] [int] NOT NULL,
	[Type] [nvarchar](50) NULL,
	[RefrigerationFlag] [nvarchar](10) NULL,
	[PowerFlag] [nvarchar](10) NULL,
	[Length] [float] NULL,
	[Cube] [float] NULL,
	[EuroPricePerKm] [float] NULL,
 CONSTRAINT [PK_RDBMS_Containers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_Item]    Script Date: 16-3-2023 10:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Item](
	[Item_key] [int] NOT NULL,
	[Item_description] [nvarchar](50) NULL,
	[Item_category] [nvarchar](50) NULL,
	[Item_mfgr] [nvarchar](50) NULL,
	[Item_storage_type] [nvarchar](50) NULL,
	[Item_hazard_flag] [nvarchar](50) NULL,
 CONSTRAINT [PK_RDBMS_Item] PRIMARY KEY CLUSTERED 
(
	[Item_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_Port]    Script Date: 16-3-2023 10:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Port](
	[P_PortOrder] [int] NULL,
	[VPS_PortId] [int] NOT NULL,
	[P_PortName] [nvarchar](50) NULL,
	[P_Country] [nvarchar](50) NULL,
	[P_DistanceFormOslo] [nvarchar](50) NULL,
	[P_DistanceFromPiraeus] [nvarchar](50) NULL,
 CONSTRAINT [PK_RDBMS_Port] PRIMARY KEY CLUSTERED 
(
	[VPS_PortId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_Ship]    Script Date: 16-3-2023 10:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Ship](
	[VS_ShipId] [int] NOT NULL,
	[Sh_Shipname] [nvarchar](50) NULL,
	[Sh_MaxTeu] [int] NULL,
	[Sh_SpeedInKnots] [tinyint] NULL,
	[Sh_SpeedInKm] [tinyint] NULL,
	[Sh_Country] [nvarchar](50) NULL,
	[Sh_Yearcost] [float] NULL,
	[Sh_Length] [smallint] NULL,
	[Sh_Width] [tinyint] NULL,
 CONSTRAINT [PK_RDBMS_Ship] PRIMARY KEY CLUSTERED 
(
	[VS_ShipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_Shipment]    Script Date: 16-3-2023 10:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Shipment](
	[ShipmentId] [int] NOT NULL,
	[VoyageId] [int] NULL,
	[ConsignorId] [int] NULL,
	[PortIdFrom] [int] NULL,
	[PortIdTo] [int] NULL,
	[Distance] [int] NULL,
	[NumberContainer] [int] NULL,
 CONSTRAINT [PK_RDBMS_Shipment] PRIMARY KEY CLUSTERED 
(
	[ShipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_ShipmentDetail]    Script Date: 16-3-2023 10:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_ShipmentDetail](
	[ShipmentId] [int] NOT NULL,
	[ContainerNr] [nvarchar](50) NULL,
	[Item] [int] NOT NULL,
	[ContainerTypeId] [int] NOT NULL,
 CONSTRAINT [PK_RDBMS_ShipmentDetail] PRIMARY KEY CLUSTERED 
(
	[ShipmentId] ASC,
	[Item] ASC,
	[ContainerTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_Voyage]    Script Date: 16-3-2023 10:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Voyage](
	[VV_VoyageId] [int] NOT NULL,
	[VS_ShipId] [int] NULL,
	[V_DateDepartVoyage] [date] NULL,
	[VPS_PortIdStart] [int] NULL,
	[V_PortIdEnd] [int] NULL,
 CONSTRAINT [PK_RDBMS_Voyage] PRIMARY KEY CLUSTERED 
(
	[VV_VoyageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_VoyagePort]    Script Date: 16-3-2023 10:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_VoyagePort](
	[VV_VoyageId] [int] NOT NULL,
	[VP_PortIdCurrent] [int] NOT NULL,
	[VP_PortIdNext] [int] NOT NULL,
	[VP_LegDateDepart] [date] NULL,
	[VP_LegDateArrival] [date] NULL,
	[VP_Traject_Distance] [int] NULL,
	[VP_PortOrder] [int] NULL,
 CONSTRAINT [PK_RDBMS_VoyagePort] PRIMARY KEY CLUSTERED 
(
	[VV_VoyageId] ASC,
	[VP_PortIdCurrent] ASC,
	[VP_PortIdNext] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RDBMS_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Consignor] FOREIGN KEY([ConsignorId])
REFERENCES [dbo].[RDBMS_Consignor] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_Shipment] CHECK CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Consignor]
GO
ALTER TABLE [dbo].[RDBMS_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Port] FOREIGN KEY([PortIdFrom])
REFERENCES [dbo].[RDBMS_Port] ([VPS_PortId])
GO
ALTER TABLE [dbo].[RDBMS_Shipment] CHECK CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Port]
GO
ALTER TABLE [dbo].[RDBMS_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Port1] FOREIGN KEY([PortIdTo])
REFERENCES [dbo].[RDBMS_Port] ([VPS_PortId])
GO
ALTER TABLE [dbo].[RDBMS_Shipment] CHECK CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Port1]
GO
ALTER TABLE [dbo].[RDBMS_ShipmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_ShipmentDetail_RDBMS_Containers] FOREIGN KEY([ContainerTypeId])
REFERENCES [dbo].[RDBMS_Containers] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_ShipmentDetail] CHECK CONSTRAINT [FK_RDBMS_ShipmentDetail_RDBMS_Containers]
GO
ALTER TABLE [dbo].[RDBMS_ShipmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_ShipmentDetail_RDBMS_Item] FOREIGN KEY([Item])
REFERENCES [dbo].[RDBMS_Item] ([Item_key])
GO
ALTER TABLE [dbo].[RDBMS_ShipmentDetail] CHECK CONSTRAINT [FK_RDBMS_ShipmentDetail_RDBMS_Item]
GO
ALTER TABLE [dbo].[RDBMS_ShipmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_ShipmentDetail_RDBMS_Shipment] FOREIGN KEY([ShipmentId])
REFERENCES [dbo].[RDBMS_Shipment] ([ShipmentId])
GO
ALTER TABLE [dbo].[RDBMS_ShipmentDetail] CHECK CONSTRAINT [FK_RDBMS_ShipmentDetail_RDBMS_Shipment]
GO
ALTER TABLE [dbo].[RDBMS_Voyage]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_Voyage_RDBMS_Port] FOREIGN KEY([VPS_PortIdStart])
REFERENCES [dbo].[RDBMS_Port] ([VPS_PortId])
GO
ALTER TABLE [dbo].[RDBMS_Voyage] CHECK CONSTRAINT [FK_RDBMS_Voyage_RDBMS_Port]
GO
ALTER TABLE [dbo].[RDBMS_Voyage]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_Voyage_RDBMS_Port1] FOREIGN KEY([V_PortIdEnd])
REFERENCES [dbo].[RDBMS_Port] ([VPS_PortId])
GO
ALTER TABLE [dbo].[RDBMS_Voyage] CHECK CONSTRAINT [FK_RDBMS_Voyage_RDBMS_Port1]
GO
ALTER TABLE [dbo].[RDBMS_Voyage]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_Voyage_RDBMS_Ship] FOREIGN KEY([VS_ShipId])
REFERENCES [dbo].[RDBMS_Ship] ([VS_ShipId])
GO
ALTER TABLE [dbo].[RDBMS_Voyage] CHECK CONSTRAINT [FK_RDBMS_Voyage_RDBMS_Ship]
GO
ALTER TABLE [dbo].[RDBMS_VoyagePort]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_VoyagePort_RDBMS_Port] FOREIGN KEY([VP_PortIdCurrent])
REFERENCES [dbo].[RDBMS_Port] ([VPS_PortId])
GO
ALTER TABLE [dbo].[RDBMS_VoyagePort] CHECK CONSTRAINT [FK_RDBMS_VoyagePort_RDBMS_Port]
GO
ALTER TABLE [dbo].[RDBMS_VoyagePort]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_VoyagePort_RDBMS_Port1] FOREIGN KEY([VP_PortIdNext])
REFERENCES [dbo].[RDBMS_Port] ([VPS_PortId])
GO
ALTER TABLE [dbo].[RDBMS_VoyagePort] CHECK CONSTRAINT [FK_RDBMS_VoyagePort_RDBMS_Port1]
GO
ALTER TABLE [dbo].[RDBMS_VoyagePort]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_VoyagePort_RDBMS_Voyage] FOREIGN KEY([VV_VoyageId])
REFERENCES [dbo].[RDBMS_Voyage] ([VV_VoyageId])
GO
ALTER TABLE [dbo].[RDBMS_VoyagePort] CHECK CONSTRAINT [FK_RDBMS_VoyagePort_RDBMS_Voyage]
GO
