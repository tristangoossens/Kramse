USE [PSA_Kramse]
GO
/****** Object:  Table [dbo].[FACT_Shipment]    Script Date: 29-3-2023 11:20:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACT_Shipment](
	[ShipId] [int] NOT NULL,
	[VoyageId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[ContainerId] [int] NOT NULL,
	[ConsignorId] [int] NOT NULL,
	[DepartureDate] [date] NOT NULL,
	[PortIdCurrent] [int] NOT NULL,
	[PortIdNext] [int] NOT NULL,
	[ArrivalDate] [date] NULL,
	[ContainerAmount] [int] NULL,
	[TotalTEU] [int] NULL,
	[PortDistanceInNMile] [float] NULL,
	[LoadFactor] [decimal](18, 2) NULL,
	[ReveneuInEuro] [float] NULL,
 CONSTRAINT [PK_F_Shipment] PRIMARY KEY CLUSTERED 
(
	[ShipId] ASC,
	[VoyageId] ASC,
	[ItemId] ASC,
	[ContainerId] ASC,
	[ConsignorId] ASC,
	[DepartureDate] ASC,
	[PortIdCurrent] ASC,
	[PortIdNext] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VIEW_IdleTime]    Script Date: 29-3-2023 11:20:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_IdleTime] AS 
SELECT CurrentPort.VoyageId, CurrentPort.PortIdCurrent, CurrentPort.DepartureDate, CurrentPort.ArrivalDate, CurrentPort.ShipId, DATEDIFF(Day, CurrentPort.ArrivalDate, NextPort.DepartureDate) + 1 AS IdleTime
FROM FACT_Shipment AS CurrentPort
INNER JOIN FACT_Shipment AS NextPort ON CurrentPort.PortIdNext = NextPort.PortIdCurrent
AND CurrentPort.VoyageId = NextPort.VoyageId
AND CurrentPort.ShipId = NextPort.ShipId
GROUP BY CurrentPort.VoyageId, CurrentPort.PortIdCurrent, CurrentPort.DepartureDate, CurrentPort.ArrivalDate, NextPort.DepartureDate, CurrentPort.ShipId
GO
/****** Object:  Table [dbo].[DIM_Consignor]    Script Date: 29-3-2023 11:20:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Consignor](
	[Id] [int] NOT NULL,
	[Consignor] [nvarchar](50) NULL,
	[CountryIso3] [nvarchar](50) NULL,
	[DiscountPercentage] [tinyint] NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK_DIM_Consignor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_Container]    Script Date: 29-3-2023 11:20:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Container](
	[Id] [int] NOT NULL,
	[Type] [nvarchar](50) NULL,
	[RefrigerationFlag] [tinyint] NULL,
	[EuroPricePerNMile] [float] NULL,
	[Teu] [int] NULL,
 CONSTRAINT [PK_DIM_Container] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_Item]    Script Date: 29-3-2023 11:20:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Item](
	[Id] [int] NOT NULL,
	[Category] [nvarchar](50) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[StorageType] [nvarchar](50) NULL,
	[Hazardflag] [nvarchar](50) NULL,
 CONSTRAINT [PK_DIM_Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_Port]    Script Date: 29-3-2023 11:20:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Port](
	[Id] [int] NOT NULL,
	[PortSizeRank] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[CountryIso3] [nvarchar](50) NULL,
	[DistanceFromOsloInNMile] [float] NULL,
	[DistanceFromPiraeusInNMile] [float] NULL,
 CONSTRAINT [PK_DIM_Port] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_Ship]    Script Date: 29-3-2023 11:20:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Ship](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[MaxTeu] [int] NULL,
	[SpeedInKnots] [tinyint] NULL,
	[LengthInM] [smallint] NULL,
 CONSTRAINT [PK_DIM_Ship] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_Voyage]    Script Date: 29-3-2023 11:20:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Voyage](
	[Id] [int] NOT NULL,
	[PortIdStart] [int] NULL,
	[PortIdEnd] [int] NULL,
	[DistanceInNMile] [float] NULL,
 CONSTRAINT [PK_DIM_Voyage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACT_YearlyMeasurementShipData]    Script Date: 29-3-2023 11:20:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACT_YearlyMeasurementShipData](
	[ShipId] [int] NOT NULL,
	[DateOfMeasurement] [date] NOT NULL,
	[ShipCostEuro] [float] NULL,
	[TotalFuelConsumptionInTonnes] [float] NULL,
	[TotalCo2EmissionsInTonnes] [float] NULL,
	[TotalTimeSpentAtSeaInHours] [int] NULL,
	[AnnualAverageCo2EmmisionKgPerNMile] [float] NULL,
	[AnnualAverageFuelConsumptionKgPerNMile] [float] NULL,
 CONSTRAINT [PK_F_YearlyMeasurementShipData] PRIMARY KEY CLUSTERED 
(
	[ShipId] ASC,
	[DateOfMeasurement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DIM_Voyage]  WITH CHECK ADD  CONSTRAINT [FK_DIM_Voyage_DIM_Port] FOREIGN KEY([PortIdStart])
REFERENCES [dbo].[DIM_Port] ([Id])
GO
ALTER TABLE [dbo].[DIM_Voyage] CHECK CONSTRAINT [FK_DIM_Voyage_DIM_Port]
GO
ALTER TABLE [dbo].[DIM_Voyage]  WITH CHECK ADD  CONSTRAINT [FK_DIM_Voyage_DIM_Port1] FOREIGN KEY([PortIdEnd])
REFERENCES [dbo].[DIM_Port] ([Id])
GO
ALTER TABLE [dbo].[DIM_Voyage] CHECK CONSTRAINT [FK_DIM_Voyage_DIM_Port1]
GO
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Consignor] FOREIGN KEY([ConsignorId])
REFERENCES [dbo].[DIM_Consignor] ([Id])
GO
ALTER TABLE [dbo].[FACT_Shipment] CHECK CONSTRAINT [FK_FACT_Shipment_DIM_Consignor]
GO
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Container] FOREIGN KEY([ContainerId])
REFERENCES [dbo].[DIM_Container] ([Id])
GO
ALTER TABLE [dbo].[FACT_Shipment] CHECK CONSTRAINT [FK_FACT_Shipment_DIM_Container]
GO
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[DIM_Item] ([Id])
GO
ALTER TABLE [dbo].[FACT_Shipment] CHECK CONSTRAINT [FK_FACT_Shipment_DIM_Item]
GO
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Port] FOREIGN KEY([PortIdCurrent])
REFERENCES [dbo].[DIM_Port] ([Id])
GO
ALTER TABLE [dbo].[FACT_Shipment] CHECK CONSTRAINT [FK_FACT_Shipment_DIM_Port]
GO
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Port1] FOREIGN KEY([PortIdNext])
REFERENCES [dbo].[DIM_Port] ([Id])
GO
ALTER TABLE [dbo].[FACT_Shipment] CHECK CONSTRAINT [FK_FACT_Shipment_DIM_Port1]
GO
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Ship] FOREIGN KEY([ShipId])
REFERENCES [dbo].[DIM_Ship] ([Id])
GO
ALTER TABLE [dbo].[FACT_Shipment] CHECK CONSTRAINT [FK_FACT_Shipment_DIM_Ship]
GO
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Voyage] FOREIGN KEY([VoyageId])
REFERENCES [dbo].[DIM_Voyage] ([Id])
GO
ALTER TABLE [dbo].[FACT_Shipment] CHECK CONSTRAINT [FK_FACT_Shipment_DIM_Voyage]
GO
ALTER TABLE [dbo].[FACT_YearlyMeasurementShipData]  WITH CHECK ADD  CONSTRAINT [FK_FACT_YearlyMeasurementShipData_DIM_Ship] FOREIGN KEY([ShipId])
REFERENCES [dbo].[DIM_Ship] ([Id])
GO
ALTER TABLE [dbo].[FACT_YearlyMeasurementShipData] CHECK CONSTRAINT [FK_FACT_YearlyMeasurementShipData_DIM_Ship]
GO
