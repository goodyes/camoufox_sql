USE [YOUR_DATABASE_NAME]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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


