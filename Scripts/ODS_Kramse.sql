USE [ODS_Kramse]
GO
/****** Object:  Table [dbo].[DIM_Calendar]    Script Date: 24-3-2023 12:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Calendar](
	[DateKey] [int] NOT NULL,
	[Date] [datetime] NULL,
	[FullDateUK] [char](10) NULL,
	[FullDateUSA] [char](10) NULL,
	[DayOfMonth] [varchar](2) NULL,
	[DaySuffix] [varchar](4) NULL,
	[DayName] [varchar](9) NULL,
	[DayOfWeekUSA] [char](1) NULL,
	[DayOfWeekUK] [char](1) NULL,
	[DayOfWeekInMonth] [varchar](2) NULL,
	[DayOfWeekInYear] [varchar](2) NULL,
	[DayOfQuarter] [varchar](3) NULL,
	[DayOfYear] [varchar](3) NULL,
	[WeekOfMonth] [varchar](1) NULL,
	[WeekOfQuarter] [varchar](2) NULL,
	[WeekOfYear] [varchar](2) NULL,
	[Month] [varchar](2) NULL,
	[MonthName] [varchar](9) NULL,
	[MonthOfQuarter] [varchar](2) NULL,
	[Quarter] [char](1) NULL,
	[QuarterName] [varchar](9) NULL,
	[Year] [char](4) NULL,
	[YearName] [char](7) NULL,
	[MonthYear] [char](10) NULL,
	[MMYYYY] [char](6) NULL,
	[FirstDayOfMonth] [date] NULL,
	[LastDayOfMonth] [date] NULL,
	[FirstDayOfQuarter] [date] NULL,
	[LastDayOfQuarter] [date] NULL,
	[FirstDayOfYear] [date] NULL,
	[LastDayOfYear] [date] NULL,
	[IsWeekday] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_Consignor]    Script Date: 24-3-2023 12:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Consignor](
	[CosignorRowId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int] NOT NULL,
	[Consignor] [nvarchar](50) NULL,
	[CountryIso3] [nvarchar](50) NULL,
	[DiscountPercentage] [tinyint] NULL,
	[City] [nvarchar](50) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_DIM_Consignor_1] PRIMARY KEY CLUSTERED 
(
	[CosignorRowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_Container]    Script Date: 24-3-2023 12:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Container](
	[ContainerRowId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int] NOT NULL,
	[Type] [nvarchar](50) NULL,
	[RefrigerationFlag] [tinyint] NULL,
	[EuroPricePerKm] [float] NULL,
	[Teu] [int] NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_DIM_Container] PRIMARY KEY CLUSTERED 
(
	[ContainerRowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_Item]    Script Date: 24-3-2023 12:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Item](
	[ItemRowId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int] NOT NULL,
	[Category] [nvarchar](50) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[StorageType] [nvarchar](50) NULL,
	[Hazardflag] [nvarchar](50) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_DIM_Item_1] PRIMARY KEY CLUSTERED 
(
	[ItemRowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_Port]    Script Date: 24-3-2023 12:34:58 ******/
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
/****** Object:  Table [dbo].[DIM_Ship]    Script Date: 24-3-2023 12:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_Ship](
	[ShipRowId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[MaxTeu] [int] NULL,
	[SpeedInKm] [tinyint] NULL,
	[LengthInM] [smallint] NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_DIM_Ship] PRIMARY KEY CLUSTERED 
(
	[ShipRowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_Voyage]    Script Date: 24-3-2023 12:34:58 ******/
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
/****** Object:  Table [dbo].[FACT_IdleTime]    Script Date: 24-3-2023 12:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACT_IdleTime](
	[ShipRowId] [int] NOT NULL,
	[PortIdCurrent] [int] NOT NULL,
	[ArrivalDateId] [int] NOT NULL,
	[DepatureDateId] [int] NULL,
	[IdleTimeInDays] [tinyint] NULL,
 CONSTRAINT [PK_FACT_IdleTime] PRIMARY KEY CLUSTERED 
(
	[ShipRowId] ASC,
	[PortIdCurrent] ASC,
	[ArrivalDateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACT_Shipment]    Script Date: 24-3-2023 12:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACT_Shipment](
	[ShipRowId] [int] NOT NULL,
	[VoyageId] [int] NOT NULL,
	[ItemRowId] [int] NOT NULL,
	[ContainerRowId] [int] NOT NULL,
	[ConsignorRowId] [int] NOT NULL,
	[DepartureDateIdVoyaye] [int] NOT NULL,
	[PortIdCurrent] [int] NOT NULL,
	[PortIdNext] [int] NOT NULL,
	[ArrivalDateIdVoyage] [int] NULL,
	[ContainerAmount] [int] NULL,
	[PortDistanceInKm] [int] NULL,
 CONSTRAINT [PK_F_Shipment] PRIMARY KEY CLUSTERED 
(
	[ShipRowId] ASC,
	[VoyageId] ASC,
	[ItemRowId] ASC,
	[ContainerRowId] ASC,
	[ConsignorRowId] ASC,
	[DepartureDateIdVoyaye] ASC,
	[PortIdCurrent] ASC,
	[PortIdNext] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACT_YearlyMeasurementShipData]    Script Date: 24-3-2023 12:34:58 ******/
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
ALTER TABLE [dbo].[DIM_Consignor] ADD  CONSTRAINT [DF_DIM_Consignor_StartDate]  DEFAULT (getdate()) FOR [StartDate]
GO
ALTER TABLE [dbo].[DIM_Container] ADD  CONSTRAINT [DF_DIM_Container_StartDate]  DEFAULT (getdate()) FOR [StartDate]
GO
ALTER TABLE [dbo].[DIM_Item] ADD  CONSTRAINT [DF_DIM_Item_StartDate]  DEFAULT (getdate()) FOR [StartDate]
GO
ALTER TABLE [dbo].[DIM_Ship] ADD  CONSTRAINT [DF_DIM_Ship_StartDate]  DEFAULT (getdate()) FOR [StartDate]
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
ALTER TABLE [dbo].[FACT_IdleTime]  WITH CHECK ADD  CONSTRAINT [FK_FACT_IdleTime_DIM_Calendar] FOREIGN KEY([DepatureDateId])
REFERENCES [dbo].[DIM_Calendar] ([DateKey])
GO
ALTER TABLE [dbo].[FACT_IdleTime] CHECK CONSTRAINT [FK_FACT_IdleTime_DIM_Calendar]
GO
ALTER TABLE [dbo].[FACT_IdleTime]  WITH CHECK ADD  CONSTRAINT [FK_FACT_IdleTime_DIM_Calendar1] FOREIGN KEY([ArrivalDateId])
REFERENCES [dbo].[DIM_Calendar] ([DateKey])
GO
ALTER TABLE [dbo].[FACT_IdleTime] CHECK CONSTRAINT [FK_FACT_IdleTime_DIM_Calendar1]
GO
ALTER TABLE [dbo].[FACT_IdleTime]  WITH CHECK ADD  CONSTRAINT [FK_FACT_IdleTime_DIM_Port] FOREIGN KEY([PortIdCurrent])
REFERENCES [dbo].[DIM_Port] ([Id])
GO
ALTER TABLE [dbo].[FACT_IdleTime] CHECK CONSTRAINT [FK_FACT_IdleTime_DIM_Port]
GO
ALTER TABLE [dbo].[FACT_IdleTime]  WITH CHECK ADD  CONSTRAINT [FK_FACT_IdleTime_DIM_Ship] FOREIGN KEY([ShipRowId])
REFERENCES [dbo].[DIM_Ship] ([ShipRowId])
GO
ALTER TABLE [dbo].[FACT_IdleTime] CHECK CONSTRAINT [FK_FACT_IdleTime_DIM_Ship]
GO
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Calendar] FOREIGN KEY([DepartureDateIdVoyaye])
REFERENCES [dbo].[DIM_Calendar] ([DateKey])
GO
ALTER TABLE [dbo].[FACT_Shipment] CHECK CONSTRAINT [FK_FACT_Shipment_DIM_Calendar]
GO
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Calendar1] FOREIGN KEY([ArrivalDateIdVoyage])
REFERENCES [dbo].[DIM_Calendar] ([DateKey])
GO
ALTER TABLE [dbo].[FACT_Shipment] CHECK CONSTRAINT [FK_FACT_Shipment_DIM_Calendar1]
GO
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Consignor] FOREIGN KEY([ConsignorRowId])
REFERENCES [dbo].[DIM_Consignor] ([CosignorRowId])
GO
ALTER TABLE [dbo].[FACT_Shipment] CHECK CONSTRAINT [FK_FACT_Shipment_DIM_Consignor]
GO
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Container] FOREIGN KEY([ContainerRowId])
REFERENCES [dbo].[DIM_Container] ([ContainerRowId])
GO
ALTER TABLE [dbo].[FACT_Shipment] CHECK CONSTRAINT [FK_FACT_Shipment_DIM_Container]
GO
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Item] FOREIGN KEY([ItemRowId])
REFERENCES [dbo].[DIM_Item] ([ItemRowId])
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
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Ship] FOREIGN KEY([ShipRowId])
REFERENCES [dbo].[DIM_Ship] ([ShipRowId])
GO
ALTER TABLE [dbo].[FACT_Shipment] CHECK CONSTRAINT [FK_FACT_Shipment_DIM_Ship]
GO
ALTER TABLE [dbo].[FACT_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_FACT_Shipment_DIM_Voyage] FOREIGN KEY([VoyageId])
REFERENCES [dbo].[DIM_Voyage] ([Id])
GO
ALTER TABLE [dbo].[FACT_Shipment] CHECK CONSTRAINT [FK_FACT_Shipment_DIM_Voyage]
GO
ALTER TABLE [dbo].[FACT_YearlyMeasurementShipData]  WITH CHECK ADD  CONSTRAINT [FK_FACT_YearlyMeasurementShipData_DIM_Calendar] FOREIGN KEY([YearOfMeasurement])
REFERENCES [dbo].[DIM_Calendar] ([DateKey])
GO
ALTER TABLE [dbo].[FACT_YearlyMeasurementShipData] CHECK CONSTRAINT [FK_FACT_YearlyMeasurementShipData_DIM_Calendar]
GO
