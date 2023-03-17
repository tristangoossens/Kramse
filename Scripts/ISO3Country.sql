USE [ConversionKramse]
GO
/****** Object:  Table [dbo].[Conversion_Country_ISO3]    Script Date: 17-3-2023 15:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conversion_Country_ISO3](
	[CountryName] [nvarchar](50) NOT NULL,
	[ISO3Code] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Conversion_Country_ISO3_1] PRIMARY KEY CLUSTERED 
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'BE', N'BEL')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Belgie', N'BEL')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'België', N'BEL')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Belgique', N'BEL')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Belgium', N'BEL')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Brazilië', N'BRA')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Canada', N'CAN')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'China', N'CHN')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Cyprus', N'CYP')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Denmark', N'DNK')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Deutschland', N'DEU')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'England', N'GBR')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Estonia', N'EST')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Finland', N'FIN')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'FR', N'FRA')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'France', N'FRA')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Francia', N'FRA')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Frankrijk', N'FRA')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Germany', N'DEU')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Gibraltar', N'GIB')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Great Britain', N'GBR')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Greece', N'GRC')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Griekenland', N'GRC')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Hong Kong', N'HKG')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Ireland', N'IRL')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Italia', N'ITA')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Italy', N'ITA')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Liberia', N'LBN')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Liverpool', N'GBR')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Marshalleilanden', N'MHL')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Nederland', N'NLD')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Netherlands', N'NLD')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'NL', N'NLD')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Norway', N'NOR')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Panama', N'PAN')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Poland', N'POL')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Polska', N'POL')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Portugal', N'PRT')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Rusland', N'RUS')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Scotland', N'SCT')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Spain', N'ESP')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Sweden', N'SWE')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Switzerland', N'CHE')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'UK', N'GBR')
GO
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Yougoslavia', N'HRV')
GO
