USE [master]
GO
/****** Object:  Database [psycho]    Script Date: 16.03.2023 11:56:38 ******/
CREATE DATABASE [psycho]

GO
USE [psycho]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 16.03.2023 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 16.03.2023 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDQuestion] [int] NOT NULL,
	[IDResult] [int] NOT NULL,
	Answer int NOT NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 16.03.2023 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Property](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameProperty] [nvarchar](50) NOT NULL,
	[Value] [int] NOT NULL,
	[Min] [int] NOT NULL,
	[IDTest] [int] NOT NULL,
 CONSTRAINT [PK_Property] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Psychologist]    Script Date: 16.03.2023 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Psychologist](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NamePsychologist] [nvarchar](50) NOT NULL,
	[SurnamePsychologist] [nvarchar](50) NOT NULL,
	[PatronymicPsychologist] [nvarchar](50) NOT NULL,
	[IDAccount] [int] NOT NULL,
 CONSTRAINT [PK_Psychologist] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 16.03.2023 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](250) NOT NULL,
	[IDTest] [int] NOT NULL,
	[IDProperty] [int] NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 16.03.2023 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDStudent] [int] NOT NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 16.03.2023 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameStudent] [nvarchar](50) NOT NULL,
	[SurnameStudent] [nvarchar](50) NOT NULL,
	[PatronymicStudent] [nvarchar](50) NOT NULL,
	[Group] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SudentProp](
	[ID] [int] NOT NULL,
	[SudentValue] [int] NOT NULL,
	[IDResult] [int] NOT NULL,
	[IDproperty] [int] NOT NULL,
 CONSTRAINT [PK_SudentProp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 16.03.2023 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameTest] [nvarchar](250) NOT NULL,
	[IDPsychologist] [int] NOT NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 16.03.2023 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_account_Type] FOREIGN KEY([Type])
REFERENCES [dbo].[Type] ([ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_account_Type]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Question] FOREIGN KEY([IDQuestion])
REFERENCES [dbo].[Question] ([ID])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Question]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Result] FOREIGN KEY([IDResult])
REFERENCES [dbo].[Result] ([ID])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Result]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_Test] FOREIGN KEY([IDTest])
REFERENCES [dbo].[Test] ([ID])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_Test]
GO
ALTER TABLE [dbo].[Psychologist]  WITH CHECK ADD  CONSTRAINT [FK_Psychologist_Account] FOREIGN KEY([IDAccount])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Psychologist] CHECK CONSTRAINT [FK_Psychologist_Account]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Property] FOREIGN KEY([IDProperty])
REFERENCES [dbo].[Property] ([ID])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Property]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Test] FOREIGN KEY([IDTest])
REFERENCES [dbo].[Test] ([ID])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Test]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Student] FOREIGN KEY([IDStudent])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Student]
GO
ALTER TABLE [dbo].[SudentProp]  WITH CHECK ADD  CONSTRAINT [FK_SudentProp_Property] FOREIGN KEY([IDproperty])
REFERENCES [dbo].[Property] ([ID])
GO
ALTER TABLE [dbo].[SudentProp] CHECK CONSTRAINT [FK_SudentProp_Property]
GO
ALTER TABLE [dbo].[SudentProp]  WITH CHECK ADD  CONSTRAINT [FK_SudentProp_Result] FOREIGN KEY([IDResult])
REFERENCES [dbo].[Result] ([ID])
GO
ALTER TABLE [dbo].[SudentProp] CHECK CONSTRAINT [FK_SudentProp_Result]
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD  CONSTRAINT [FK_Test_Psychologist] FOREIGN KEY([IDPsychologist])
REFERENCES [dbo].[Psychologist] ([ID])
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_Psychologist]
GO
USE [master]
GO
ALTER DATABASE [psycho] SET  READ_WRITE 
GO

USE [master]
GO
USE [psycho]
GO


INSERT INTO [dbo].[Type]
([Type]) VALUES ('��������');

