USE [Lopushok]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 26.02.2024 16:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaterialName] [varchar](50) NOT NULL,
	[MaterialTypeId] [int] NOT NULL,
	[CountInPack] [int] NOT NULL,
	[UnitOfMeasureId] [int] NOT NULL,
	[CountInStock] [int] NOT NULL,
	[MinimalCountLeft] [int] NOT NULL,
	[CostInRubles] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK__Material__3214EC0765B3BF25] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 26.02.2024 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaterialTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Material__3214EC071D9A5939] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 26.02.2024 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Article] [varchar](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[MinimalAgentCost] [decimal](10, 2) NOT NULL,
	[Image] [varchar](50) NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[CountOfPeopleToProduce] [int] NOT NULL,
	[NumberOfFactory] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 26.02.2024 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[ProductId] [varchar](10) NOT NULL,
	[MaterialId] [int] NOT NULL,
	[MaterialCount] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 26.02.2024 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK__ProductT__3214EC07B4EEE22A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnitOfMeasure]    Script Date: 26.02.2024 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitOfMeasure](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [varchar](50) NOT NULL,
 CONSTRAINT [PK__UnitOfMe__3214EC072A43BE18] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (1, N'????????????? ???????? ????? 0x2', 1, 5, 1, 140, 49, CAST(3312800.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (2, N'????? ?????? ??????? 1x1', 2, 3, 1, 634, 36, CAST(26841.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (3, N'????????????? ???????? ??????? 2x1', 1, 8, 1, 636, 21, CAST(52606.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (4, N'??????? ??? ?????? ??????? 2x2', 3, 10, 2, 661, 16, CAST(10608.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (5, N'????????????? ???????? ????? 1x1', 1, 7, 3, 843, 16, CAST(4344000.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (6, N'????? ?????? ????? 1x0', 2, 1, 1, 501, 49, CAST(1583300.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (7, N'??????????? ?????? ????? 0x3', 4, 9, 1, 958, 32, CAST(14180.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (8, N'????? ?????? ??????? 2x0', 2, 3, 1, 386, 46, CAST(3554400.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (9, N'????? ?????? ??????? 2x2', 2, 8, 3, 593, 20, CAST(55016.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (10, N'????? ?????? ????? 3x2', 2, 4, 3, 16, 31, CAST(53759.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (11, N'??????????? ?????? ????? 3x3', 4, 10, 1, 89, 20, CAST(4939100.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (12, N'??????? ??? ?????? ????? 1x2', 3, 6, 2, 112, 34, CAST(25624.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (13, N'????? ?????? ????? 3x3', 2, 3, 1, 596, 8, CAST(50247.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (14, N'????????????? ???????? ??????? 1x3', 1, 3, 1, 772, 40, CAST(5167200.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (15, N'????? ?????? ????? 2x2', 2, 6, 3, 363, 47, CAST(38450.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (16, N'??????? ??? ?????? ??????? 0x3', 3, 4, 2, 379, 41, CAST(386800.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (17, N'??????????? ?????? ??????? 1x3', 4, 6, 3, 32, 34, CAST(37930.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (18, N'??????? ??? ?????? ??????? 0x1', 3, 5, 2, 759, 28, CAST(9216.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (19, N'????? ?????? ??????? 1x2', 2, 10, 1, 246, 37, CAST(501600.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (20, N'??????????? ?????? ????? 1x2', 4, 8, 1, 516, 49, CAST(35981.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (21, N'????????????? ???????? ????? 0x2', 1, 3, 3, 514, 40, CAST(6555.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (22, N'??????????? ?????? ????? 1x2', 4, 4, 1, 81, 32, CAST(47873.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (23, N'????????????? ???????? ??????? 1x2', 1, 1, 1, 429, 47, CAST(1580200.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (24, N'????? ?????? ??????? 2x1', 2, 1, 1, 349, 9, CAST(3616300.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (25, N'????? ?????? ????? 3x3', 2, 2, 3, 201, 46, CAST(51261.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (26, N'????? ?????? ??????? 2x2', 2, 10, 3, 534, 46, CAST(50776.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (27, N'????????????? ???????? ??????? 2x3', 1, 3, 1, 552, 7, CAST(465700.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (28, N'????? ?????? ??????? 3x2', 2, 9, 1, 144, 41, CAST(51776.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (29, N'??????????? ?????? ????? 0x1', 4, 7, 1, 97, 30, CAST(47937.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (30, N'????????????? ???????? ??????? 1x2', 1, 7, 1, 509, 26, CAST(10604.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (31, N'????? ?????? ??????? 1x3', 2, 10, 3, 149, 13, CAST(2272400.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (32, N'????? ?????? ????? 3x2', 2, 9, 1, 508, 16, CAST(25561.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (33, N'????? ?????? ??????? 2x3', 2, 2, 1, 181, 35, CAST(4538800.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (34, N'??????? ??? ?????? ??????? 0x2', 3, 7, 3, 37, 50, CAST(1722700.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (35, N'??????????? ?????? ??????? 0x0', 4, 9, 1, 508, 19, CAST(5114700.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (36, N'??????????? ?????? ????? 0x2', 4, 3, 1, 167, 17, CAST(1024800.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (37, N'??????? ??? ?????? ??????? 0x3', 3, 10, 3, 962, 33, CAST(35922.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (38, N'????? ?????? ??????? 3x3', 2, 3, 1, 861, 45, CAST(37283.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (39, N'????? ?????? ????? 0x3', 2, 2, 1, 933, 50, CAST(725300.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (40, N'????? ?????? ????? 3x1', 2, 3, 1, 720, 11, CAST(4467500.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (41, N'????????????? ???????? ????? 3x3', 1, 8, 1, 942, 12, CAST(17600.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (42, N'????? ?????? ????? 1x3', 2, 2, 3, 382, 10, CAST(32770.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (43, N'??????????? ?????? ????? 3x0', 4, 10, 1, 247, 11, CAST(3950000.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (44, N'??????? ??? ?????? ????? 1x3', 3, 10, 2, 841, 18, CAST(3870000.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (45, N'????????????? ???????? ????? 3x1', 1, 10, 1, 270, 50, CAST(38809.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (46, N'????????????? ???????? ??????? 0x0', 1, 6, 1, 754, 24, CAST(4611.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (47, N'??????????? ?????? ??????? 0x1', 4, 8, 1, 833, 34, CAST(53875.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (48, N'????????????? ???????? ??????? 1x0', 1, 8, 1, 856, 26, CAST(12817.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (49, N'??????????? ?????? ????? 0x2', 4, 9, 3, 709, 47, CAST(2315700.00 AS Decimal(10, 2)))
INSERT [dbo].[Material] ([Id], [MaterialName], [MaterialTypeId], [CountInPack], [UnitOfMeasureId], [CountInStock], [MinimalCountLeft], [CostInRubles]) VALUES (50, N'??????????? ?????? ????? 2x0', 4, 5, 1, 794, 17, CAST(2163700.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([Id], [MaterialTypeName]) VALUES (1, N' ?????')
INSERT [dbo].[MaterialType] ([Id], [MaterialTypeName]) VALUES (2, N' ?????')
INSERT [dbo].[MaterialType] ([Id], [MaterialTypeName]) VALUES (3, N' ???????')
INSERT [dbo].[MaterialType] ([Id], [MaterialTypeName]) VALUES (4, N' ???????')
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'238686', N'????????? 27? ????', CAST(7864.00 AS Decimal(10, 2)), N'', 2, 2, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'239349', N'????????? 41? ????', CAST(6238.00 AS Decimal(10, 2)), N'', 3, 2, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'240580', N'????? 8? ????', CAST(7465.00 AS Decimal(10, 2)), N'', 5, 5, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'252485', N'?????? 33? ????????', CAST(4240.00 AS Decimal(10, 2)), N'\products\paper_0.jpg', 1, 3, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'253218', N'?????? 20? ????????', CAST(1168400.00 AS Decimal(10, 2)), N'', 5, 2, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'256862', N'?????? 5? ????', CAST(3712.00 AS Decimal(10, 2)), N'\products\paper_5.jpg', 5, 5, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'258695', N'????????? 25? ????', CAST(3631.00 AS Decimal(10, 2)), N'', 1, 1, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'259488', N'????????? 16? ??????', CAST(10095.00 AS Decimal(10, 2)), N'', 4, 3, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'259548', N'????? 9? ????', CAST(2317.00 AS Decimal(10, 2)), N'', 2, 4, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'260492', N'?????? 3? ????', CAST(827800.00 AS Decimal(10, 2)), N'', 2, 1, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'261465', N'????? 10? ??????', CAST(13028.00 AS Decimal(10, 2)), N'\products\paper_12.jpg', 4, 5, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'262257', N'?????? 16? ????', CAST(910700.00 AS Decimal(10, 2)), N'', 4, 5, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'264493', N'????????? 24? ????', CAST(10479.00 AS Decimal(10, 2)), N'', 2, 5, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'268393', N'?????? 32? ????', CAST(7424.00 AS Decimal(10, 2)), N'', 5, 4, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'275591', N'?????? 10? ????????', CAST(13600.00 AS Decimal(10, 2)), N'\products\paper_7.jpg', 2, 4, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'277950', N'????? 19? ????', CAST(9962.00 AS Decimal(10, 2)), N'', 3, 5, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'278382', N'????? 5? ????', CAST(732500.00 AS Decimal(10, 2)), N'', 2, 3, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'278463', N'????????? 27? ??????', CAST(3978.00 AS Decimal(10, 2)), N'\products\paper_10.jpg', 2, 3, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'278721', N'????? 50? ????????', CAST(1422000.00 AS Decimal(10, 2)), N'', 3, 3, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'279801', N'????? 26? ????', CAST(4628.00 AS Decimal(10, 2)), N'', 2, 2, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'281425', N'????? 41? ????????', CAST(990800.00 AS Decimal(10, 2)), N'\products\paper_23.jpg', 4, 4, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'285792', N'?????? 20? ????', CAST(14370.00 AS Decimal(10, 2)), N'', 3, 3, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'289779', N'????? 6? ????', CAST(1415400.00 AS Decimal(10, 2)), N'', 5, 1, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'290729', N'?????? 7? ??????', CAST(6934.00 AS Decimal(10, 2)), N'', 4, 4, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'292206', N'????????? 48? ????????', CAST(980100.00 AS Decimal(10, 2)), N'', 4, 3, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'292358', N'????????? 37? ????????', CAST(396100.00 AS Decimal(10, 2)), N'', 5, 4, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'294441', N'????????? 47? ????', CAST(1146000.00 AS Decimal(10, 2)), N'', 4, 4, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'296007', N'????? 24? ????????', CAST(1416200.00 AS Decimal(10, 2)), N'', 3, 2, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'297840', N'????????? 33? ????', CAST(461100.00 AS Decimal(10, 2)), N'', 4, 4, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'298632', N'?????? 28? ????', CAST(1467100.00 AS Decimal(10, 2)), N'', 3, 4, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'303994', N'????????? 45? ????', CAST(13081.00 AS Decimal(10, 2)), N'\products\paper_6.jpg', 3, 2, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'309067', N'????????? 17? ????', CAST(1382500.00 AS Decimal(10, 2)), N'\products\paper_24.jpg', 2, 1, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'309862', N'????????? 14? ????????', CAST(10682.00 AS Decimal(10, 2)), N'\products\paper_17.jpg', 2, 4, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'310212', N'????????? 50? ??????', CAST(13204.00 AS Decimal(10, 2)), N'\products\paper_11.jpg', 1, 1, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'310507', N'?????? 14? ????', CAST(7846.00 AS Decimal(10, 2)), N'', 3, 1, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'316033', N'????? 34? ??????', CAST(1353300.00 AS Decimal(10, 2)), N'', 4, 1, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'324941', N'????????? 6? ??????', CAST(5594.00 AS Decimal(10, 2)), N'', 2, 1, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'326200', N'?????? 40? ????', CAST(12927.00 AS Decimal(10, 2)), N'\products\paper_19.jpg', 2, 5, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'330360', N'????? 43? ????', CAST(586700.00 AS Decimal(10, 2)), N'', 1, 5, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'331270', N'????? 18? ??????', CAST(11171.00 AS Decimal(10, 2)), N'', 1, 4, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'331688', N'????????? 14? ????', CAST(10330.00 AS Decimal(10, 2)), N'', 2, 2, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'332522', N'?????? 29? ????', CAST(543900.00 AS Decimal(10, 2)), N'\products\paper_18.jpg', 1, 3, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'334385', N'????????? 28? ????????', CAST(9208.00 AS Decimal(10, 2)), N'\products\paper_20.jpg', 1, 2, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'334943', N'?????? 29? ????????', CAST(599700.00 AS Decimal(10, 2)), N'', 5, 1, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'337632', N'????? 24? ????', CAST(1147100.00 AS Decimal(10, 2)), N'', 2, 5, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'340583', N'?????? 50? ????', CAST(6788.00 AS Decimal(10, 2)), N'\products\paper_15.jpg', 3, 4, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'344868', N'????? 29? ??????', CAST(7618.00 AS Decimal(10, 2)), N'\products\paper_4.jpg', 1, 1, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'345239', N'?????? 5? ????', CAST(9243.00 AS Decimal(10, 2)), N'', 5, 1, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'346154', N'????? 40? ????', CAST(3427.00 AS Decimal(10, 2)), N'', 3, 4, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'347239', N'?????? 33? ????', CAST(13767.00 AS Decimal(10, 2)), N'', 2, 5, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'348651', N'?????? 13? ????', CAST(347700.00 AS Decimal(10, 2)), N'', 1, 3, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'349614', N'????? 12? ????', CAST(2551.00 AS Decimal(10, 2)), N'\products\paper_3.jpg', 3, 1, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'349802', N'????? 45? ????', CAST(1204000.00 AS Decimal(10, 2)), N'', 2, 1, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'349861', N'?????? 13? ????', CAST(384200.00 AS Decimal(10, 2)), N'', 2, 4, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'350515', N'????????? 7? ????', CAST(498600.00 AS Decimal(10, 2)), N'', 2, 2, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'351062', N'????? 32? ????????', CAST(445000.00 AS Decimal(10, 2)), N'', 4, 3, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'352034', N'????????? 45? ????????', CAST(1193900.00 AS Decimal(10, 2)), N'', 1, 2, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'353930', N'????? 40? ????', CAST(1276700.00 AS Decimal(10, 2)), N'', 2, 2, 8)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'357053', N'????????? 44? ??????', CAST(3396.00 AS Decimal(10, 2)), N'', 5, 5, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'360424', N'????? 22? ????????', CAST(13524.00 AS Decimal(10, 2)), N'', 1, 4, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'365615', N'????????? 15? ????', CAST(13013.00 AS Decimal(10, 2)), N'', 5, 1, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'366160', N'?????? 21? ????', CAST(1106400.00 AS Decimal(10, 2)), N'\products\paper_2.jpg', 4, 1, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'373939', N'????? 14? ????', CAST(3382.00 AS Decimal(10, 2)), N'', 1, 2, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'374263', N'????? 24? ??????', CAST(3907.00 AS Decimal(10, 2)), N'', 5, 5, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'374276', N'?????? 45? ????', CAST(13605.00 AS Decimal(10, 2)), N'', 3, 3, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'376834', N'????? 16? ????', CAST(1192700.00 AS Decimal(10, 2)), N'', 5, 4, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'377042', N'????? 20? ????', CAST(9227.00 AS Decimal(10, 2)), N'\products\paper_9.jpg', 5, 5, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'378723', N'????????? 47? ????????', CAST(387100.00 AS Decimal(10, 2)), N'', 5, 4, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'379800', N'?????? 32? ????', CAST(683200.00 AS Decimal(10, 2)), N'', 3, 1, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'381110', N'????? 34? ????????', CAST(237200.00 AS Decimal(10, 2)), N'', 2, 3, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'382063', N'????? 19? ????', CAST(2373.00 AS Decimal(10, 2)), N'', 4, 1, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'385037', N'????? 41? ????', CAST(329500.00 AS Decimal(10, 2)), N'\products\paper_21.jpg', 5, 5, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'390914', N'????? 42? ????', CAST(14344.00 AS Decimal(10, 2)), N'\products\paper_13.jpg', 3, 5, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'397143', N'????????? 7? ??????', CAST(2868.00 AS Decimal(10, 2)), N'', 3, 2, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'400418', N'????????? 11? ????', CAST(11660.00 AS Decimal(10, 2)), N'\products\paper_25.jpg', 4, 2, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'400484', N'?????? 45? ????????', CAST(3475.00 AS Decimal(10, 2)), N'', 4, 3, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'403054', N'????????? 17? ??????', CAST(504800.00 AS Decimal(10, 2)), N'', 4, 2, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'414339', N'?????? 49? ????', CAST(10786.00 AS Decimal(10, 2)), N'', 1, 1, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'414595', N'????? 50? ????', CAST(10750.00 AS Decimal(10, 2)), N'\products\paper_8.jpg', 2, 4, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'416066', N'?????? 38? ??????', CAST(12175.00 AS Decimal(10, 2)), N'', 1, 2, 2)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'418298', N'????????? 16? ????', CAST(7342.00 AS Decimal(10, 2)), N'', 1, 2, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'422185', N'?????? 44? ????', CAST(6441.00 AS Decimal(10, 2)), N'', 5, 2, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'425641', N'????????? 43? ????????', CAST(14151.00 AS Decimal(10, 2)), N'', 4, 2, 6)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'426804', N'?????? 12? ????', CAST(10703.00 AS Decimal(10, 2)), N'', 5, 1, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'431234', N'????? 10? ????', CAST(3816.00 AS Decimal(10, 2)), N'\products\paper_22.jpg', 5, 4, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'434113', N'????? 25? ????', CAST(1304700.00 AS Decimal(10, 2)), N'', 5, 4, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'437519', N'????????? 23? ??????', CAST(3317.00 AS Decimal(10, 2)), N'', 1, 1, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'440942', N'????? 9? ????', CAST(258000.00 AS Decimal(10, 2)), N'', 5, 3, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'441239', N'????? 17? ????????', CAST(1486300.00 AS Decimal(10, 2)), N'', 4, 2, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'442634', N'?????? 37? ????????', CAST(12664.00 AS Decimal(10, 2)), N'\products\paper_14.jpg', 3, 5, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'443382', N'????? 22? ????', CAST(450100.00 AS Decimal(10, 2)), N'', 3, 3, 5)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'443538', N'????? 43? ????????', CAST(13786.00 AS Decimal(10, 2)), N'', 5, 1, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'444337', N'?????? 26? ??????', CAST(3007.00 AS Decimal(10, 2)), N'', 4, 4, 4)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'446103', N'?????? 10? ????', CAST(13975.00 AS Decimal(10, 2)), N'', 5, 1, 3)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'446348', N'?????? 9? ??????', CAST(13568.00 AS Decimal(10, 2)), N'', 3, 3, 1)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'449359', N'?????? 15? ????????', CAST(1000900.00 AS Decimal(10, 2)), N'', 2, 3, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'449401', N'????? 31? ????', CAST(5236.00 AS Decimal(10, 2)), N'', 5, 5, 10)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'450659', N'????? 11? ????', CAST(595600.00 AS Decimal(10, 2)), N'\products\paper_16.jpg', 2, 3, 7)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'454479', N'?????? 50? ??????', CAST(3163.00 AS Decimal(10, 2)), N'', 3, 3, 9)
INSERT [dbo].[Product] ([Article], [Name], [MinimalAgentCost], [Image], [ProductTypeId], [CountOfPeopleToProduce], [NumberOfFactory]) VALUES (N'456129', N'?????? 12? ????????', CAST(6467.00 AS Decimal(10, 2)), N'\products\paper_1.jpg', 5, 3, 4)
GO
SET IDENTITY_INSERT [dbo].[ProductMaterial] ON 

INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'252485', 24, 20, 1)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'275591', 6, 1, 2)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'400484', 6, 4, 3)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'456129', 24, 18, 4)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'349614', 6, 3, 5)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'334385', 24, 9, 6)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'337632', 23, 15, 7)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'252485', 25, 3, 8)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'444337', 39, 12, 9)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'259488', 25, 20, 10)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'349614', 42, 4, 11)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'378723', 33, 4, 12)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'344868', 39, 12, 13)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'425641', 25, 8, 14)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'334385', 25, 4, 15)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'400418', 42, 3, 16)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'431234', 42, 4, 17)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'253218', 42, 6, 18)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'240580', 2, 1, 19)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'240580', 8, 1, 20)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'332522', 38, 15, 21)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'268393', 13, 3, 22)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'344868', 27, 6, 23)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'444337', 40, 15, 24)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'326200', 13, 1, 25)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'256862', 13, 6, 26)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'385037', 2, 16, 27)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'330360', 38, 19, 28)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'303994', 21, 5, 29)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'253218', 27, 6, 30)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'285792', 27, 14, 31)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'446348', 40, 8, 32)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'443382', 2, 3, 33)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'414595', 40, 6, 34)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'443382', 36, 2, 35)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'348651', 14, 9, 36)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'310212', 13, 10, 37)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'290729', 40, 15, 38)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'378723', 40, 14, 39)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'352034', 13, 3, 40)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'340583', 8, 2, 41)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'259488', 21, 4, 42)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'450659', 14, 11, 43)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'303994', 10, 4, 44)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'446348', 22, 15, 45)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'381110', 16, 1, 46)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'240580', 16, 16, 47)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'330360', 16, 11, 48)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'294441', 16, 1, 49)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'349614', 18, 20, 50)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'385037', 18, 18, 51)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'347239', 18, 18, 52)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'281425', 18, 6, 53)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'378723', 18, 3, 54)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'444337', 46, 11, 55)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'456129', 15, 19, 56)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'326200', 12, 18, 57)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'377042', 46, 19, 58)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'352034', 17, 3, 59)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'310212', 46, 19, 60)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'450659', 12, 6, 61)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'309862', 46, 7, 62)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'378723', 12, 14, 63)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'381110', 34, 14, 64)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'256862', 34, 5, 65)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'449359', 29, 15, 66)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'330360', 5, 13, 67)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'253218', 5, 10, 68)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'309862', 5, 5, 69)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'281425', 30, 20, 70)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'332522', 41, 8, 71)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'444337', 48, 19, 72)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'334385', 3, 13, 73)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'326200', 48, 18, 74)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'416066', 47, 8, 75)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'347239', 32, 20, 76)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'352034', 32, 4, 77)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'352034', 49, 14, 78)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'259488', 7, 8, 79)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'377042', 35, 10, 80)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'378723', 28, 5, 81)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'252485', 35, 1, 82)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'303994', 28, 10, 83)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'256862', 7, 19, 84)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'326200', 32, 16, 85)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'344868', 28, 17, 86)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'331270', 44, 8, 87)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'390914', 37, 17, 88)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'310212', 37, 10, 89)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'344868', 44, 11, 90)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'440942', 43, 4, 91)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'414595', 26, 16, 92)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'275591', 26, 11, 93)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'275591', 11, 4, 94)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'326200', 44, 12, 95)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'330360', 44, 16, 96)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'416066', 11, 3, 97)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'449359', 43, 4, 98)
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'252485', 37, 10, 99)
GO
INSERT [dbo].[ProductMaterial] ([ProductId], [MaterialId], [MaterialCount], [Id]) VALUES (N'281425', 44, 6, 100)
SET IDENTITY_INSERT [dbo].[ProductMaterial] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([Id], [Name]) VALUES (1, N'??? ????')
INSERT [dbo].[ProductType] ([Id], [Name]) VALUES (2, N'??? ????')
INSERT [dbo].[ProductType] ([Id], [Name]) VALUES (3, N'???????')
INSERT [dbo].[ProductType] ([Id], [Name]) VALUES (4, N'????? ??????')
INSERT [dbo].[ProductType] ([Id], [Name]) VALUES (5, N'???? ????')
INSERT [dbo].[ProductType] ([Id], [Name]) VALUES (6, N'??? ????')
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[UnitOfMeasure] ON 

INSERT [dbo].[UnitOfMeasure] ([Id], [UnitName]) VALUES (1, N' ?')
INSERT [dbo].[UnitOfMeasure] ([Id], [UnitName]) VALUES (2, N' ?')
INSERT [dbo].[UnitOfMeasure] ([Id], [UnitName]) VALUES (3, N' ??')
SET IDENTITY_INSERT [dbo].[UnitOfMeasure] OFF
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK__Materials__Mater__3D5E1FD2] FOREIGN KEY([MaterialTypeId])
REFERENCES [dbo].[MaterialType] ([Id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK__Materials__Mater__3D5E1FD2]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK__Materials__UnitO__3E52440B] FOREIGN KEY([UnitOfMeasureId])
REFERENCES [dbo].[UnitOfMeasure] ([Id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK__Materials__UnitO__3E52440B]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Product__412EB0B6] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductType] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Product__412EB0B6]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK__ProductMa__Mater__44FF419A] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK__ProductMa__Mater__44FF419A]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Article])
GO
