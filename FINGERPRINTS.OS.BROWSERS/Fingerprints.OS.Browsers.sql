USE [YOUR_DATABASE_NAME]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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


