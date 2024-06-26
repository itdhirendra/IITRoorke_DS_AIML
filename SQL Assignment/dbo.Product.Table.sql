USE [SQL_Tutorial]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 08-09-2023 00:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [tinyint] NOT NULL,
	[Product_Type] [nvarchar](50) NOT NULL,
	[Product] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Product] ([ProductId], [Product_Type], [Product], [Type]) VALUES (1, N'Coffee', N'Amaretto', N'Regular')
INSERT [dbo].[Product] ([ProductId], [Product_Type], [Product], [Type]) VALUES (2, N'Coffee', N'Columbian', N'Regular')
INSERT [dbo].[Product] ([ProductId], [Product_Type], [Product], [Type]) VALUES (3, N'Coffee', N'Decaf Irish Cream', N'Decaf')
INSERT [dbo].[Product] ([ProductId], [Product_Type], [Product], [Type]) VALUES (4, N'Espresso', N'Caffe Latte', N'Regular')
INSERT [dbo].[Product] ([ProductId], [Product_Type], [Product], [Type]) VALUES (5, N'Espresso', N'Caffe Mocha', N'Regular')
INSERT [dbo].[Product] ([ProductId], [Product_Type], [Product], [Type]) VALUES (6, N'Espresso', N'Decaf Espresso', N'Decaf')
INSERT [dbo].[Product] ([ProductId], [Product_Type], [Product], [Type]) VALUES (7, N'Espresso', N'Regular Espresso', N'Regular')
INSERT [dbo].[Product] ([ProductId], [Product_Type], [Product], [Type]) VALUES (8, N'Herbal Tea', N'Chamomile', N'Decaf')
INSERT [dbo].[Product] ([ProductId], [Product_Type], [Product], [Type]) VALUES (9, N'Herbal Tea', N'Lemon', N'Decaf')
INSERT [dbo].[Product] ([ProductId], [Product_Type], [Product], [Type]) VALUES (10, N'Herbal Tea', N'Mint', N'Decaf')
INSERT [dbo].[Product] ([ProductId], [Product_Type], [Product], [Type]) VALUES (11, N'Tea', N'Darjeeling', N'Regular')
INSERT [dbo].[Product] ([ProductId], [Product_Type], [Product], [Type]) VALUES (12, N'Tea', N'Earl Grey', N'Regular')
INSERT [dbo].[Product] ([ProductId], [Product_Type], [Product], [Type]) VALUES (13, N'Tea', N'Green Tea', N'Regular')
GO
