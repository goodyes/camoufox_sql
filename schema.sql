
 ██████╗ █████╗ ███╗   ███╗ ██████╗ ██╗   ██╗███████╗ ██████╗ ██╗  ██╗    ███████╗ ██████╗ ██╗     
██╔════╝██╔══██╗████╗ ████║██╔═══██╗██║   ██║██╔════╝██╔═══██╗╚██╗██╔╝    ██╔════╝██╔═══██╗██║     
██║     ███████║██╔████╔██║██║   ██║██║   ██║█████╗  ██║   ██║ ╚███╔╝     ███████╗██║   ██║██║     
██║     ██╔══██║██║╚██╔╝██║██║   ██║██║   ██║██╔══╝  ██║   ██║ ██╔██╗     ╚════██║██║▄▄ ██║██║     
╚██████╗██║  ██║██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║     ╚██████╔╝██╔╝ ██╗    ███████║╚██████╔╝███████╗
 ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝      ╚═════╝ ╚═╝  ╚═╝    ╚══════╝ ╚══▀▀═╝ ╚══════╝

por (by)
    _____  ___  ____   ____   __  __ ______ _____
  / ____// __ \\ __ \ / __ \  \ \/ // ____// ___/
 / / __ / / / // / / // / / /   \  // __/   \__ \ 
/ /_/ // /_/ // /_/ // /_/ /    / // /___  ___/ / 
\____/ \____/ \____//_____/    /_//_____/ /____/  


USE [YOUR_DATABASE_NAME]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FINGERPRINTS.WEBRTCS](
	[Fingerprints.WEBRTC.ID] [int] IDENTITY(1,1) NOT NULL,
	[Fingerprints.WEBRTC.ipv4] [nvarchar](15) NOT NULL,
	[Fingerprints.WEBRTC.ipv6] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_FINGERPRINTS.WEBRTCS] PRIMARY KEY CLUSTERED 
