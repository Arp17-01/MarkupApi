USE [MarkupApp]
GO
ALTER TABLE [dbo].[MarkupDetail] DROP CONSTRAINT [DF__MarkupDet__Updat__4CA06362]
GO
ALTER TABLE [dbo].[MarkupDetail] DROP CONSTRAINT [DF__MarkupDet__Creat__4BAC3F29]
GO
/****** Object:  Table [dbo].[MarkupDetail]    Script Date: 08-07-2025 02:04:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MarkupDetail]') AND type in (N'U'))
DROP TABLE [dbo].[MarkupDetail]
GO
/****** Object:  Table [dbo].[MarkupDetail]    Script Date: 08-07-2025 02:04:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarkupDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MinMarkup] [decimal](18, 2) NULL,
	[MaxMarkup] [decimal](18, 2) NULL,
	[MinBaseFare] [decimal](18, 2) NULL,
	[MaxBaseFare] [decimal](18, 2) NULL,
	[MarkupPercentage] [decimal](18, 2) NULL,
	[SupplierId] [int] NULL,
	[SailingId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_MarkupDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MarkupDetail] ON 

INSERT [dbo].[MarkupDetail] ([Id], [MinMarkup], [MaxMarkup], [MinBaseFare], [MaxBaseFare], [MarkupPercentage], [SupplierId], [SailingId], [IsActive], [StartDate], [EndDate], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, CAST(1000.00 AS Decimal(18, 2)), NULL, CAST(0.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, 1, CAST(N'2025-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2025-07-07T11:18:18.8966667' AS DateTime2), NULL, CAST(N'2025-07-07T11:18:18.8966667' AS DateTime2))
INSERT [dbo].[MarkupDetail] ([Id], [MinMarkup], [MaxMarkup], [MinBaseFare], [MaxBaseFare], [MarkupPercentage], [SupplierId], [SailingId], [IsActive], [StartDate], [EndDate], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, CAST(2000.00 AS Decimal(18, 2)), NULL, CAST(10001.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, 1, CAST(N'2025-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-01-02T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2025-07-07T11:19:18.0233333' AS DateTime2), NULL, CAST(N'2025-07-07T11:19:18.0233333' AS DateTime2))
INSERT [dbo].[MarkupDetail] ([Id], [MinMarkup], [MaxMarkup], [MinBaseFare], [MaxBaseFare], [MarkupPercentage], [SupplierId], [SailingId], [IsActive], [StartDate], [EndDate], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, CAST(0.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), CAST(20001.00 AS Decimal(18, 2)), NULL, CAST(10.00 AS Decimal(18, 2)), NULL, NULL, 1, CAST(N'2025-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2025-07-07T11:21:00.3500000' AS DateTime2), NULL, CAST(N'2025-07-07T11:21:00.3500000' AS DateTime2))
INSERT [dbo].[MarkupDetail] ([Id], [MinMarkup], [MaxMarkup], [MinBaseFare], [MaxBaseFare], [MarkupPercentage], [SupplierId], [SailingId], [IsActive], [StartDate], [EndDate], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, NULL, NULL, NULL, NULL, CAST(5.00 AS Decimal(18, 2)), 1, NULL, 1, CAST(N'2025-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2025-07-07T11:21:36.0100000' AS DateTime2), NULL, CAST(N'2025-07-07T11:21:36.0100000' AS DateTime2))
INSERT [dbo].[MarkupDetail] ([Id], [MinMarkup], [MaxMarkup], [MinBaseFare], [MaxBaseFare], [MarkupPercentage], [SupplierId], [SailingId], [IsActive], [StartDate], [EndDate], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, NULL, NULL, NULL, NULL, CAST(8.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(N'2025-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2026-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2025-07-07T11:21:56.8266667' AS DateTime2), NULL, CAST(N'2025-07-07T11:21:56.8266667' AS DateTime2))
SET IDENTITY_INSERT [dbo].[MarkupDetail] OFF
GO
ALTER TABLE [dbo].[MarkupDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MarkupDetail] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
