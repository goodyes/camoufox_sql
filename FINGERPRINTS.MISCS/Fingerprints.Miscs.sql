USE [YOUR_DATABASE_NAME]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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


