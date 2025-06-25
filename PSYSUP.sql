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
([Type]) VALUES ('Психолог');

INSERT INTO [dbo].Account
(Login, Password, Type) VALUES
('1', '1', 1);

INSERT INTO [dbo].Psychologist
(NamePsychologist, SurnamePsychologist, PatronymicPsychologist, IDAccount) VALUES
('Name', 'Surname', 'Patronymic', 1);

INSERT INTO [dbo].[Test]
(IDPsychologist, NameTest) VALUES
(1, 'Диагностика экстремизм');

INSERT INTO [dbo].Property
(NameProperty, [Min], [Value], IDTest) VALUES
('Культ силы',18,0,1),
('Допустимость агрессии',21,0,1),
('Интолерантность',14,0,1),
('Конвенциональное принуждение',21,0,1),
('Социальный пессимизм',21,0,1),
('Мистичность',21,0,1),
('Деструктивностъ и цинизм',21,0,1),
('Протестная активность',21,0,1),
('Нормативный нигилизм',14,0,1),
('Антиинтрацепция',17,0,1),
('Конформизм',21,0,1);


INSERT INTO [dbo].Question
([Text], IDTest, IDProperty) VALUES
('Все люди делятся на сильных и слабых. ', 1, 1),
('Добро должно быть с кулаками, уметь защитить себя.', 1, 1),
('Исконный образ жизни моего народа можно защитить только силой. ', 1, 1),
('Люди не будут хорошо трудиться, если их не заставлять. ', 1, 1),
('При общении с приезжими надо показывать, кто в доме хозяин.', 1, 1),
('Почти все разногласия нельзя решить с помощью переговоров. ', 1, 1),
('Если меня кто-то оскорбит, я могу действовать очень жестко. ', 1, 2),
('Часто попадаются люди, которые раздражают меня одним своим присутствием', 1, 2),
('Иногда невозможно удержаться от драки. ', 1, 2),
('Надписи на стенах - приемлемый способ выразить свое недовольство, если нет других путей. ', 1, 2),
('Не стоит церемониться с людьми, которые тебе не нравятся. ', 1, 2),
('Человека можно понять, если его разозлили, а он ударил в ответ или сломал какую-либо вещь. ', 1, 2),
('К некоторым нациям и народам трудно хорошо относиться.', 1, 3),
('Каждый человек либо хороший, либо плохой. ', 1, 3),
('Мой принцип: «Никогда не доверять «чужакам».', 1, 3),
('Нормально считать, что твой народ лучше, чем все остальные.', 1, 3),
('Я не могу представить человека другой расы своим близким другом. ', 1, 3),
('Я не хочу, чтобы среди моих друзей были люди разных национальностей. ', 1, 3),
('Мне всегда важно, чтобы обидчик был наказан, а жертва отомщена. ', 1, 4),
('Многие социальные проблемы будут решены, если мы избавимся от аморальных и малодушных людей. ', 1, 4),
('Прежде всего, нашему обществу нужна дисциплина и решительность в борьбе за наши исконные ценности. ', 1, 4),
('Оскорбление чести и достоинства всегда нужно карать. ', 1, 4),
('В нашем обществе добиться справедливости важнее, чем проявлять жалость к отдельным людям. ', 1, 4),
('Некоторые преступления заслуживают более тяжкого наказания, чем тюрьма: иногда преступников следует публично казнить.', 1, 4),
('Вполне возможно, что эта серия войн и конфликтов раз и навсегда будет остановлена катастрофой, которая уничтожит мир. ', 1, 5),
('В нашем обществе нет смысла быть честным и заботиться о среде обитания - все равно другие продолжают обманывать и все портить', 1, 5),
('Сегодня везде царит неуверенность, мы должны быть готовы к кризисам, жестким конфликтам и переворотам. ', 1, 5),
('Наше общество стоит на пороге гибели. ', 1, 5),
('Нет смысла в напряженной учебе или работе — все равно все достается тем, кого устроят родители. ', 1, 5),
('Я отлично знаю, что в этом обществе от меня ничего не зависит.', 1, 5),
('Есть знаки, в которых скрыто особое знание. ', 1, 6),
('Каждый должен верить в свое предназначение, идти дорогой, которая предначертана судьбой. ', 1, 6),
('Люди не осознают, что наша жизнь управляется заговорами и тайными организациями. ', 1, 6),
('Наука не всегда полезна, поскольку существует много такого, что человеческий разум не в силах понять. ', 1, 6),
('От символов, которые используют люди, часто зависит их судьба.', 1, 6),
('Тот, кто понимает тайное значение древних символов, может влиять на других людей. ', 1, 6),
('Безопаснее всего предполагать, что в каждом человеке есть злые черты, которые вылезут на поверхность при возможности.', 1, 7),
('Все продается и все покупается, вопрос только в цене. ', 1, 7),
('Мне не нравятся большинство окружающих меня людей и вообще мир вокруг. ', 1, 7),
('Человек человеку волк, и все заботятся лишь о себе. ', 1, 7),
('Чем больше возможностей, тем вероятнее, что человек ступит на плохой путь. ', 1, 7),
('Со всеми людьми можно найти общий язык.', 1, 7),
('В наше время требуется больше увлеченных романтиков и энтузиастов. ', 1, 8),
('Люди, у которых нет планов преобразовать наше общество,
кажутся мне странными. ', 1, 8),
('Известности и признания заслуживают только смелые люди, действующие наперекор пассивному большинству. ', 1, 8),
('Худший недостаток — быть занудным человеком, который всегда действует по инструкции. ', 1, 8),
('Человека, который много сделал для человечества, можно простить за жесткие поступки и неуживчивый характер.', 1, 8),
('Я считаю, что люди должны быть способны отдать жизнь за свои идеи. ', 1, 8),
('Нам нужны не программы и законы, а несколько храбрых, неутомимых и преданных лидеров, в которых люди могут верить.', 1, 9),
('Правы люди, которые всегда следуют пословице: «Если нельзя, но очень хочется, то можно».', 1, 9),
('Среди тех, кто сидит в тюрьме, многие — настоящие герои. ', 1, 9),
('Только слабые и трусливые люди стремятся выполнять все правила и законы. ', 1, 9),
('Законы у нас принимают не(!) для того, чтобы в стране был порядок. ', 1, 9),
('Работа полицейских не заслуживает уважения. ', 1, 9),
('Бизнесмен или хороший менеджер сейчас важнее для общества, чем художник или профессор. ', 1, 10),
('Нашему народу нужно меньше рассуждать и больше заниматься конкретными делами.', 1, 10),
('Никому не интересны переживания разных интеллигентов.', 1, 10),
('Обсуждение разных взглядов только запутывает людей - решение многих социальных проблем лежит на поверхности. ', 1, 10),
('Слишком часто люди выносят свою личную жизнь наружу. ', 1, 10),
('Рассказы, где описываются поступки или приключения, читать интереснее чем повествующие о мыслях и чувствах. ', 1, 10),
('Если точку зрения разделяет большинство моих друзей, значит, она верная. ', 1, 11),
('Обычно я делаю то, о чем меня просят друзья, даже если это не нравится другим. ', 1, 11),
('Я всегда поддержу своих друзей, даже если общество против них. ', 1, 11),
('Я часто развлекаюсь в компании с друзьями, хотя мне не совсем по душе некоторые наши проделки. ', 1, 11),
('Драться за честь своей команды — почетнее, чем быть успешным индивидуалистом. ', 1, 11),
('Надо пройти через опасности и испытания, чтобы тебя приняли в команду настоящих друзей. ', 1, 11);
