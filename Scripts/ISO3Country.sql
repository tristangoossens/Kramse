USE [ConversionKramse]
GO
/****** Object:  Table [dbo].[Conversion_Country_ISO3]    Script Date: 17-3-2023 16:27:38 ******/
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
