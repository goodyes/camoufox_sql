USE [YOUR_DATABASE_NAME]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FINGERPRINTS.SCREENS.WINDOWS](
	[Fingerprint.Screen.ID] [int] NOT NULL,
	[Fingerprint.Screen.Window.ID] [int] IDENTITY(1,1) NOT NULL,
	[Fingerprint.Screen.Window] [nvarchar](50) NULL,
	[Fingerprint.Screen.Window.scrollMinX] [int] NULL,
	[Fingerprint.Screen.Window.scrollMinY] [int] NULL,
	[Fingerprint.Screen.Window.scrollMaxX] [int] NULL,
	[Fingerprint.Screen.Window.scrollMaxY] [int] NULL,
	[Fingerprint.Screen.Window.outerHeight] [bigint] NULL,
	[Fingerprint.Screen.Window.outerWidth] [bigint] NULL,
	[Fingerprint.Screen.Window.innerHeight] [bigint] NULL,
	[Fingerprint.Screen.Window.innerWidth] [bigint] NULL,
	[Fingerprint.Screen.Window.screenX] [int] NULL,
	[Fingerprint.Screen.Window.screenY] [int] NULL,
	[Fingerprint.Screen.Window.historylength] [bigint] NULL,
	[Fingerprint.Screen.Window.devicePixelRatio] [float] NULL,
 CONSTRAINT [PK_FINGERPRINTS.SCREENS.WINDOWS] PRIMARY KEY CLUSTERED 
(
	[Fingerprint.Screen.Window.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FINGERPRINTS.SCREENS.WINDOWS]  WITH CHECK ADD  CONSTRAINT [FK_FINGERPRINTS.SCREENS.WINDOWS_FINGERPRINTS.SCREENS] FOREIGN KEY([Fingerprint.Screen.ID])
REFERENCES [dbo].[FINGERPRINTS.SCREENS] ([Fingerprint.Screen.ID])
GO

ALTER TABLE [dbo].[FINGERPRINTS.SCREENS.WINDOWS] CHECK CONSTRAINT [FK_FINGERPRINTS.SCREENS.WINDOWS_FINGERPRINTS.SCREENS]
GO


