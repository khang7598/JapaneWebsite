USE [JapaneData]
GO
/****** Object:  Table [dbo].[CulturalPost]    Script Date: 6/1/2019 5:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CulturalPost](
	[IdCultural] [int] IDENTITY(1,1) NOT NULL,
	[Name] [ntext] NOT NULL,
	[Description] [ntext] NULL,
	[Date] [date] NOT NULL,
	[Img] [ntext] NULL,
	[Detail] [ntext] NULL,
	[IdPlace] [int] NULL,
	[IdThemePost] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCultural] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Level]    Script Date: 6/1/2019 5:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[N] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Place]    Script Date: 6/1/2019 5:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place](
	[IdPlace] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [ntext] NOT NULL,
	[Detail] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPlace] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 6/1/2019 5:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[IdQuestion] [int] IDENTITY(1,1) NOT NULL,
	[IdTest] [int] NOT NULL,
	[Name] [ntext] NOT NULL,
	[Option1] [ntext] NOT NULL,
	[Option2] [ntext] NOT NULL,
	[Option3] [ntext] NOT NULL,
	[Option4] [ntext] NOT NULL,
	[Answer] [ntext] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudyPost]    Script Date: 6/1/2019 5:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyPost](
	[IdStudyPost] [int] IDENTITY(1,1) NOT NULL,
	[Name] [ntext] NOT NULL,
	[Description] [ntext] NULL,
	[Date] [date] NOT NULL,
	[Img] [ntext] NULL,
	[Detail] [ntext] NULL,
	[N] [char](2) NULL,
	[IdThemePost] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdStudyPost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 6/1/2019 5:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[IdTest] [int] IDENTITY(1,1) NOT NULL,
	[Name] [ntext] NOT NULL,
	[N] [char](2) NOT NULL,
	[Detail] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThemeOfPost]    Script Date: 6/1/2019 5:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThemeOfPost](
	[IdThemePost] [int] IDENTITY(1,1) NOT NULL,
	[Name] [ntext] NOT NULL,
	[Detail] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdThemePost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CulturalPost] ON 

INSERT [dbo].[CulturalPost] ([IdCultural], [Name], [Description], [Date], [Img], [Detail], [IdPlace], [IdThemePost]) VALUES (1, N'24 lễ hội Nhật Bản đặc sắc ', N'Cùng khám phá những lễ hội đặc sắc suốt bốn mùa trong năm tại Nhật qua bộ lịch lễ hội Nhật Bản này nhé! Bạn sẽ chọn lễ hội nào cho chuyến hành trình của mình?', CAST(N'2019-05-29' AS Date), N'/ckfinder/userfiles/images/vanhoa.jpg', N'<p><img alt="" src="/ckfinder/userfiles/images/tonghopcaclehoi.jpg" style="height:878px; width:800px" /></p>
', 1, 1)
SET IDENTITY_INSERT [dbo].[CulturalPost] OFF
INSERT [dbo].[Level] ([N]) VALUES (N'N1')
INSERT [dbo].[Level] ([N]) VALUES (N'N2')
INSERT [dbo].[Level] ([N]) VALUES (N'N3')
INSERT [dbo].[Level] ([N]) VALUES (N'N4')
INSERT [dbo].[Level] ([N]) VALUES (N'N5')
INSERT [dbo].[Level] ([N]) VALUES (N'NT')
SET IDENTITY_INSERT [dbo].[Place] ON 

INSERT [dbo].[Place] ([IdPlace], [CityName], [Detail]) VALUES (1, N'All city', N'Around Japan')
SET IDENTITY_INSERT [dbo].[Place] OFF
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([IdQuestion], [IdTest], [Name], [Option1], [Option2], [Option3], [Option4], [Answer]) VALUES (1, 1, N'研究', N'げんきゅう', N'けんきゅ', N'けんきゅう', N'げんきゅ', N'けんきゅう')
INSERT [dbo].[Question] ([IdQuestion], [IdTest], [Name], [Option1], [Option2], [Option3], [Option4], [Answer]) VALUES (2, 1, N'親しい', N'したしい', N'くやしい', N'けわしい', N'くわしい', N'したしい')
SET IDENTITY_INSERT [dbo].[Question] OFF
SET IDENTITY_INSERT [dbo].[StudyPost] ON 

INSERT [dbo].[StudyPost] ([IdStudyPost], [Name], [Description], [Date], [Img], [Detail], [N], [IdThemePost]) VALUES (2, N'[Ngữ pháp N3] ～ないと、～なくちゃ', N'「～ないと」 là thể ngắn của 「～ないといけない」 và 「～なくちゃ」 là thể ngắn của 「～なければならない」mà chúng ta đã học ở trình độ N5. ', CAST(N'2019-05-28' AS Date), N'/ckfinder/userfiles/images/n3.png', N'<p>Hai mẫu c&acirc;u r&uacute;t gọn n&agrave;y thường được d&ugrave;ng trong hội thoại h&agrave;ng ng&agrave;y.</p>

<p>①　明日は早く出かけるから、もう<strong>寝(ね)ないと</strong>。<br />
&rarr;　T&ocirc;i phải ngủ th&ocirc;i v&igrave; mai sẽ ra ngo&agrave;i sớm.</p>

<p>②　試験（しけん）まであと１ヵ月だ。がんばって<strong>勉強しないと</strong>。<br />
&rarr;　Chỉ c&ograve;n một th&aacute;ng nữa l&agrave; đến kỳ th&igrave; rồi. Phải cố gắng học th&ocirc;i.</p>

<p>③　田中さんにメールの返事を<strong>しなくちゃ</strong>。<br />
&rarr;　T&ocirc;i phải trả lời mail cho anh Tanaka.</p>

<p>④　明日までに先生にレポートを<strong>ださなくちゃ</strong>。</p>

<p>&rarr;　T&ocirc;i phải nộp b&aacute;o c&aacute;o cho thầy gi&aacute;o trước ng&agrave;y mai.</p>
', N'N3', 1)
INSERT [dbo].[StudyPost] ([IdStudyPost], [Name], [Description], [Date], [Img], [Detail], [N], [IdThemePost]) VALUES (4, N'[Ngữ pháp N3] ～ちゃう', N'「ちゃう」 là dạng ít trang trọng hơn của 「てしまう」, được sử dụng trong hội thoại hàng ngày.', CAST(N'2019-05-29' AS Date), N'/ckfinder/userfiles/images/n3.png', N'<p><strong>C&aacute;ch chia:</strong></p>

<ul>
	<li>～てしまう　&rarr;　～ちゃう</li>
	<li>～でしまう　&rarr;　～じゃう</li>
	<li>～てしまった　&rarr;　～ちゃった</li>
	<li>～でしまった　&rarr;　～じゃった</li>
	<li>～てしましょう　&rarr;　～ちゃおう</li>
</ul>

<p><strong>V&iacute; dụ:</strong></p>

<ul>
	<li>してしまう/ してしまった　&rarr;　しちゃう/ しちゃた</li>
	<li>来てしまう/ 来てしまった　&rarr;　来ちゃう/ 来ちゃった</li>
	<li>帰ってしまう/ 帰ってしまった　&rarr;　帰っちゃう/ 帰っちゃた</li>
	<li>死んでしまう/ 死んでしまった　&rarr;　死んじゃう/ 死んじゃった</li>
</ul>

<p><strong>C&acirc;u v&iacute; dụ:</strong></p>

<p>①　宿題をしてしまいました　&rarr;　　宿題を<strong>しちゃった</strong><br />
&rarr;　Đ&atilde; l&agrave;m xong hết b&agrave;i tập rồi</p>

<p>②　ビールを飲んでしまった　&rarr;　ビールを<strong>飲んじゃった</strong><br />
&rarr;　Uống hết bia mất rồi.</p>

<p>③　「あれ？ここにあったチョコレートは？」ー　「あ、<strong>食べちゃった</strong>。いけなかった？」<br />
&rarr; &ldquo;Ơ, thỏi s&ocirc; c&ocirc; la ở đ&acirc;y đ&acirc;u rồi? &ldquo;ー　&rdquo;&Aacute;, tớ ăn mất rồi. Kh&ocirc;ng được &agrave;?&rdquo;</p>

<p>④　結婚(けっこん)してしまいましょう　&rarr;　<strong>結婚しちゃおう</strong><br />
&rarr;　Ch&uacute;ng ta kết h&ocirc;n lu&ocirc;n đi.<br />
＊「～してしましょう」c&oacute; nghĩa l&agrave; &ldquo;l&agrave;m g&igrave; lu&ocirc;n đi&rdquo;</p>

<p>⑤　もしもし、すみません。車が<strong>混(こ)んじゃって</strong>&hellip; 少し遅(おく) れます。<br />
&rarr;　Alo, xin lỗi. Xe cộ đ&ocirc;ng qu&aacute; (tắc cả đường mất rồi) n&ecirc;n&hellip; t&ocirc;i sẽ đến muộn một ch&uacute;t nh&eacute;.</p>
', N'N3', 1)
SET IDENTITY_INSERT [dbo].[StudyPost] OFF
SET IDENTITY_INSERT [dbo].[Test] ON 

INSERT [dbo].[Test] ([IdTest], [Name], [N], [Detail]) VALUES (1, N' Đề thi Kanji N3', N'N3', N'Kanji to Hiragana')
SET IDENTITY_INSERT [dbo].[Test] OFF
SET IDENTITY_INSERT [dbo].[ThemeOfPost] ON 

INSERT [dbo].[ThemeOfPost] ([IdThemePost], [Name], [Detail]) VALUES (1, N'Học tập', N'Biên soạn dựa trên các giáo trình tiếng Nhật.')
INSERT [dbo].[ThemeOfPost] ([IdThemePost], [Name], [Detail]) VALUES (2, N'Ẩm thực', N'Ẩm thực Nhật Bản qua các bài viết.')
INSERT [dbo].[ThemeOfPost] ([IdThemePost], [Name], [Detail]) VALUES (3, N'Du lịch', N'Giới thiệu địa điểm du lịch.')
INSERT [dbo].[ThemeOfPost] ([IdThemePost], [Name], [Detail]) VALUES (4, N'Nhạc Nhật', N'Giới thiệu nhạc.')
INSERT [dbo].[ThemeOfPost] ([IdThemePost], [Name], [Detail]) VALUES (5, N'Đời sống', N'Các cách ứng xử hàng ngày.')
SET IDENTITY_INSERT [dbo].[ThemeOfPost] OFF
ALTER TABLE [dbo].[CulturalPost]  WITH CHECK ADD FOREIGN KEY([IdPlace])
REFERENCES [dbo].[Place] ([IdPlace])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CulturalPost]  WITH CHECK ADD FOREIGN KEY([IdThemePost])
REFERENCES [dbo].[ThemeOfPost] ([IdThemePost])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([IdTest])
REFERENCES [dbo].[Test] ([IdTest])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[StudyPost]  WITH CHECK ADD FOREIGN KEY([IdThemePost])
REFERENCES [dbo].[ThemeOfPost] ([IdThemePost])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[StudyPost]  WITH CHECK ADD FOREIGN KEY([N])
REFERENCES [dbo].[Level] ([N])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD FOREIGN KEY([N])
REFERENCES [dbo].[Level] ([N])
ON UPDATE CASCADE
GO
