USE [PSA_Kramse]
GO
/****** Object:  Table [dbo].[DIM_Consignor]    Script Date: 24-3-2023 12:33:19 ******/
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
/****** Object:  Table [dbo].[DIM_Container]    Script Date: 24-3-2023 12:33:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Container](
	[Id] [int] NOT NULL,
	[Type] [nvarchar](50) NULL,
	[RefrigerationFlag] [tinyint] NULL,
	[EuroPricePerKm] [float] NULL,
	[Teu] [int] NULL,
 CONSTRAINT [PK_DIM_Container] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_Item]    Script Date: 24-3-2023 12:33:19 ******/
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
/****** Object:  Table [dbo].[DIM_Port]    Script Date: 24-3-2023 12:33:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Port](
	[Id] [int] NOT NULL,
	[PortSizeRank] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[CountryIso3] [nvarchar](50) NULL,
	[DistanceFromOsloInKm] [smallint] NULL,
	[DistanceFromPiraeusInKm] [smallint] NULL,
 CONSTRAINT [PK_DIM_Port] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_Ship]    Script Date: 24-3-2023 12:33:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Ship](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[MaxTeu] [int] NULL,
	[SpeedInKm] [tinyint] NULL,
	[LengthInM] [smallint] NULL,
 CONSTRAINT [PK_DIM_Ship] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_Voyage]    Script Date: 24-3-2023 12:33:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Voyage](
	[Id] [int] NOT NULL,
	[PortIdStart] [int] NULL,
	[PortIdEnd] [int] NULL,
	[DistanceInKm] [int] NULL,
 CONSTRAINT [PK_DIM_Voyage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACT_Shipment]    Script Date: 24-3-2023 12:33:19 ******/
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
	[DepartureDateVoyaye] [date] NOT NULL,
	[PortIdCurrent] [int] NOT NULL,
	[PortIdNext] [int] NOT NULL,
	[ArrivalDateVoyage] [date] NULL,
	[ContainerAmount] [int] NULL,
	[PortDistanceInKm] [int] NULL,
 CONSTRAINT [PK_F_Shipment] PRIMARY KEY CLUSTERED 
(
	[ShipId] ASC,
	[VoyageId] ASC,
	[ItemId] ASC,
	[ContainerId] ASC,
	[ConsignorId] ASC,
	[DepartureDateVoyaye] ASC,
	[PortIdCurrent] ASC,
	[PortIdNext] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACT_YearlyMeasurementShipData]    Script Date: 24-3-2023 12:33:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACT_YearlyMeasurementShipData](
	[ShipId] [int] NOT NULL,
	[YearOfMeasurement] [int] NOT NULL,
	[ShipCostEuro] [float] NULL,
	[TotalFuelConsumptionInTonnes] [float] NULL,
	[TotalCo2EmissionsInTonnes] [float] NULL,
	[TotalTimeSpentAtSeaInHours] [int] NULL,
	[AnnualAverageFuelConsumptionKgPerKm] [float] NULL,
	[AnnualAverageCo2EmmisionKgPerKm] [float] NULL,
 CONSTRAINT [PK_F_YearlyMeasurementShipData] PRIMARY KEY CLUSTERED 
(
	[ShipId] ASC,
	[YearOfMeasurement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FACT_YearlyMeasurementShipData] ADD  CONSTRAINT [DF_FACT_YearlyMeasurementShipData_YearOfMeasurement]  DEFAULT ((2016)) FOR [YearOfMeasurement]
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
