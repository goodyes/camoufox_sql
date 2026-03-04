USE [YOUR_DATABASE_NAME]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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