INSERT INTO [dbo].Account
(Login, Password, Type) VALUES
('1', '1', 1);

INSERT INTO [dbo].Psychologist
(NamePsychologist, SurnamePsychologist, PatronymicPsychologist, IDAccount) VALUES
('Name', 'Surname', 'Patronymic', 1);

INSERT INTO [dbo].[Test]
(IDPsychologist, NameTest) VALUES
(1, '����������� ����������');

INSERT INTO [dbo].Property
(NameProperty, [Min], [Value], IDTest) VALUES
('����� ����',18,0,1),
('������������ ��������',21,0,1),
('���������������',14,0,1),
('���������������� �����������',21,0,1),
('���������� ���������',21,0,1),
('�����������',21,0,1),
('��������������� � ������',21,0,1),
('���������� ����������',21,0,1),
('����������� ��������',14,0,1),
('���������������',17,0,1),
('����������',21,0,1);


INSERT INTO [dbo].Question
([Text], IDTest, IDProperty) VALUES
('��� ���� ������� �� ������� � ������. ', 1, 1),
('����� ������ ���� � ��������, ����� �������� ����.', 1, 1),
('�������� ����� ����� ����� ������ ����� �������� ������ �����. ', 1, 1),
('���� �� ����� ������ ���������, ���� �� �� ����������. ', 1, 1),
('��� ������� � ��������� ���� ����������, ��� � ���� ������.', 1, 1),
('����� ��� ����������� ������ ������ � ������� �����������. ', 1, 1),
('���� ���� ���-�� ��������, � ���� ����������� ����� ������. ', 1, 2),
('����� ���������� ����, ������� ���������� ���� ����� ����� ������������', 1, 2),
('������ ���������� ���������� �� �����. ', 1, 2),
('������� �� ������ - ���������� ������ �������� ���� ������������, ���� ��� ������ �����. ', 1, 2),
('�� ����� ������������ � ������, ������� ���� �� ��������. ', 1, 2),
('�������� ����� ������, ���� ��� ���������, � �� ������ � ����� ��� ������ �����-���� ����. ', 1, 2),
('� ��������� ������ � ������� ������ ������ ����������.', 1, 3),
('������ ������� ���� �������, ���� ������. ', 1, 3),
('��� �������: �������� �� �������� ��������.', 1, 3),
('��������� �������, ��� ���� ����� �����, ��� ��� ���������.', 1, 3),
('� �� ���� ����������� �������� ������ ���� ����� ������� ������. ', 1, 3),
('� �� ����, ����� ����� ���� ������ ���� ���� ������ ���������������. ', 1, 3),
('��� ������ �����, ����� ������� ��� �������, � ������ ��������. ', 1, 4),
('������ ���������� �������� ����� ������, ���� �� ��������� �� ���������� � ���������� �����. ', 1, 4),
('������ �����, ������ �������� ����� ���������� � ������������� � ������ �� ���� �������� ��������. ', 1, 4),
('����������� ����� � ����������� ������ ����� ������. ', 1, 4),
('� ����� �������� �������� �������������� ������, ��� ��������� ������� � ��������� �����. ', 1, 4),
('��������� ������������ ����������� ����� ������� ���������, ��� ������: ������ ������������ ������� �������� �������.', 1, 4),
('������ ��������, ��� ��� ����� ���� � ���������� ��� � �������� ����� ����������� �����������, ������� ��������� ���. ', 1, 5),
('� ����� �������� ��� ������ ���� ������� � ���������� � ����� �������� - ��� ����� ������ ���������� ���������� � ��� �������', 1, 5),
('������� ����� ����� �������������, �� ������ ���� ������ � ��������, ������� ���������� � �����������. ', 1, 5),
('���� �������� ����� �� ������ ������. ', 1, 5),
('��� ������ � ����������� ����� ��� ������ � ��� ����� ��� ��������� ���, ���� ������� ��������. ', 1, 5),
('� ������� ����, ��� � ���� �������� �� ���� ������ �� �������.', 1, 5),
('���� �����, � ������� ������ ������ ������. ', 1, 6),
('������ ������ ������ � ���� ��������������, ���� �������, ������� ������������� �������. ', 1, 6),
('���� �� ��������, ��� ���� ����� ����������� ���������� � ������� �������������. ', 1, 6),
('����� �� ������ �������, ��������� ���������� ����� ������, ��� ������������ ����� �� � ����� ������. ', 1, 6),
('�� ��������, ������� ���������� ����, ����� ������� �� ������.', 1, 6),
('���, ��� �������� ������ �������� ������� ��������, ����� ������ �� ������ �����. ', 1, 6),
('���������� ����� ������������, ��� � ������ �������� ���� ���� �����, ������� ������� �� ����������� ��� �����������.', 1, 7),
('��� ��������� � ��� ����������, ������ ������ � ����. ', 1, 7),
('��� �� �������� ����������� ���������� ���� ����� � ������ ��� ������. ', 1, 7),
('������� �������� ����, � ��� ��������� ���� � ����. ', 1, 7),
('��� ������ ������������, ��� ���������, ��� ������� ������ �� ������ ����. ', 1, 7),
('�� ����� ������ ����� ����� ����� ����.', 1, 7),
('� ���� ����� ��������� ������ ���������� ���������� � �����������. ', 1, 8),
('����, � ������� ��� ������ ������������� ���� ��������,
������� ��� ���������. ', 1, 8),
('����������� � ��������� ����������� ������ ������ ����, ����������� ��������� ���������� �����������. ', 1, 8),
('������ ���������� � ���� �������� ���������, ������� ������ ��������� �� ����������. ', 1, 8),
('��������, ������� ����� ������ ��� ������������, ����� �������� �� ������� �������� � ����������� ��������.', 1, 8),
('� ������, ��� ���� ������ ���� �������� ������ ����� �� ���� ����. ', 1, 8),
('��� ����� �� ��������� � ������, � ��������� �������, ���������� � ��������� �������, � ������� ���� ����� ������.', 1, 9),
('����� ����, ������� ������ ������� ���������: ����� ������, �� ����� �������, �� �����.', 1, 9),
('����� ���, ��� ����� � ������, ������ � ��������� �����. ', 1, 9),
('������ ������ � ��������� ���� ��������� ��������� ��� ������� � ������. ', 1, 9),
('������ � ��� ��������� ��(!) ��� ����, ����� � ������ ��� �������. ', 1, 9),
('������ ����������� �� ����������� ��������. ', 1, 9),
('��������� ��� ������� �������� ������ ������ ��� ��������, ��� �������� ��� ���������. ', 1, 10),
('������ ������ ����� ������ ���������� � ������ ���������� ����������� ������.', 1, 10),
('������ �� ��������� ����������� ������ �������������.', 1, 10),
('���������� ������ �������� ������ ���������� ����� - ������� ������ ���������� ������� ����� �� �����������. ', 1, 10),
('������� ����� ���� ������� ���� ������ ����� ������. ', 1, 10),
('��������, ��� ����������� �������� ��� �����������, ������ ���������� ��� ������������ � ������ � ��������. ', 1, 10),
('���� ����� ������ ��������� ����������� ���� ������, ������, ��� ������. ', 1, 11),
('������ � ����� ��, � ��� ���� ������ ������, ���� ���� ��� �� �������� ������. ', 1, 11),
('� ������ �������� ����� ������, ���� ���� �������� ������ ���. ', 1, 11),
('� ����� ����������� � �������� � ��������, ���� ��� �� ������ �� ���� ��������� ���� ��������. ', 1, 11),
('������� �� ����� ����� ������� � ��������, ��� ���� �������� ���������������. ', 1, 11),
('���� ������ ����� ��������� � ���������, ����� ���� ������� � ������� ��������� ������. ', 1, 11);
