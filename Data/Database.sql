USE [master]
GO
/****** Object:  Database [Health]    Script Date: 06-08-2019 15:57:27 ******/
CREATE DATABASE [Health]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Health', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Health.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Health_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Health_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Health] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Health].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Health] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Health] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Health] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Health] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Health] SET ARITHABORT OFF 
GO
ALTER DATABASE [Health] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Health] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Health] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Health] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Health] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Health] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Health] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Health] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Health] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Health] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Health] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Health] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Health] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Health] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Health] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Health] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Health] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Health] SET RECOVERY FULL 
GO
ALTER DATABASE [Health] SET  MULTI_USER 
GO
ALTER DATABASE [Health] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Health] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Health] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Health] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Health] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Health', N'ON'
GO
USE [Health]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 06-08-2019 15:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [varchar](50) NULL,
	[Pass] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cust]    Script Date: 06-08-2019 15:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cust](
	[UserID] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Sex] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[BMI] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dise]    Script Date: 06-08-2019 15:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dise](
	[Id] [varchar](50) NULL,
	[DName] [varchar](50) NULL,
	[Sym] [varchar](500) NULL,
	[Type] [varchar](50) NULL,
	[Flag] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Disease]    Script Date: 06-08-2019 15:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Disease](
	[Id] [varchar](50) NULL,
	[DName] [varchar](50) NULL,
	[Sym] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 06-08-2019 15:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctor](
	[DId] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Cate] [varchar](50) NULL,
	[Pass] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 06-08-2019 15:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[UserId] [varchar](50) NULL,
	[Feed] [varchar](50) NULL,
	[Date] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Final]    Script Date: 06-08-2019 15:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Final](
	[Sym] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[history]    Script Date: 06-08-2019 15:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[history](
	[UId] [varchar](50) NULL,
	[Sym] [varchar](500) NULL,
	[Disease] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Date] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Keyword]    Script Date: 06-08-2019 15:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Keyword](
	[Sym] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrainingData]    Script Date: 06-08-2019 15:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrainingData](
	[Id] [int] NOT NULL,
	[Dname] [varchar](100) NOT NULL,
	[Headache] [varchar](50) NULL,
	[Fatique] [varchar](50) NULL,
	[Nausea] [varchar](50) NULL,
	[Vomiting] [varchar](50) NULL,
	[Chills] [varchar](50) NULL,
	[Cough] [varchar](50) NULL,
	[SoreThroat] [varchar](50) NULL,
	[StiffyNose] [varchar](50) NULL,
	[Redness] [varchar](50) NULL,
	[Irritation] [varchar](50) NULL,
	[Itching] [varchar](50) NULL,
	[Rash] [varchar](50) NULL,
	[StomachCramps] [varchar](50) NULL,
	[StomachPain] [varchar](50) NULL,
	[StrainingStools] [varchar](50) NULL,
	[Dehydration] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[BMI] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Treatment]    Script Date: 06-08-2019 15:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment](
	[ID] [varchar](50) NOT NULL,
	[Disease] [varchar](100) NULL,
	[Symptoms] [varchar](1000) NULL,
	[Treatments] [varchar](5000) NULL,
 CONSTRAINT [PK_Treatment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Admin] ([ID], [Pass]) VALUES (N'Admin', N'Admin')
INSERT [dbo].[Cust] ([UserID], [Name], [Address], [Mobile], [Email], [Age], [Sex], [Pass], [BMI]) VALUES (N'1001', N'Amish', N'malad', N'9076613217', N'vora@gmail.com', N'22', N'Male', N'123', N'21.875')
INSERT [dbo].[Cust] ([UserID], [Name], [Address], [Mobile], [Email], [Age], [Sex], [Pass], [BMI]) VALUES (N'1002', N'nynufmu', N'hhnjfuj', N'9076613214', N'fhdh@gfdfb.xok', N'25', N'Male', N'abc', N'20.875')
INSERT [dbo].[Cust] ([UserID], [Name], [Address], [Mobile], [Email], [Age], [Sex], [Pass], [BMI]) VALUES (N'1003', N'temp', N'mumbai', N'9876543210', N'temp@gmail.com', N'43', N'Male', N'123', N'19.875')
INSERT [dbo].[Cust] ([UserID], [Name], [Address], [Mobile], [Email], [Age], [Sex], [Pass], [BMI]) VALUES (N'1004', N'test9', N'mumbai', N'9876543210', N'test9@gmail.com', N'29', N'Male', N'123', N'21.875')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10001', N'Coronary Artery Disease', N'shortness of breath,palpitations,faster heartbeat,weakness,nausea,sweating', N'Heart', N'0')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10002', N'Heart Attack', N'discomfort,pressure,heaviness,chest pain,discomfort,fullness,indigestion,sweating,nausea,extreme weakness,irregular heartbeat', N'Heart', N'0')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10003', N'Arrhythmias', N'palpitations,chest pounding,dizziness,shortness of breath,fainting', N'Heart', N'0')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10004', N'Heart Valve Disease', N'shortness of breath,weakness,dizziness,palpitations,irregular heartbeat', N'Heart', N'0')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10005', N'Pericarditis', N'sharp chest pain,low grade fever,increased heart rate', N'Heart', N'0')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10006', N'Osteoporosis', N'rounded upper back,height loss', N'Bone', N'0')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10007', N'Osteomyelitis', N'fever,rednedd over infected area,swelling,stiffness', N'Bone', N'0')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10008', N'Hypercalcemia', N'excessive thirst,excessive urination,nausea,abdominal pain,decreased appetite,constipation,weakness', N'Bone', N'0')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10009', N'Rickets', N'skeletal deformities,muscle cramps,bone fractures,impaired growth,tender bones,increased tooth cavities', N'Bone', N'0')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10010', N'Paget’s Disease', N'bone pain,joint stiffness,bone fractures,hearing loss,skeletal deformities', N'Bone', N'0')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10011', N'AIDS', N'fever,large tender lymph nodes,throat inflammation,headache,rashes', N'Infectious', N'1')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10012', N'Amoebiasis', N'diarreah,severe dysentery', N'Infectious', N'0')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10013', N'Pneumonia', N'fever,rigors,cough,runny nose,chest pain,shortness of breath', N'Infectious', N'0')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10014', N'Diphtheria', N'chills,fatigue,bluish skin,coloration,sore throat,hoarseness,cough,headache,difficulty swallowing,painful swallowing,difficulty breathing', N'Infectious', N'0')
INSERT [dbo].[Dise] ([Id], [DName], [Sym], [Type], [Flag]) VALUES (N'10015', N'Dengue', N'fever,headache,joint pains,measel like rashes', N'Infectious', N'1')
INSERT [dbo].[Disease] ([Id], [DName], [Sym]) VALUES (N'101', N'Malaria', N'Headache, Vomiting, Feeling Cold / Chills, High fever, Profuse sweating as body temperature falls')
INSERT [dbo].[Disease] ([Id], [DName], [Sym]) VALUES (N'102', N'Measles', N'Fever, Dry cough, Runny nose, Sore throat, Inflamed eyes')
INSERT [dbo].[Disease] ([Id], [DName], [Sym]) VALUES (N'103', N'Meningitis', N'Sudden high fever, Severe headache , Stiff neck, Vomiting or nausea with headache, Sleepiness or difficulty waking up,')
INSERT [dbo].[Disease] ([Id], [DName], [Sym]) VALUES (N'104', N'Cancer', N'Changes in bowel or bladder habits, Persistent cough, Difficulty swallowing, Fatigue, area under Skin thickening ')
INSERT [dbo].[Disease] ([Id], [DName], [Sym]) VALUES (N'105', N'Diabetes', N'Increased thirst, Frequent urination, Extreme hunger, Unexplained weight loss, Slow-healing sores')
INSERT [dbo].[Disease] ([Id], [DName], [Sym]) VALUES (N'106', N'Diarrhea', N'Loose Motion, Abdominal cramps, Abdominal pain, Fever, Blood in the stool')
INSERT [dbo].[Disease] ([Id], [DName], [Sym]) VALUES (N'107', N'Chicken Pox', N'Fever, Loss of appetite, Headache, Tiredness, Fatigue')
INSERT [dbo].[Disease] ([Id], [DName], [Sym]) VALUES (N'108', N'Cholera', N'Nausea and vomiting, Dehydration, Loose Motion, Abdominal pain, Fever')
INSERT [dbo].[Disease] ([Id], [DName], [Sym]) VALUES (N'109', N'Aids', N'dry cough or shortness of breath,
difficult or painful swallowing, diarrhea, white spots, vision loss.')
INSERT [dbo].[Doctor] ([DId], [Name], [Address], [Mobile], [Cate], [Pass]) VALUES (N'101', N'Amish', N'Goregoan', N'9076613214', N'Infectious', N'123')
INSERT [dbo].[Doctor] ([DId], [Name], [Address], [Mobile], [Cate], [Pass]) VALUES (N'102', N'temp', N'mumbai', N'789561230', N'Heart', N'789561230')
INSERT [dbo].[Feedback] ([UserId], [Feed], [Date]) VALUES (N'1110', N'hi', N'27-11-14')
INSERT [dbo].[Feedback] ([UserId], [Feed], [Date]) VALUES (N'1110', N'hi', N'27-11-14')
INSERT [dbo].[Feedback] ([UserId], [Feed], [Date]) VALUES (N'1002', N'mckgsdg', N'25-03-15')
INSERT [dbo].[Final] ([Sym]) VALUES (N'headache')
INSERT [dbo].[Final] ([Sym]) VALUES (N'fever')
INSERT [dbo].[history] ([UId], [Sym], [Disease], [Type], [Date]) VALUES (N'1001', N'fever,rigors,', N'Pneumonia
', N'Infectious', N'25-03-15 16:37:54')
INSERT [dbo].[history] ([UId], [Sym], [Disease], [Type], [Date]) VALUES (N'1001', N'headache,chills,fatigue,', N'Diphtheria
', N'Infectious', N'11-07-2019 13:10:44')
INSERT [dbo].[history] ([UId], [Sym], [Disease], [Type], [Date]) VALUES (N'1001', N'headache,chills,', N'Diphtheria
', N'Infectious', N'11-07-2019 13:12:12')
INSERT [dbo].[history] ([UId], [Sym], [Disease], [Type], [Date]) VALUES (N'1001', N'headache,fever,', N'AIDS
Dengue
', N'Infectious', N'11-07-2019 16:27:52')
INSERT [dbo].[history] ([UId], [Sym], [Disease], [Type], [Date]) VALUES (N'1001', N',chills,', N'Diphtheria
', N'Infectious', N'11-07-2019 16:28:45')
INSERT [dbo].[history] ([UId], [Sym], [Disease], [Type], [Date]) VALUES (N'1001', N',discomfort,', N'Heart Attack
', N'Heart', N'11-07-2019 16:29:15')
INSERT [dbo].[history] ([UId], [Sym], [Disease], [Type], [Date]) VALUES (N'1001', N'headache,chills,', N'Diphtheria
', N'Infectious', N'11-07-2019 16:54:06')
INSERT [dbo].[history] ([UId], [Sym], [Disease], [Type], [Date]) VALUES (N'1001', N'headache,chills,', N'Diphtheria
', N'Infectious', N'11-07-2019 16:55:24')
INSERT [dbo].[history] ([UId], [Sym], [Disease], [Type], [Date]) VALUES (N'1001', N'headache,chills,', N'Diphtheria
', N'Infectious', N'11-07-2019 16:56:55')
INSERT [dbo].[history] ([UId], [Sym], [Disease], [Type], [Date]) VALUES (N'1001', N'headache,chills,', N'Diphtheria
', N'Infectious', N'11-07-2019 16:29:47')
INSERT [dbo].[history] ([UId], [Sym], [Disease], [Type], [Date]) VALUES (N'1001', N',palpitations,chest pounding,', N'Arrhythmias
', N'Heart', N'11-07-2019 16:49:23')
INSERT [dbo].[history] ([UId], [Sym], [Disease], [Type], [Date]) VALUES (N'1001', N'headache,chills,', N'Diphtheria
', N'Infectious', N'11-07-2019 16:52:34')
INSERT [dbo].[history] ([UId], [Sym], [Disease], [Type], [Date]) VALUES (N'1001', N'headache,fever,', N'AIDS
Dengue
', N'Infectious', N'11-07-2019 17:38:29')
INSERT [dbo].[Keyword] ([Sym]) VALUES (N'large tender lymph nodes')
INSERT [dbo].[Keyword] ([Sym]) VALUES (N'joint pains')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (1, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'1', N'1', N'1', N'1', N'26', N'34.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (2, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'1', N'1', N'1', N'1', N'26', N'19.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (3, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'26', N'34.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (4, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'1', N'1', N'1', N'1', N'26', N'19.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (5, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'1', N'1', N'1', N'1', N'27', N'34.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (6, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'1', N'1', N'1', N'1', N'27', N'19.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (7, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'27', N'34.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (8, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'1', N'1', N'1', N'1', N'27', N'19.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (9, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'1', N'1', N'1', N'1', N'28', N'19.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (10, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'1', N'1', N'1', N'1', N'28', N'34.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (11, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'28', N'19.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (12, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'1', N'1', N'1', N'1', N'28', N'34.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (13, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'1', N'1', N'1', N'1', N'29', N'19.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (14, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'1', N'1', N'1', N'1', N'29', N'34.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (15, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'29', N'19.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (16, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'1', N'1', N'1', N'1', N'29', N'19.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (17, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'1', N'1', N'1', N'1', N'30', N'34.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (18, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'1', N'1', N'1', N'1', N'30', N'19.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (19, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'30', N'19.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (20, N'Allerigies', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'1', N'1', N'1', N'1', N'30', N'19.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (21, N'Cold and Flu
', N'5', N'5', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (22, N'Cold and Flu', N'5', N'3', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (23, N'Cold and Flu', N'5', N'5', N'1', N'1', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (24, N'Cold and Flu', N'3', N'5', N'1', N'1', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'24.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (25, N'Cold and Flu', N'5', N'5', N'1', N'1', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (26, N'Cold and Flu', N'3', N'5', N'1', N'1', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (27, N'Cold and Flu', N'3', N'3', N'1', N'1', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (28, N'Cold and Flu', N'5', N'5', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'27', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (29, N'Cold and Flu', N'5', N'3', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'27', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (30, N'Cold and Flu', N'5', N'5', N'1', N'1', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'27', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (31, N'Cold and Flu', N'3', N'5', N'1', N'1', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'27', N'24.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (32, N'Cold and Flu', N'5', N'5', N'1', N'1', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'27', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (33, N'Cold and Flu', N'3', N'5', N'1', N'1', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'27', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (34, N'Cold and Flu', N'3', N'3', N'1', N'1', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'27', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (35, N'Cold and Flu', N'5', N'5', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'28', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (36, N'Cold and Flu', N'5', N'3', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'28', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (37, N'Cold and Flu', N'5', N'5', N'1', N'1', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'28', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (38, N'Cold and Flu', N'3', N'5', N'1', N'1', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'28', N'24.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (39, N'Cold and Flu', N'5', N'5', N'1', N'1', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'28', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (40, N'Cold and Flu', N'3', N'5', N'1', N'1', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'28', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (41, N'Cold and Flu', N'3', N'3', N'1', N'1', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'28', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (42, N'Cold and Flu', N'5', N'5', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'29', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (43, N'Cold and Flu', N'5', N'3', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'29', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (44, N'Cold and Flu', N'5', N'5', N'1', N'1', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'29', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (45, N'Cold and Flu', N'3', N'5', N'1', N'1', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'29', N'24.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (46, N'Cold and Flu', N'5', N'5', N'1', N'1', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'29', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (47, N'Cold and Flu', N'3', N'5', N'1', N'1', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'29', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (48, N'Cold and Flu', N'3', N'3', N'1', N'1', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'29', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (49, N'Cold and Flu', N'5', N'5', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'30', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (50, N'Cold and Flu', N'5', N'3', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'30', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (51, N'Cold and Flu', N'5', N'5', N'1', N'1', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'30', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (52, N'Cold and Flu', N'3', N'5', N'1', N'1', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'30', N'24.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (53, N'Cold and Flu', N'5', N'5', N'1', N'1', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'30', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (54, N'Cold and Flu', N'3', N'5', N'1', N'1', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'30', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (55, N'Cold and Flu', N'3', N'3', N'1', N'1', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'30', N'36.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (56, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'1', N'26', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (57, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'1', N'26', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (58, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'1', N'26', N'28.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (59, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'1', N'26', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (60, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'1', N'27', N'28.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (61, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'1', N'27', N'22.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (62, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'1', N'27', N'23.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (63, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'1', N'27', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (64, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'1', N'28', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (65, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'1', N'28', N'28.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (66, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'1', N'28', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (67, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'1', N'28', N'28.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (68, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'1', N'29', N'22.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (69, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'1', N'29', N'23.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (70, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'1', N'29', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (71, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'1', N'29', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (72, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'1', N'30', N'28.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (73, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'1', N'30', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (74, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'1', N'30', N'28.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (75, N'Constipation', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'1', N'30', N'22.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (76, N'Food Poisoning', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'26', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (77, N'Food Poisoning', N'1', N'1', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'26', N'30.1')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (78, N'Food Poisoning', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'1', N'1', N'1', N'26', N'46.2')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (79, N'Food Poisoning', N'1', N'1', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'1', N'1', N'1', N'26', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (80, N'Food Poisoning', N'1', N'1', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'26', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (81, N'Food Poisoning', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'27', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (82, N'Food Poisoning', N'1', N'1', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'27', N'30.1')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (83, N'Food Poisoning', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'1', N'1', N'1', N'27', N'46.2')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (84, N'Food Poisoning', N'1', N'1', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'1', N'1', N'1', N'27', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (85, N'Food Poisoning', N'1', N'1', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'27', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (86, N'Food Poisoning', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'28', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (173, N'Viral Fever', N'3', N'1', N'5', N'5', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'26', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (174, N'Viral Fever', N'5', N'1', N'3', N'5', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'26', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (175, N'Viral Fever', N'5', N'1', N'5', N'3', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'26', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (176, N'Viral Fever', N'3', N'1', N'3', N'3', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'26', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (177, N'Viral Fever', N'5', N'1', N'5', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'27', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (178, N'Viral Fever', N'3', N'1', N'5', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'27', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (179, N'Viral Fever', N'5', N'1', N'3', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'27', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (180, N'Viral Fever', N'5', N'1', N'5', N'3', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'27', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (181, N'Viral Fever', N'5', N'1', N'5', N'5', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'27', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (182, N'Viral Fever', N'3', N'1', N'5', N'5', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'27', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (183, N'Viral Fever', N'5', N'1', N'3', N'5', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'27', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (184, N'Viral Fever', N'5', N'1', N'5', N'3', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'27', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (185, N'Viral Fever', N'3', N'1', N'3', N'3', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'27', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (186, N'Viral Fever', N'5', N'1', N'5', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'28', N'28.5')
GO
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (187, N'Viral Fever', N'3', N'1', N'5', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'28', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (188, N'Viral Fever', N'5', N'1', N'3', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'28', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (189, N'Viral Fever', N'5', N'1', N'5', N'3', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'28', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (190, N'Viral Fever', N'5', N'1', N'5', N'5', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'28', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (191, N'Viral Fever', N'3', N'1', N'5', N'5', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'28', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (192, N'Viral Fever', N'5', N'1', N'3', N'5', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'28', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (193, N'Viral Fever', N'5', N'1', N'5', N'3', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'28', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (194, N'Viral Fever', N'3', N'1', N'3', N'3', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'28', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (195, N'Viral Fever', N'5', N'1', N'5', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'29', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (196, N'Viral Fever', N'3', N'1', N'5', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'29', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (197, N'Viral Fever', N'5', N'1', N'3', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'29', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (198, N'Viral Fever', N'5', N'1', N'5', N'3', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'29', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (199, N'Viral Fever', N'5', N'1', N'5', N'5', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'29', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (200, N'Viral Fever', N'3', N'1', N'5', N'5', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'29', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (201, N'Viral Fever', N'5', N'1', N'3', N'5', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'29', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (202, N'Viral Fever', N'5', N'1', N'5', N'3', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'29', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (203, N'Viral Fever', N'3', N'1', N'3', N'3', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'29', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (204, N'Viral Fever', N'5', N'1', N'5', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'30', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (205, N'Viral Fever', N'3', N'1', N'5', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'30', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (206, N'Viral Fever', N'5', N'1', N'3', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'30', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (207, N'Viral Fever', N'5', N'1', N'5', N'3', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'30', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (208, N'Viral Fever', N'5', N'1', N'5', N'5', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'30', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (209, N'Viral Fever', N'3', N'1', N'5', N'5', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'30', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (210, N'Viral Fever', N'5', N'1', N'3', N'5', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'30', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (211, N'Viral Fever', N'5', N'1', N'5', N'3', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'30', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (212, N'Viral Fever', N'3', N'1', N'3', N'3', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'30', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (87, N'Food Poisoning', N'1', N'1', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'28', N'30.1')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (88, N'Food Poisoning', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'1', N'1', N'1', N'28', N'46.2')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (89, N'Food Poisoning', N'1', N'1', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'1', N'1', N'1', N'28', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (90, N'Food Poisoning', N'1', N'1', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'28', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (91, N'Food Poisoning', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'29', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (92, N'Food Poisoning', N'1', N'1', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'29', N'30.1')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (93, N'Food Poisoning', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'1', N'1', N'1', N'29', N'46.2')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (94, N'Food Poisoning', N'1', N'1', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'1', N'1', N'1', N'29', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (95, N'Food Poisoning', N'1', N'1', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'29', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (96, N'Food Poisoning', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'30', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (97, N'Food Poisoning', N'1', N'1', N'5', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'30', N'30.1')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (98, N'Food Poisoning', N'1', N'1', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'1', N'1', N'1', N'30', N'46.2')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (99, N'Food Poisoning', N'1', N'1', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'1', N'1', N'1', N'30', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (100, N'Food Poisoning', N'1', N'1', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'1', N'1', N'1', N'30', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (101, N'Migraine', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (102, N'Migraine', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'24.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (103, N'Migraine', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'26.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (104, N'Migraine', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (105, N'Migraine', N'5', N'5', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (106, N'Migraine', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (107, N'Migraine', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (108, N'Migraine', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'24.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (109, N'Migraine', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'26.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (110, N'Migraine', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (111, N'Migraine', N'5', N'5', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (112, N'Migraine', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (113, N'Migraine', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'27', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (114, N'Migraine', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'27', N'24.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (115, N'Migraine', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'27', N'26.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (116, N'Migraine', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'27', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (117, N'Migraine', N'5', N'5', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'27', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (118, N'Migraine', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'27', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (119, N'Migraine', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'28', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (120, N'Migraine', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'28', N'24.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (121, N'Migraine', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'28', N'26.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (122, N'Migraine', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'28', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (123, N'Migraine', N'5', N'5', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'28', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (124, N'Migraine', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'28', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (125, N'Migraine', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'29', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (126, N'Migraine', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'29', N'24.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (127, N'Migraine', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'29', N'26.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (128, N'Migraine', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'29', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (129, N'Migraine', N'5', N'5', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'29', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (130, N'Migraine', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'29', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (131, N'Migraine', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'30', N'21.9')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (132, N'Migraine', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'30', N'24.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (133, N'Migraine', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'30', N'26.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (134, N'Migraine', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'30', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (135, N'Migraine', N'5', N'5', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'30', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (136, N'Migraine', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'30', N'21.8')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (137, N'not Found', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'26', N'0')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (138, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'26', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (139, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'26', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (140, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'26', N'22.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (141, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'26', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (142, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'26', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (143, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'26', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (144, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'27', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (145, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'27', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (146, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'27', N'22.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (147, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'27', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (148, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'27', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (149, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'27', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (150, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'28', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (151, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'28', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (152, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'28', N'22.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (153, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'28', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (154, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'28', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (155, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'28', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (156, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'29', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (157, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'29', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (158, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'29', N'22.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (159, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'29', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (160, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'29', N'26.5')
GO
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (161, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'29', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (162, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'30', N'20.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (163, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'30', N'22.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (164, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'3', N'5', N'5', N'1', N'1', N'1', N'1', N'30', N'22.6')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (165, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'3', N'5', N'1', N'1', N'1', N'1', N'30', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (166, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'5', N'5', N'3', N'1', N'1', N'1', N'1', N'30', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (167, N'Skin Infection', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'3', N'3', N'3', N'1', N'1', N'1', N'1', N'30', N'26.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (168, N'Viral Fever', N'5', N'1', N'5', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'26', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (169, N'Viral Fever', N'3', N'1', N'5', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'26', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (170, N'Viral Fever', N'5', N'1', N'3', N'5', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'26', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (171, N'Viral Fever', N'5', N'1', N'5', N'3', N'5', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'26', N'28.5')
INSERT [dbo].[TrainingData] ([Id], [Dname], [Headache], [Fatique], [Nausea], [Vomiting], [Chills], [Cough], [SoreThroat], [StiffyNose], [Redness], [Irritation], [Itching], [Rash], [StomachCramps], [StomachPain], [StrainingStools], [Dehydration], [Age], [BMI]) VALUES (172, N'Viral Fever', N'5', N'1', N'5', N'5', N'3', N'5', N'5', N'5', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'26', N'28.5')
INSERT [dbo].[Treatment] ([ID], [Disease], [Symptoms], [Treatments]) VALUES (N'1', N'Viral Fever', N'Headache,Nausea,Vomiting,Chills,Cough,Sore Throat,Stiffy Nose.', N'Taking over-the-counter fever reducers, such as acetaminophen or ibuprofen, to reduce a fever and its symptoms
resting as much as possible
drinking plenty of fluids to stay hydrated and replenish fluids lost while sweating
taking antiviral medications, such as oseltamivir phosphate (Tamiflu), when applicable
sitting in a lukewarm bath to bring your body temperature down.')
INSERT [dbo].[Treatment] ([ID], [Disease], [Symptoms], [Treatments]) VALUES (N'2', N'Skin Infection', N'Redness,Irritation,Itching,Rash.', N'Treatment depends on the cause of the infection and the severity. Some types of viral skin infections may improve on their own within days or weeks.

Bacterial infections are often treated with topical antibiotics applied directly to the skin or with oral antibiotics. If the strain of bacteria is resistant to treatment, treating the infection may require intravenous antibiotics administered in the hospital.

You can use over-the-counter antifungal sprays and creams to treat a fungal skin infection. If your condition doesn’t improve, ask your doctor about prescription oral or topical creams. ')
INSERT [dbo].[Treatment] ([ID], [Disease], [Symptoms], [Treatments]) VALUES (N'3', N'Migraine', N'Headache,Fatique,Nausea,Vomiting,Dehydration.', N'Migraine treatment usually is with over-the-counter (OTC) migraine medication or prescription drugs.
Prescription medications used to relieve the pain of migraine include triptans (a class of drugs), for example:
sumatriptan (Imitrex, Alsuma, Imitrex STATdose System, Sumavel DosePro, Zecuity, Treximet)
rizatriptan (Maxalt, Maxalt-MLT)
eletriptan (Relpax)
zolmitriptan (Zomig, Zomig-ZMT)
naratriptan Amerge)
almotriptan (Axert)
frovatriptan (Frova)

A new drug class called a calcitonin gene-related peptide receptor (CGRP-R) antagonist was approved in 2018 to treat chronic migraine. It is a periodic injection, given monthly or quarterly, to prevent migraines. This class of medication includes erenumab (Aimovig), fremanezumab (Ajovy), and galcanezumab (Emgality).
Some patients with chronic migraine receive botulinum toxin (Botox) injections every three months to help treat their headaches.
Lifestyle changes like eating a healthy diet and getting exercise may help reduce the frequency of migraine attacks.
Avoid foods that trigger migraines. This also may reduce the frequency of attacks.
Some may find exercises, for example yoga, that promote muscle relaxation are helpful in managing severe pain.
Most people with migraines usually are able to manage their condition with a combination of medications and lifestyle changes.
Some people may need prescription medications to decrease the frequency of headaches.')
INSERT [dbo].[Treatment] ([ID], [Disease], [Symptoms], [Treatments]) VALUES (N'4', N'Food Poisoning', N'Nausea,Vomiting,Stomach Cramps.', N'The treatment and prevention strategy for food poisoning is to rest and replace lost fluids and electrolytes by:

Drinking plenty of liquids (preferably with oral rehydration salts to replace lost electrolytes - see below)
Ensuring fluid intake even if vomiting persists, by sipping small amounts of water or allowing ice cubes to melt in the mouth.
Gradually starting to eat again. No specific restrictions are recommended, but blander foods might be easier to start with (cereal, rice, toast, and bananas are good examples).')
INSERT [dbo].[Treatment] ([ID], [Disease], [Symptoms], [Treatments]) VALUES (N'5', N'Constipation', N'Straining stools', N'Drink more water
Eat more fiber, especially soluble, non-fermentable fiber
Exercise more
 Drink coffee, especially caffeinated coffee
Take Senna, an herbal laxative
Eat probiotic foods or take probiotic supplements
Over-the-counter or prescription laxatives
Try a low-FODMAP diet
Eat prebiotic foods
Try magnesium citrate
Eat prunes
Try avoiding dairy')
INSERT [dbo].[Treatment] ([ID], [Disease], [Symptoms], [Treatments]) VALUES (N'6', N'Cold and Flu', N'Headache,Fatique,Chills,Cough,Sore Throat,Stiffy Nose', N'Go to bed. Curling up on the couch helps, but don’t stay up late watching TV. Skimping on sleep makes your immune system weak, making it harder to fight germs. Head to bed early, and take naps during the day. 
Drink up. Getting plenty of fluids thins your mucus and breaks up congestion. It also prevents the headaches and fatigue that dehydration causes.
Gargle with salt water. It’s a good way to soothe a throbbing throat. The salt water eases swelling and loosens mucus. Stir one-quarter to one-half teaspoon of salt into a cup of warm water until it’s dissolved, and gargle a few times a day.
Sip a hot beverage. It’s comforting to curl up with a mug of tea. Plus, research shows that the heat can also ease cold symptoms such as sore throat and fatigue. Try sipping non-caffeinated herbal tea, lemon water, or warm broth.
Have a spoonful of honey. This sticky stuff can coat your throat and soothe a cough. In one study, kids who ate about half a tablespoon of honey at bedtime slept more soundly and coughed less than those who got a placebo medicine. 
Take a hot shower. Breathing in steam may moisten a scratchy throat and nose, as well as loosen your congestion.')
INSERT [dbo].[Treatment] ([ID], [Disease], [Symptoms], [Treatments]) VALUES (N'7', N'Allergies', N'Itching,Rash', N'Antihistamines can help to treat most minor allergic reactions regardless of the cause. These drugs reduce the body''s production of histamine, which reduces all symptoms, including sneezing, watering eyes, and skin reactions.

Second-generation antihistamines, including Claritin (loratadine) and Zyrtec (cetirizine), are less likely to cause drowsiness than first-generation antihistamines, such as Benadryl.

Antihistamines come in several forms, usually to help deliver the medication closer to the source of the reaction or make it easier to consume, such as:

oral pills
dissolvable tablets
nasal sprays
liquids
eye drops
Antihistamines in these forms are available from pharmacies, to buy online, or on prescription from a doctor.

Antihistamines can also be taken to prevent allergies. Many people with seasonal or pet allergies will begin taking antihistamines when they know they are going to be exposed to an allergen.

A person who is pregnant or has a liver disorder should consult their doctor before taking antihistamines.')
USE [master]
GO
ALTER DATABASE [Health] SET  READ_WRITE 
GO
