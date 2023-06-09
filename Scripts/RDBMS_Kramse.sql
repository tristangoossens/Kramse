USE [RDBMS_Kramse]
GO
/****** Object:  Table [dbo].[RDBMS_Consignor]    Script Date: 29-3-2023 11:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Consignor](
	[Id] [int] NOT NULL,
	[Consignor] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[DiscountPercentage] [tinyint] NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK_RDBMS_Consignor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_Containers]    Script Date: 29-3-2023 11:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Containers](
	[Id] [int] NOT NULL,
	[Type] [nvarchar](50) NULL,
	[RefrigerationFlag] [tinyint] NULL,
	[PowerFlag] [nvarchar](10) NULL,
	[LengthInM] [float] NULL,
	[MetricCube] [float] NULL,
	[EuroPricePerNmile] [float] NULL,
	[TEU] [int] NULL,
 CONSTRAINT [PK_RDBMS_Containers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_Item]    Script Date: 29-3-2023 11:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Item](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[StorageType] [nvarchar](50) NULL,
	[HazardFlag] [nvarchar](50) NULL,
 CONSTRAINT [PK_RDBMS_Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_Log]    Script Date: 29-3-2023 11:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Task] [nvarchar](255) NULL,
	[Warning] [text] NULL,
	[Value] [nvarchar](100) NULL,
	[LogDate] [datetime] NULL,
 CONSTRAINT [PK_RDBMS_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_Port]    Script Date: 29-3-2023 11:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Port](
	[PortSizeRank] [int] NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[DistanceFormOsloInNMile] [float] NULL,
	[DistanceFromPiraeusInNMile] [float] NULL,
 CONSTRAINT [PK_RDBMS_Port] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_Ship]    Script Date: 29-3-2023 11:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Ship](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[MaxTeu] [int] NULL,
	[SpeedInKnots] [tinyint] NULL,
	[SpeedInKm] [tinyint] NULL,
	[Country] [nvarchar](50) NULL,
	[YearcostEuro] [float] NULL,
	[LengthInM] [smallint] NULL,
	[WidthInM] [tinyint] NULL,
	[TotalFuelConsumptionInTonnes] [float] NULL,
	[TotalCo2EmissionsInTonnes] [float] NULL,
	[TotalTimeSpentAtSeaInHours] [int] NULL,
	[AnnualAverageFuelConsumptionKgPerNMile] [float] NULL,
	[AnnualAverageCo2EmissionKgPerNMile] [float] NULL,
	[MeasurementReportingDate] [date] NULL,
 CONSTRAINT [PK_RDBMS_Ship] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_Shipment]    Script Date: 29-3-2023 11:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Shipment](
	[Id] [int] NOT NULL,
	[VoyageId] [int] NULL,
	[ConsignorId] [int] NULL,
	[PortIdFrom] [int] NULL,
	[PortIdTo] [int] NULL,
	[DistanceInNMile] [float] NULL,
	[NumberContainer] [int] NULL,
 CONSTRAINT [PK_RDBMS_Shipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_ShipmentDetail]    Script Date: 29-3-2023 11:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_ShipmentDetail](
	[Id] [int] NOT NULL,
	[ContainerAmount] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[ContainerTypeId] [int] NOT NULL,
 CONSTRAINT [PK_RDBMS_ShipmentDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[ItemId] ASC,
	[ContainerTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_Voyage]    Script Date: 29-3-2023 11:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_Voyage](
	[Id] [int] NOT NULL,
	[ShipId] [int] NULL,
	[DepartureDate] [date] NULL,
	[PortIdFrom] [int] NULL,
	[PortIdTo] [int] NULL,
 CONSTRAINT [PK_RDBMS_Voyage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDBMS_VoyagePort]    Script Date: 29-3-2023 11:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDBMS_VoyagePort](
	[VoyageId] [int] NOT NULL,
	[PortIdCurrent] [int] NOT NULL,
	[PortIdNext] [int] NOT NULL,
	[DepartureDate] [date] NULL,
	[ArrivalDate] [date] NULL,
	[TrajectDistanceInNMile] [float] NULL,
 CONSTRAINT [PK_RDBMS_VoyagePort] PRIMARY KEY CLUSTERED 
(
	[VoyageId] ASC,
	[PortIdCurrent] ASC,
	[PortIdNext] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RDBMS_Log] ADD  CONSTRAINT [DF_RDBMS_Log_LogDate]  DEFAULT (getdate()) FOR [LogDate]
GO
ALTER TABLE [dbo].[RDBMS_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Consignor] FOREIGN KEY([ConsignorId])
REFERENCES [dbo].[RDBMS_Consignor] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_Shipment] CHECK CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Consignor]
GO
ALTER TABLE [dbo].[RDBMS_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Port] FOREIGN KEY([PortIdFrom])
REFERENCES [dbo].[RDBMS_Port] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_Shipment] CHECK CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Port]
GO
ALTER TABLE [dbo].[RDBMS_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Port1] FOREIGN KEY([PortIdTo])
REFERENCES [dbo].[RDBMS_Port] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_Shipment] CHECK CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Port1]
GO
ALTER TABLE [dbo].[RDBMS_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Voyage] FOREIGN KEY([VoyageId])
REFERENCES [dbo].[RDBMS_Voyage] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_Shipment] CHECK CONSTRAINT [FK_RDBMS_Shipment_RDBMS_Voyage]
GO
ALTER TABLE [dbo].[RDBMS_ShipmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_ShipmentDetail_RDBMS_Containers] FOREIGN KEY([ContainerTypeId])
REFERENCES [dbo].[RDBMS_Containers] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_ShipmentDetail] CHECK CONSTRAINT [FK_RDBMS_ShipmentDetail_RDBMS_Containers]
GO
ALTER TABLE [dbo].[RDBMS_ShipmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_ShipmentDetail_RDBMS_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[RDBMS_Item] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_ShipmentDetail] CHECK CONSTRAINT [FK_RDBMS_ShipmentDetail_RDBMS_Item]
GO
ALTER TABLE [dbo].[RDBMS_ShipmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_ShipmentDetail_RDBMS_Shipment] FOREIGN KEY([Id])
REFERENCES [dbo].[RDBMS_Shipment] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_ShipmentDetail] CHECK CONSTRAINT [FK_RDBMS_ShipmentDetail_RDBMS_Shipment]
GO
ALTER TABLE [dbo].[RDBMS_Voyage]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_Voyage_RDBMS_Port] FOREIGN KEY([PortIdFrom])
REFERENCES [dbo].[RDBMS_Port] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_Voyage] CHECK CONSTRAINT [FK_RDBMS_Voyage_RDBMS_Port]
GO
ALTER TABLE [dbo].[RDBMS_Voyage]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_Voyage_RDBMS_Port1] FOREIGN KEY([PortIdTo])
REFERENCES [dbo].[RDBMS_Port] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_Voyage] CHECK CONSTRAINT [FK_RDBMS_Voyage_RDBMS_Port1]
GO
ALTER TABLE [dbo].[RDBMS_Voyage]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_Voyage_RDBMS_Ship] FOREIGN KEY([ShipId])
REFERENCES [dbo].[RDBMS_Ship] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_Voyage] CHECK CONSTRAINT [FK_RDBMS_Voyage_RDBMS_Ship]
GO
ALTER TABLE [dbo].[RDBMS_VoyagePort]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_VoyagePort_RDBMS_Port] FOREIGN KEY([PortIdCurrent])
REFERENCES [dbo].[RDBMS_Port] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_VoyagePort] CHECK CONSTRAINT [FK_RDBMS_VoyagePort_RDBMS_Port]
GO
ALTER TABLE [dbo].[RDBMS_VoyagePort]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_VoyagePort_RDBMS_Port1] FOREIGN KEY([PortIdNext])
REFERENCES [dbo].[RDBMS_Port] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_VoyagePort] CHECK CONSTRAINT [FK_RDBMS_VoyagePort_RDBMS_Port1]
GO
ALTER TABLE [dbo].[RDBMS_VoyagePort]  WITH CHECK ADD  CONSTRAINT [FK_RDBMS_VoyagePort_RDBMS_Voyage] FOREIGN KEY([VoyageId])
REFERENCES [dbo].[RDBMS_Voyage] ([Id])
GO
ALTER TABLE [dbo].[RDBMS_VoyagePort] CHECK CONSTRAINT [FK_RDBMS_VoyagePort_RDBMS_Voyage]
GO
