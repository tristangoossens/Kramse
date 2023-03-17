USE [ConversionKramse]
GO
/****** Object:  Table [dbo].[Conversion_Country_ISO3]    Script Date: 17-3-2023 16:41:55 ******/
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
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Belgie', N'BEL')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'België', N'BEL')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Belgique', N'BEL')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Belgium', N'BEL')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Brazilië', N'BRA')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Canada', N'CAN')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'China', N'CHN')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Cyprus', N'CYP')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Denmark', N'DNK')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Deutschland', N'DEU')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'England', N'GBR')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Estonia', N'EST')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Finland', N'FIN')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'FR', N'FRA')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'France', N'FRA')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Francia', N'FRA')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Frankrijk', N'FRA')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Germany', N'DEU')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Gibraltar', N'GIB')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Great Britain', N'GBR')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Greece', N'GRC')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Griekenland', N'GRC')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Hong Kong', N'HKG')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Ireland', N'IRL')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Italia', N'ITA')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Italy', N'ITA')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Liberia', N'LBN')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Liverpool', N'GBR')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Marshalleilanden', N'MHL')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Nederland', N'NLD')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Netherlands', N'NLD')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'NL', N'NLD')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Norway', N'NOR')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Panama', N'PAN')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Poland', N'POL')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Polska', N'POL')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Portugal', N'PRT')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Rusland', N'RUS')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Scotland', N'SCT')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Spain', N'ESP')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Sweden', N'SWE')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Switzerland', N'CHE')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'UK', N'GBR')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'United Kingdom', N'GBR')
INSERT [dbo].[Conversion_Country_ISO3] ([CountryName], [ISO3Code]) VALUES (N'Yougoslavia', N'HRV')
GO
