USE [SQL_Tutorial]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 08-09-2023 00:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[Area_Code] [smallint] NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Market] [nvarchar](50) NOT NULL,
	[Market_Size] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Area_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (203, N'Connecticut', N'East', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (206, N'Washington', N'West', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (209, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (210, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (212, N'New York', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (213, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (214, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (216, N'Ohio', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (217, N'Illinois', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (224, N'Illinois', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (225, N'Louisiana', N'South', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (234, N'Ohio', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (239, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (253, N'Washington', N'West', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (254, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (262, N'Wisconsin', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (281, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (303, N'Colorado', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (305, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (309, N'Illinois', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (310, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (312, N'Illinois', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (314, N'Missouri', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (315, N'New York', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (318, N'Louisiana', N'South', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (319, N'Iowa', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (321, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (323, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (325, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (330, N'Ohio', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (337, N'Louisiana', N'South', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (339, N'Massachusetts', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (347, N'New York', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (351, N'Massachusetts', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (352, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (360, N'Washington', N'West', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (361, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (386, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (405, N'Oklahoma', N'South', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (407, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (408, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (409, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (413, N'Massachusetts', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (414, N'Wisconsin', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (415, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (417, N'Missouri', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (419, N'Ohio', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (425, N'Washington', N'West', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (430, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (432, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (435, N'Utah', N'West', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (440, N'Ohio', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (469, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (475, N'Connecticut', N'East', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (503, N'Oregon', N'West', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (504, N'Louisiana', N'South', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (505, N'New Mexico', N'South', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (508, N'Massachusetts', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (509, N'Washington', N'West', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (510, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (512, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (513, N'Ohio', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (515, N'Iowa', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (516, N'New York', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (518, N'New York', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (530, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (541, N'Oregon', N'West', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (559, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (561, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (562, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (563, N'Iowa', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (567, N'Ohio', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (573, N'Missouri', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (580, N'Oklahoma', N'South', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (585, N'New York', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (603, N'New Hampshire', N'East', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (607, N'New York', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (608, N'Wisconsin', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (614, N'Ohio', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (617, N'Massachusetts', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (618, N'Illinois', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (619, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (626, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (630, N'Illinois', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (631, N'New York', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (636, N'Missouri', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (641, N'Iowa', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (646, N'New York', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (650, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (660, N'Missouri', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (661, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (682, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (702, N'Nevada', N'West', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (707, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (708, N'Illinois', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (712, N'Iowa', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (713, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (714, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (715, N'Wisconsin', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (716, N'New York', N'East', N'Major Market')
GO
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (718, N'New York', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (719, N'Colorado', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (720, N'Colorado', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (727, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (740, N'Ohio', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (754, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (760, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (772, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (773, N'Illinois', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (774, N'Massachusetts', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (775, N'Nevada', N'West', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (781, N'Massachusetts', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (786, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (801, N'Utah', N'West', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (805, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (806, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (813, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (815, N'Illinois', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (816, N'Missouri', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (817, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (818, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (830, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (831, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (832, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (845, N'New York', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (847, N'Illinois', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (850, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (857, N'Massachusetts', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (858, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (860, N'Connecticut', N'East', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (863, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (903, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (904, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (909, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (914, N'New York', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (915, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (916, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (917, N'New York', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (918, N'Oklahoma', N'South', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (920, N'Wisconsin', N'Central', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (925, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (936, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (937, N'Ohio', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (940, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (941, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (949, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (951, N'California', N'West', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (954, N'Florida', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (956, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (959, N'Connecticut', N'East', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (970, N'Colorado', N'Central', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (971, N'Oregon', N'West', N'Small Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (972, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (978, N'Massachusetts', N'East', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (979, N'Texas', N'South', N'Major Market')
INSERT [dbo].[Location] ([Area_Code], [State], [Market], [Market_Size]) VALUES (985, N'Louisiana', N'South', N'Small Market')
GO
