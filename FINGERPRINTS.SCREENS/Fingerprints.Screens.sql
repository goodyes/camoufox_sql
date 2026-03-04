USE [YOUR_DATABASE_NAME]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FINGERPRINTS.SCREENS](
	[Fingerprint.Screen.ID] [int] IDENTITY(1,1) NOT NULL,
	[Fingerprint.Screen] [nvarchar](50) NULL,
	[Fingerprint.Screen.availHeight] [int] NULL,
	[Fingerprint.Screen.availWidth] [int] NULL,
	[Fingerprint.Screen.availTop] [int] NULL,
	[Fingerprint.Screen.availLeft] [int] NULL,
	[Fingerprint.Screen.height] [int] NULL,
	[Fingerprint.Screen.width] [int] NULL,
	[Fingerprint.Screen.colorDepth] [int] NULL,
	[Fingerprint.Screen.pixelDepth] [int] NULL,
	[Fingerprint.Screen.pageXOffset] [float] NULL,
	[Fingerprint.Screen.pageYOffset] [float] NULL,
 CONSTRAINT [PK_FINGERPRINTS.SCREENS] PRIMARY KEY CLUSTERED 
(
	[Fingerprint.Screen.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


