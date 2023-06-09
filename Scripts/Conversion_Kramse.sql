USE [Conversion_Kramse]
GO
/****** Object:  Table [dbo].[Conversion_City]    Script Date: 29-3-2023 11:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conversion_City](
	[CityName] [nchar](50) NULL,
	[CorrectCityName] [nchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conversion_Country_ISO3]    Script Date: 29-3-2023 11:17:23 ******/
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
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Utrecht                                           ', N'Utrecht                                           ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Edinborough                                       ', N'Edinburgh                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Newcastle                                         ', N'Newcastle                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Roma                                              ', N'Rome                                              ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Hamburg                                           ', N'Hamburg                                           ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Barcelona                                         ', N'Barcelona                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Lisboa                                            ', N'Lisbon                                            ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Piraes                                            ', N'Piraes                                            ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Rotterdam                                         ', N'Rotterdam                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'A''dam                                             ', N'Amsterdam                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Marseille                                         ', N'Marseille                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Zeebrugge                                         ', N'Zeebrugge                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Gdansk                                            ', N'Gdansk                                            ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Le Havre                                          ', N'Le Havre                                          ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Dublin                                            ', N'Dublin                                            ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Bari                                              ', N'Bari                                              ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Dubrovnik                                         ', N'Dubrovnik                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Amsterdam                                         ', N'Amsterdam                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Bremerhafen                                       ', N'Bremerhaven                                       ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Athens                                            ', N'Athens                                            ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Dortmund                                          ', N'Dortmund                                          ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Gibraltar                                         ', N'Gibraltar                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Oslo                                              ', N'Oslo                                              ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Kiel                                              ', N'Kiel                                              ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'IJmuiden                                          ', N'IJmuiden                                          ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Genava                                            ', N'Genava                                            ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Moskou                                            ', N'Moscow                                            ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Berlin                                            ', N'Berlin                                            ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Leuven                                            ', N'Louvain                                           ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Essen                                             ', N'Essen                                             ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Gand                                              ', N'Ghent                                             ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Trégastel                                         ', N'Tregastel                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Wuust                                             ', N'Wuust                                             ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Como                                              ', N'Como                                              ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Antwerpen                                         ', N'Antwerp                                           ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Liverpool                                         ', N'Liverpool                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Stockholm                                         ', N'Stockholm                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Helsinki                                          ', N'Helsinki                                          ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Vancouver                                         ', N'Vancouver                                         ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Rio de Janiero                                    ', N'Rio de Janeiro                                    ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Warsawa                                           ', N'Warsaw                                            ')
INSERT [dbo].[Conversion_City] ([CityName], [CorrectCityName]) VALUES (N'Rijsel                                            ', N'Lille                                             ')
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