(
	[Fingerprints.WEBRTC.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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


CREATE TABLE [dbo].[FINGERPRINTS.OS](
	[Fingerprint.OS.ID] [int] IDENTITY(1,1) NOT NULL,
	[Fingerprint.OS] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_FINGERPRINTS.OS] PRIMARY KEY CLUSTERED 
(
	[Fingerprint.OS.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[FINGERPRINTS.OS.BROWSERS](
	[Fingerprint.OS.ID] [int] NOT NULL,
	[Fingerprint.OS.Browser.ID] [int] IDENTITY(1,1) NOT NULL,
	[Fingerprint.OS.Browser] [nvarchar](333) NULL,
	[Fingerprint.OS.Browser.Added] [datetime2](7) NOT NULL,
	[Fingerprint.OS.Browser.userAgent] [nvarchar](128) NOT NULL,
	[Fingerprint.OS.Browser.doNotTrack] [nvarchar](128) NULL,
	[Fingerprint.OS.Browser.appCodeName] [nvarchar](128) NULL,
	[Fingerprint.OS.Browser.appName] [nvarchar](128) NULL,
	[Fingerprint.OS.Browser.appVersion] [nvarchar](128) NULL,
	[Fingerprint.OS.Browser.oscpu] [nvarchar](128) NULL,
	[Fingerprint.OS.Browser.language] [nvarchar](128) NULL,
	[Fingerprint.OS.Browser.languages] [nvarchar](256) NULL,
	[Fingerprint.OS.Browser.platform] [nvarchar](128) NULL,
	[Fingerprint.OS.Browser.hardwareConcurrency] [tinyint] NULL,
	[Fingerprint.OS.Browser.product] [nvarchar](128) NULL,
	[Fingerprint.OS.Browser.productSub] [nvarchar](128) NULL,
	[Fingerprint.OS.Browser.maxTouchPoints] [bigint] NULL,
	[Fingerprint.OS.Browser.cookieEnabled] [bit] NULL,
	[Fingerprint.OS.Browser.globalPrivacyControl] [bit] NULL,
	[Fingerprint.OS.Browser.buildID] [nvarchar](128) NULL,
	[Fingerprint.OS.Browser.onLine] [bit] NULL,
 CONSTRAINT [PK_FINGERPRINTS.BROWSERS] PRIMARY KEY CLUSTERED 
(
	[Fingerprint.OS.Browser.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FINGERPRINTS.OS.BROWSERS] ADD  CONSTRAINT [DF_FINGERPRINTS.BROWSERS_Fingerprint.Browser.Added]  DEFAULT (getdate()) FOR [Fingerprint.OS.Browser.Added]
GO

ALTER TABLE [dbo].[FINGERPRINTS.OS.BROWSERS]  WITH CHECK ADD  CONSTRAINT [FK_FINGERPRINTS.OS.BROWSERS_FINGERPRINTS.OS] FOREIGN KEY([Fingerprint.OS.ID])
REFERENCES [dbo].[FINGERPRINTS.OS] ([Fingerprint.OS.ID])
GO

ALTER TABLE [dbo].[FINGERPRINTS.OS.BROWSERS] CHECK CONSTRAINT [FK_FINGERPRINTS.OS.BROWSERS_FINGERPRINTS.OS]
GO




CREATE TABLE [dbo].[FINGERPRINTS.OS.BROWSERS.VOICES](
	[Fingerprint.OS.Browser.ID] [int] NOT NULL,
	[Fingerprint.OS.Browser.Voice.ID] [int] IDENTITY(1,1) NOT NULL,
	[Fingerprint.OS.Browser.Voice] [nvarchar](max) NOT NULL,
	[Fingerprint.OS.Browser.Voice.blockIfNotDefined] [bit] NOT NULL,
	[Fingerprint.OS.Browser.fakeCompletion] [bit] NOT NULL,
	[Fingerprint.OS.Browser.charsPerSecond] [float] NOT NULL,
 CONSTRAINT [PK_FINGERPRINTS.OS.BROWSERS.VOICES] PRIMARY KEY CLUSTERED 
(
	[Fingerprint.OS.Browser.Voice.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[FINGERPRINTS.OS.BROWSERS.VOICES]  WITH CHECK ADD  CONSTRAINT [FK_FINGERPRINTS.OS.BROWSERS.VOICES_FINGERPRINTS.OS.BROWSERS] FOREIGN KEY([Fingerprint.OS.Browser.ID])
REFERENCES [dbo].[FINGERPRINTS.OS.BROWSERS] ([Fingerprint.OS.Browser.ID])
GO

ALTER TABLE [dbo].[FINGERPRINTS.OS.BROWSERS.VOICES] CHECK CONSTRAINT [FK_FINGERPRINTS.OS.BROWSERS.VOICES_FINGERPRINTS.OS.BROWSERS]
GO





CREATE TABLE [dbo].[FINGERPRINTS.OS.FONTS](
	[Fingerprint.OS.Browser.ID] [int] NOT NULL,
	[Fingerprint.OS.ID] [int] NOT NULL,
	[Fingerprint.OS.Font.ID] [int] IDENTITY(1,1) NOT NULL,
	[Fingerprint.OS.Font] [nvarchar](192) NOT NULL,
	[Fingerprint.Font.Spacing_seed] [bigint] NULL,
 CONSTRAINT [PK_FINGERPRINTS.OS.FONTS] PRIMARY KEY CLUSTERED 
(
	[Fingerprint.OS.Font.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FINGERPRINTS.OS.FONTS]  WITH CHECK ADD  CONSTRAINT [FK_FINGERPRINTS.OS.FONTS_FINGERPRINTS.OS] FOREIGN KEY([Fingerprint.OS.Browser.ID])
REFERENCES [dbo].[FINGERPRINTS.OS.BROWSERS] ([Fingerprint.OS.Browser.ID])
GO

ALTER TABLE [dbo].[FINGERPRINTS.OS.FONTS] CHECK CONSTRAINT [FK_FINGERPRINTS.OS.FONTS_FINGERPRINTS.OS]
GO





CREATE TABLE [dbo].[FINGERPRINTS.OS.GPUS](
	[Fingerprint.OS.ID] [int] NOT NULL,
	[Fingerprint.OS.Browser.ID] [int] NOT NULL,
	[Fingerprint.OS.GPU.ID] [int] IDENTITY(1,1) NOT NULL,
	[Fingerprint.OS.GPU] [nvarchar](128) NULL,
	[Fingerprint.OS.GPU.Added] [datetime2](7) NOT NULL,
	[Fingerprint.OS.GPU.renderer] [nvarchar](128) NOT NULL,
	[Fingerprint.OS.GPU.vendor] [nvarchar](128) NOT NULL,
	[Fingerprint.OS.GPU.supportedExtensions] [nvarchar](max) NOT NULL,
	[Fingerprint.OS.GPU.1supportedExtensions2] [nvarchar](max) NOT NULL,
	[Fingerprint.OS.GPU.contextAttributes] [nvarchar](128) NOT NULL,
	[Fingerprint.OS.GPU.contextAttributes2] [nvarchar](128) NOT NULL,
	[Fingerprint.OS.GPU.parameters] [nvarchar](128) NOT NULL,
	[Fingerprint.OS.GPU.parameters2] [nvarchar](128) NOT NULL,
	[Fingerprint.OS.GPU.parameters_blockIfNotDefined] [bit] NOT NULL,
	[Fingerprint.OS.GPU.parameters_blockIfNotDefined2] [bit] NOT NULL,
	[Fingerprint.OS.GPU.shaderPrecisionFormats] [nvarchar](128) NOT NULL,
	[Fingerprint.OS.GPU.shaderPrecisionFormats2] [nvarchar](128) NOT NULL,
	[Fingerprint.OS.GPU.shaderPrecisionFormats_blockIfNotDefined] [bit] NOT NULL,
	[Fingerprint.OS.GPU.shaderPrecisionFormats_blockIfNotDefined2] [bit] NOT NULL,
 CONSTRAINT [PK_FINGERPRINTS.GPUS] PRIMARY KEY CLUSTERED 
(
	[Fingerprint.OS.GPU.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[FINGERPRINTS.OS.GPUS] ADD  CONSTRAINT [DF_FINGERPRINTS.GPUS_Fingerprint.GPU.Added]  DEFAULT (getdate()) FOR [Fingerprint.OS.GPU.Added]
GO

ALTER TABLE [dbo].[FINGERPRINTS.OS.GPUS]  WITH CHECK ADD  CONSTRAINT [FK_FINGERPRINTS.OS.GPUS_FINGERPRINTS.OS] FOREIGN KEY([Fingerprint.OS.ID])
REFERENCES [dbo].[FINGERPRINTS.OS] ([Fingerprint.OS.ID])
GO

ALTER TABLE [dbo].[FINGERPRINTS.OS.GPUS] CHECK CONSTRAINT [FK_FINGERPRINTS.OS.GPUS_FINGERPRINTS.OS]
GO

ALTER TABLE [dbo].[FINGERPRINTS.OS.GPUS]  WITH CHECK ADD  CONSTRAINT [FK_FINGERPRINTS.OS.GPUS_FINGERPRINTS.OS.BROWSERS] FOREIGN KEY([Fingerprint.OS.Browser.ID])
REFERENCES [dbo].[FINGERPRINTS.OS.BROWSERS] ([Fingerprint.OS.Browser.ID])
GO

ALTER TABLE [dbo].[FINGERPRINTS.OS.GPUS] CHECK CONSTRAINT [FK_FINGERPRINTS.OS.GPUS_FINGERPRINTS.OS.BROWSERS]
GO




CREATE TABLE [dbo].[FINGERPRINTS.AUDIOS](
	[Fingerprint.Audio.ID] [int] IDENTITY(1,1) NOT NULL,
	[Fingerprint.Audio.sampleRate] [int] NOT NULL,
	[Fingerprint.Audio.outputLatency] [float] NOT NULL,
	[Fingerprint.Audio.maxChannelCount] [tinyint] NOT NULL,
 CONSTRAINT [PK_FINGERPRINTS.AUDIOS] PRIMARY KEY CLUSTERED 
(
	[Fingerprint.Audio.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO






CREATE TABLE [dbo].[FINGERPRINTS.CURSORS](
	[Fingerprint.Cursor.ID] [int] IDENTITY(1,1) NOT NULL,
	[Fingerprint.Cursor.Humanize] [bit] NULL,
	[Fingerprint.Cursor.Humanize.maxTime] [float] NOT NULL,
	[Fingerprint.Cursor.Humanize.minTime] [float] NOT NULL,
	[Fingerprint.Cursor.Showcursor] [bit] NULL,
 CONSTRAINT [PK_FINGERPRINTS.CURSORS] PRIMARY KEY CLUSTERED 
(
	[Fingerprint.Cursor.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FINGERPRINTS.CURSORS] ADD  CONSTRAINT [DF_FINGERPRINTS.CURSORS_Fingerprint.Cursor.Humanize]  DEFAULT ((0)) FOR [Fingerprint.Cursor.Humanize]
GO

ALTER TABLE [dbo].[FINGERPRINTS.CURSORS] ADD  CONSTRAINT [DF_FINGERPRINTS.CURSORS_Fingerprint.Cursor.Humanize.maxTime]  DEFAULT ((1.5)) FOR [Fingerprint.Cursor.Humanize.maxTime]
GO

ALTER TABLE [dbo].[FINGERPRINTS.CURSORS] ADD  CONSTRAINT [DF_FINGERPRINTS.CURSORS_Fingerprint.Cursor.showcursor]  DEFAULT ((1)) FOR [Fingerprint.Cursor.Showcursor]
GO





CREATE TABLE [dbo].[FINGERPRINTS.GEOS](
	[Fingerprint.GEO.ID] [int] IDENTITY(1,1) NOT NULL,
	[Fingerprint.GEO.Geolocation.Latitude] [float] NULL,
	[Fingerprint.GEO.Geolocation.Longitude] [float] NULL,
	[Fingerprint.GEO.Geolocation.Accuracy] [float] NULL,
	[Fingerprint.GEO.Timezone] [nchar](2) NOT NULL,
	[Fingerprint.GEO.Locale.Language] [nchar](2) NOT NULL,
	[Fingerprint.GEO.Locale.Region] [nchar](4) NOT NULL,
	[Fingerprint.GEO.Locale.Script] [nvarchar](max) NULL,
	[Fingerprint.GEO.Locale.All] [nvarchar](max) NULL,
 CONSTRAINT [PK_FINGERPRINTS.GEOS] PRIMARY KEY CLUSTERED 
(
	[Fingerprint.GEO.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO






CREATE TABLE [dbo].[FINGERPRINTS.HEADERS](
	[Fingerprint.Header.ID] [int] IDENTITY(1,1) NOT NULL,
	[Fingerprint.User_Agent] [nvarchar](max) NULL,
	[Fingerprint.Accept_Language] [nvarchar](max) NOT NULL,
	[Fingerprint.Accept_Encoding] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FINGERPRINTS.HEADERS] PRIMARY KEY CLUSTERED 
(
	[Fingerprint.Header.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO




CREATE TABLE [dbo].[FINGERPRINTS.MEDIADEVICES](
	[Fingerprint.MediaDevice.ID] [int] IDENTITY(1,1) NOT NULL,
	[Fingerprint.MediaDevice.enabled] [int] NOT NULL,
	[Fingerprint.MediaDevice.micros] [tinyint] NOT NULL,
	[Fingerprint.MediaDevice.webcams] [tinyint] NOT NULL,
	[Fingerprint.MediaDevice.speakers] [tinyint] NOT NULL,
 CONSTRAINT [PK_FINGERPRINTS.MEDIADEVICES] PRIMARY KEY CLUSTERED 
(
	[Fingerprint.MediaDevice.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO




CREATE TABLE [dbo].[FINGERPRINTS.MISCS](
	[Fingerprint.Misc.ID] [int] NOT NULL,
	[Fingerprint.Misc.pdfViewerEnabled] [bit] NULL,
	[Fingerprint.Misc.battery:charging] [bit] NOT NULL,
	[Fingerprint.Misc.battery.chargingTime] [float] NOT NULL,
	[Fingerprint.Misc.battery.dischargingTime] [float] NOT NULL,
	[[Fingerprint.Misc.battery.Level] [float] NOT NULL,
 CONSTRAINT [PK_FINGERPRINTS.MISCS] PRIMARY KEY CLUSTERED 
(
	[Fingerprint.Misc.ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FINGERPRINTS.MISCS] ADD  CONSTRAINT [DF_FINGERPRINTS.MISCS_Fingerprint.Misc.pdfViewerEnabled]  DEFAULT ((1)) FOR [Fingerprint.Misc.pdfViewerEnabled]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Please keep pdfViewer on, as many websites will flag a lack of PDF viewer as a headless browser' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FINGERPRINTS.MISCS', @level2type=N'COLUMN',@level2name=N'Fingerprint.Misc.pdfViewerEnabled'
GO










