
USE [elberkmu_ElBerkStudyoDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13.11.2020 21:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FullLayouts]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FullLayouts](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_FullLayouts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Identities]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Identities](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Objective] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[Specifications1] [nvarchar](max) NULL,
	[Specifications2] [nvarchar](max) NULL,
	[Specifications3] [nvarchar](max) NULL,
	[Specifications4] [nvarchar](max) NULL,
 CONSTRAINT [PK_Identities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutDetails]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[LayoutID] [uniqueidentifier] NULL,
	[FullLayoutID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_LayoutDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Layouts]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Layouts](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Layouts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NavbarItems]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavbarItems](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Quantity] [smallint] NOT NULL,
 CONSTRAINT [PK_NavbarItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Body] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prices]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prices](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[SinglePrice] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Description1] [nvarchar](max) NULL,
	[Description2] [nvarchar](max) NULL,
	[Description3] [nvarchar](max) NULL,
	[Description4] [nvarchar](max) NULL,
 CONSTRAINT [PK_Prices] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Referances]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referances](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[Text] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Referances] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 13.11.2020 21:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Explanation] [nvarchar](max) NULL,
	[VideoPath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200623222720_initalMigration', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200624094738_addImagePath', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200624120828_addVideoClass', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200624163653_addHomeSettingsClass', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200624165927_mig', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625141219_addLayoutClass', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625163637_addIdentityClass', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625164652_mig1', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625174859_addNavbarItemsClass', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625183554_mig2', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625192309_mi3', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200626182337_addPhotoClass', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200629100433_migration', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200629111810_creatingDatabase', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200629113115_AddSpecification', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200706202005_addNewClasses', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200707213804_changedatabaseName', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200707223323_databaseNameMigration', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200805115358_migrationLayout', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200805124504_deleteArrangementClass', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200805143313_LayoutClass', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200805145628_updateLayout', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200808094202_FullLyoutClass', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200808112041_migrationFullPots', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200808190443_migrationProp', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809192529_migratiooonn', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809193241_migg', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809194236_onetoone', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809200508_oneToMany', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809204505_öigraton', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809204802_mig43', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809205644_mig19', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809205734_mig49', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809205935_mig50', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809211243_mig51', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809212638_mig52', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809213820_mig53', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811102930_DropFulLayout', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811111306_mig75', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811112703_addFullLyout', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811113112_migratonFullLayout', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811113411_migratin98', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811113637_mig97', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811114053_mig99', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811114309_migrationDropFullLayoutId', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811114751_mig100', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811115000_mig10', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811115323_mig103', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811123409_AddLayoutFullLayout', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811124355_LayoutsFullLayouts', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811124520_mig76', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811125327_mig59485483', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811125544_mig324', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811133541_mig39r482', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811134749_mig42233', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811135437_mig53454', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811135820_mig5968530', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811140132_öig45345', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811140657_mig4354', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811140901_mig454', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811141013_mig5453', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811183735_mig34343', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811183844_mig3423123', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811191852_mig3434', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811192210_mig35te', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811192635_mig43r4', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811201210_migre', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811203853_mig44', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200811234434_migratiogtv', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200812000936_mgii', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200812012656_miger', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200812142127_addPriceList', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200812155436_update-database', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200930210442_initialMigration', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201113170233_addReferances', N'3.1.5')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'79d0a33f-61f0-429c-8d27-c77594a1e6eb', N'Member', N'MEMBER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3ef557a4-bf78-4b52-8927-cbe1cefae386', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6925eca9-cd7f-46ea-2154-08d83f0c3508', N'3ef557a4-bf78-4b52-8927-cbe1cefae386')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cc23b8f9-cf3a-4e7a-a393-08d850c99c26', N'3ef557a4-bf78-4b52-8927-cbe1cefae386')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Mail], [Subject], [Message]) VALUES (N'6925eca9-cd7f-46ea-2154-08d83f0c3508', N'simsek', N'SIMSEK', N'gulennberk@gmail.com', N'GULENNBERK@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPxVPMzZWmfhitLRHZi1pE6r8he60CnCSI7j6n1OhFMvM+0U2wCOH6Rw9c4latVwqA==', N'ODNZKQQE7HZOD3JZGWRLQ2VHA7XDCVEN', N'd4fd47b6-ca34-4eff-b1a2-f4a7c2de26e2', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Mail], [Subject], [Message]) VALUES (N'cc23b8f9-cf3a-4e7a-a393-08d850c99c26', N'elif', N'ELIF', N'elifkucuk1002@gmail.com', N'ELIFKUCUK1002@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENKsn1/D5eZNAP9C7tjx6zuVFyHAwTP7p+acR6VpiuZ4DBQkFGnKqgSl01aO9hAtSg==', N'GH5I6FFOQW5WXUFDYWWIOSLVRJGBEAM4', N'14b75715-52d4-4ab1-9e4f-5232366b0161', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[FullLayouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'7be486ee-a451-43b8-cd2a-08d8403622a5', 1, CAST(N'2020-08-14T12:58:10.0125476' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'Mix&Mastering', N'Stüdyomuzda almış olduğumuz kayıtları yada kayıtlarını aldığınız şarkıların dengeli bir ses seviyesinde ve uygun tonda efeklendirilmesini yaparak özenli bir şekilde mixini gerçekleştiriyoruz. Kayıt edit ve mixi tamamlanmış olan kayıtların uygun platformlarda gereken ses seviyesini koruyarak master çıkışını gerçekleştiriyoruz. Online mix ve mastering için internet üzerinden yollamış olduğunuz ses kayıtlarınızın dosyalarını yine internet üzerinden mix ve mastering yapıp size geri yolluyorum.', N'WhatsApp Image 2020-06-28 at 13.18.18.jpeg')
INSERT [dbo].[FullLayouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'55feb8dd-bdc0-4857-cd2b-08d8403622a5', 1, CAST(N'2020-08-14T12:59:26.3208603' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'Elberk Ses Kayıt Stüdyosu', N'Elberk Müzik, şehrin merkezinde ancak ses kayıt için sessiz ve kusursuz bir akustiğe sahip ses kayıt stüdyomuz, dijital ve akustik kayıt sistemi üzerine kurulu yüksek kaliteli ses kayıt hizmeti vermektedir. Ses kayıt stüdyomuzda albümleriniz ya da demolarınızı hazırlamanız için gerekli ekipmanlarıyla birlikte huzurlu bir ortam sunuyoruz. Ses kayıtlarınızı stüdyomuz bünyesindeki ses kayıt mühendisimiz ile yapabilirsiniz.', N'WhatsApp Image 2020-06-28 at 13.18.17 (1).jpeg')
INSERT [dbo].[FullLayouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'5c8c3d9d-2851-420d-cd2c-08d8403622a5', 1, CAST(N'2020-09-15T02:44:52.2371859' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T02:44:54.3287020' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Davul Dersi', N'Bateri derslerimizin amacı davulu sevdirip, isteyen herkesin davul çalabileceğini göstermek ve kalıpların aksine ezbere ritim vurmak yerine davulun felsefesini öğreterek, öğrencinin özgün ritim algısını genişletmek. Stüdyomuzda kayıtlarda kullanılan bateride dersler verilmektedir. Bu sayede öğrencilerin kendi bateri kayıtlarını, istedikleri cover kayıtlarını stüdyo ortamında alıp onlara kendi seviyelerini dinleterek gelişim aşamalarını kendilerinin görmesini sağlıyoruz.', N'WhatsApp Image 2020-06-28 at 13.14.37.jpeg')
INSERT [dbo].[FullLayouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'f515f237-120d-43ce-b2b8-08d850e550b6', 1, CAST(N'2020-09-04T18:15:34.7995326' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'Test', N'test', N'WhatsApp Image 2020-08-20 at 00.34.08 (2).jpeg')
INSERT [dbo].[FullLayouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'accde6d4-c6f4-44fa-1812-08d850e5eaf3', 1, CAST(N'2020-09-04T18:19:37.5407020' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'Test', N'test', N'WhatsApp Image 2020-08-20 at 00.34.09 (1).jpeg')
INSERT [dbo].[FullLayouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'4f8b4fbd-2d65-467c-ad25-08d858e3c728', 2, CAST(N'2020-09-15T02:35:29.9058444' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T03:01:26.0496418' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Test28', N'test28', N'noimage.jpg')
INSERT [dbo].[FullLayouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'90120671-da88-4225-bf6f-08d858e75885', 1, CAST(N'2020-09-14T22:50:33.1476086' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'Test of English for International Communication Certificate', N'tesrt', N'WhatsApp Image 2020-06-28 at 13.15.39 (3).jpeg')
INSERT [dbo].[FullLayouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'cb28b584-b98e-43ea-8779-08d8590ba2e6', 2, CAST(N'2020-09-15T03:10:24.4781676' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T03:11:06.0635324' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Denemexxx', N'denme', N'WhatsApp Image 2020-06-28 at 19.02.03.jpeg')
INSERT [dbo].[FullLayouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'00969a6c-d816-4059-aa2a-08d8595913c8', 2, CAST(N'2020-09-15T12:24:12.7652038' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T12:24:18.1329971' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'13', N'1', N'noimage.jpg')
INSERT [dbo].[FullLayouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'dddeb71c-02df-478c-aa2b-08d8595913c8', 2, CAST(N'2020-09-15T12:25:18.4261730' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T12:25:37.3408245' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'13', N'1', N'noimage.jpg')
INSERT [dbo].[FullLayouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'c409c156-3750-4ffe-c7f3-08d85959eef5', 2, CAST(N'2020-09-15T12:30:19.9522699' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T12:30:27.6190060' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Test1', N'test', N'noimage.jpg')
INSERT [dbo].[FullLayouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'd3bd9981-a29e-47c8-766a-08d8595cc25f', 2, CAST(N'2020-09-15T12:50:43.3271487' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T12:50:49.0610280' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'deneme1', N'deneme', N'noimage.jpg')
INSERT [dbo].[FullLayouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'b98cb431-3200-41e1-766b-08d8595cc25f', 1, CAST(N'2020-09-15T12:57:11.3559168' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T12:57:11.4002744' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Deneme1', N'deneme1', N'noimage.jpg')
GO
INSERT [dbo].[Identities] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Name], [Objective], [ImagePath], [Specifications1], [Specifications2], [Specifications3], [Specifications4]) VALUES (N'f20264c2-010f-46c6-ec9d-08d84036a39c', 1, CAST(N'2020-08-14T12:57:34.2754685' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-08-14T12:57:34.3830700' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Berk Gülen', NULL, N'WhatsApp Image 2020-06-28 at 14.04.56.jpeg', N'Ses Mühendisi Galatasaray itm', N'Ses Mühendisi', N'Aranjör/Müzisyen', N'Her kesimden müzisyene ÇOK UYGUN FİYATLARA mix-mastering hizmeti')
INSERT [dbo].[Identities] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Name], [Objective], [ImagePath], [Specifications1], [Specifications2], [Specifications3], [Specifications4]) VALUES (N'086fcf53-a187-4e36-7b2f-08d88714be1a', 1, CAST(N'2020-11-12T17:10:43.1868412' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.39', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'Orhan Karpat', NULL, N'noimage.jpg', N'Mix Mastering Mühendisi', NULL, NULL, NULL)
GO
INSERT [dbo].[LayoutDetails] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [LayoutID], [FullLayoutID], [Description], [ImagePath], [Title]) VALUES (N'eb32c906-650d-4cc4-3b42-08d840388d16', 1, CAST(N'2020-08-14T12:58:10.3090676' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'7be486ee-a451-43b8-cd2a-08d8403622a5', N'7be486ee-a451-43b8-cd2a-08d8403622a5', N'Stüdyomuzda almış olduğumuz kayıtları yada kayıtlarını aldığınız şarkıların dengeli bir ses seviyesinde ve uygun tonda efeklendirilmesini yaparak özenli bir şekilde mixini gerçekleştiriyoruz. Kayıt edit ve mixi tamamlanmış olan kayıtların uygun platformlarda gereken ses seviyesini koruyarak master çıkışını gerçekleştiriyoruz. Online mix ve mastering için internet üzerinden yollamış olduğunuz ses kayıtlarınızın dosyalarını yine internet üzerinden mix ve mastering yapıp size geri yolluyorum.', N'WhatsApp Image 2020-06-28 at 13.18.18.jpeg', N'Mix&Mastering')
INSERT [dbo].[LayoutDetails] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [LayoutID], [FullLayoutID], [Description], [ImagePath], [Title]) VALUES (N'683e627f-8942-4b87-3b43-08d840388d16', 1, CAST(N'2020-08-14T12:58:41.8715916' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-04T20:14:01.1183477' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'5c8c3d9d-2851-420d-cd2c-08d8403622a5', N'5c8c3d9d-2851-420d-cd2c-08d8403622a5', N'Bateri derslerimizin amacı davulu sevdirip, isteyen herkesin davul çalabileceğini göstermek ve kalıpların aksine ezbere ritim vurmak yerine davulun felsefesini öğreterek, öğrencinin özgün ritim algısını genişletmek. Stüdyomuzda kayıtlarda kullanılan bateride dersler verilmektedir. Bu sayede öğrencilerin kendi bateri kayıtlarını, istedikleri cover kayıtlarını stüdyo ortamında alıp onlara kendi seviyelerini dinleterek gelişim aşamalarını kendilerinin görmesini sağlıyoruz.', N'WhatsApp Image 2020-07-07 at 22.32.43.jpeg', N'Bateri Dersi')
INSERT [dbo].[LayoutDetails] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [LayoutID], [FullLayoutID], [Description], [ImagePath], [Title]) VALUES (N'6bca6ba3-d66e-4697-3b44-08d840388d16', 1, CAST(N'2020-08-14T12:59:26.3559238' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'55feb8dd-bdc0-4857-cd2b-08d8403622a5', N'55feb8dd-bdc0-4857-cd2b-08d8403622a5', N'Elberk Müzik, şehrin merkezinde ancak ses kayıt için sessiz ve kusursuz bir akustiğe sahip ses kayıt stüdyomuz, dijital ve akustik kayıt sistemi üzerine kurulu yüksek kaliteli ses kayıt hizmeti vermektedir. Ses kayıt stüdyomuzda albümleriniz ya da demolarınızı hazırlamanız için gerekli ekipmanlarıyla birlikte huzurlu bir ortam sunuyoruz. Ses kayıtlarınızı stüdyomuz bünyesindeki ses kayıt mühendisimiz ile yapabilirsiniz.', N'WhatsApp Image 2020-06-28 at 13.18.17 (1).jpeg', N'Elberk Ses Kayıt Stüdyosu')
INSERT [dbo].[LayoutDetails] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [LayoutID], [FullLayoutID], [Description], [ImagePath], [Title]) VALUES (N'50af40af-9562-4195-96a5-08d850e583a6', 1, CAST(N'2020-09-04T18:16:35.9775070' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'f515f237-120d-43ce-b2b8-08d850e550b6', N'f515f237-120d-43ce-b2b8-08d850e550b6', N'test', N'WhatsApp Image 2020-08-20 at 00.34.08 (2).jpeg', N'Test')
INSERT [dbo].[LayoutDetails] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [LayoutID], [FullLayoutID], [Description], [ImagePath], [Title]) VALUES (N'b6792bfb-21d3-4f01-adea-08d850e5efee', 1, CAST(N'2020-09-04T18:19:37.6701875' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'accde6d4-c6f4-44fa-1812-08d850e5eaf3', N'accde6d4-c6f4-44fa-1812-08d850e5eaf3', N'test', N'WhatsApp Image 2020-08-20 at 00.34.09 (1).jpeg', N'Test')
INSERT [dbo].[LayoutDetails] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [LayoutID], [FullLayoutID], [Description], [ImagePath], [Title]) VALUES (N'0f846bdb-08f5-4364-05b6-08d858e3d086', 1, CAST(N'2020-09-14T22:24:35.2897368' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'4f8b4fbd-2d65-467c-ad25-08d858e3c728', N'4f8b4fbd-2d65-467c-ad25-08d858e3c728', N'test', N'WhatsApp Image 2020-06-28 at 13.14.37.jpeg', N'Test')
INSERT [dbo].[LayoutDetails] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [LayoutID], [FullLayoutID], [Description], [ImagePath], [Title]) VALUES (N'36c51afc-acda-468a-7e19-08d858e78afa', 1, CAST(N'2020-09-14T22:51:16.5774004' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'90120671-da88-4225-bf6f-08d858e75885', N'90120671-da88-4225-bf6f-08d858e75885', N'tesrt', N'WhatsApp Image 2020-06-28 at 13.15.39 (3).jpeg', N'Test of English for International Communication Certificate')
INSERT [dbo].[LayoutDetails] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [LayoutID], [FullLayoutID], [Description], [ImagePath], [Title]) VALUES (N'a9a6b020-6075-4717-12cd-08d8590bb258', 1, CAST(N'2020-09-15T03:10:04.4836574' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'cb28b584-b98e-43ea-8779-08d8590ba2e6', N'cb28b584-b98e-43ea-8779-08d8590ba2e6', N'denme', N'WhatsApp Image 2020-06-28 at 13.14.33.jpeg', N'Deneme')
INSERT [dbo].[LayoutDetails] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [LayoutID], [FullLayoutID], [Description], [ImagePath], [Title]) VALUES (N'c32fc6a4-8d58-454f-f3ac-08d859591800', 1, CAST(N'2020-09-15T12:24:06.2850874' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'00969a6c-d816-4059-aa2a-08d8595913c8', N'00969a6c-d816-4059-aa2a-08d8595913c8', N'1', N'noimage.jpg', N'1')
INSERT [dbo].[LayoutDetails] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [LayoutID], [FullLayoutID], [Description], [ImagePath], [Title]) VALUES (N'8db2a053-abe3-4ce4-f3ad-08d859591800', 1, CAST(N'2020-09-15T12:25:18.4555947' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'dddeb71c-02df-478c-aa2b-08d8595913c8', N'dddeb71c-02df-478c-aa2b-08d8595913c8', N'1', N'noimage.jpg', N'13')
INSERT [dbo].[LayoutDetails] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [LayoutID], [FullLayoutID], [Description], [ImagePath], [Title]) VALUES (N'825e1089-ae0f-4254-ffcd-08d85959f2f0', 1, CAST(N'2020-09-15T12:30:13.6340562' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'c409c156-3750-4ffe-c7f3-08d85959eef5', N'c409c156-3750-4ffe-c7f3-08d85959eef5', N'test', N'noimage.jpg', N'Test')
INSERT [dbo].[LayoutDetails] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [LayoutID], [FullLayoutID], [Description], [ImagePath], [Title]) VALUES (N'8690d0eb-8ce4-4b96-4d33-08d8595cc8aa', 1, CAST(N'2020-09-15T12:50:31.1603297' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'd3bd9981-a29e-47c8-766a-08d8595cc25f', N'd3bd9981-a29e-47c8-766a-08d8595cc25f', N'deneme', N'noimage.jpg', N'deneme')
INSERT [dbo].[LayoutDetails] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [LayoutID], [FullLayoutID], [Description], [ImagePath], [Title]) VALUES (N'b9e6cc3a-586d-43bf-4d34-08d8595cc8aa', 1, CAST(N'2020-09-15T12:54:37.0142204' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'b98cb431-3200-41e1-766b-08d8595cc25f', N'b98cb431-3200-41e1-766b-08d8595cc25f', N'deneme', N'noimage.jpg', N'Deneme')
GO
INSERT [dbo].[Layouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'7be486ee-a451-43b8-cd2a-08d8403622a5', 1, CAST(N'2020-08-16T14:47:54.5560260' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.45', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-08-16T14:47:54.6940409' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.45', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Mix&Mastering', N'Birinci sınıf teknik ekipman ve deneyimli ses teknik ekibimizle kaliteli, profesyonel miks ve mastering hizmeti.', N'WhatsApp Image 2020-06-28 at 13.18.18 (2).jpeg')
INSERT [dbo].[Layouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'55feb8dd-bdc0-4857-cd2b-08d8403622a5', 1, CAST(N'2020-08-16T14:48:19.6744452' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.45', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-08-16T14:48:19.6910800' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.45', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Ses Kayıt Stüdyosu', N'Yüksek standartlı stüdyo ortamımızda profesyonel ekipmanlarımız ve tecrübeli ses mühendislerimiz eşliğinde ses kayıt hizmeti vermekteyiz.', N'WhatsApp Image 2020-06-28 at 13.18.17.jpeg')
INSERT [dbo].[Layouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'5c8c3d9d-2851-420d-cd2c-08d8403622a5', 1, CAST(N'2020-09-16T00:29:48.8061098' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-16T00:29:49.0385448' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Bateri Dersi', N'İleri ve başlangıç seviye davul dersleri', N'WhatsApp Image 2020-08-25 at 21.11.36.jpeg')
INSERT [dbo].[Layouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'f515f237-120d-43ce-b2b8-08d850e550b6', 2, CAST(N'2020-09-04T18:15:10.5480677' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-04T18:18:16.7672885' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Test', N'test', N'WhatsApp Image 2020-08-20 at 00.33.58.jpeg')
INSERT [dbo].[Layouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'accde6d4-c6f4-44fa-1812-08d850e5eaf3', 2, CAST(N'2020-09-04T18:19:29.3345967' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-04T18:19:50.4567267' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Engineer', N'test', N'WhatsApp Image 2020-08-20 at 00.33.58.jpeg')
INSERT [dbo].[Layouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'4f8b4fbd-2d65-467c-ad25-08d858e3c728', 2, CAST(N'2020-09-14T22:24:19.6193687' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T03:08:39.8568781' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Deneme', N'deneme', N'WhatsApp Image 2020-06-28 at 13.14.33.jpeg')
INSERT [dbo].[Layouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'90120671-da88-4225-bf6f-08d858e75885', 2, CAST(N'2020-09-14T22:49:52.0232197' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-14T22:51:26.1126837' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'x', N'xxxxx', N'IMG_4249.jpg')
INSERT [dbo].[Layouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'cb28b584-b98e-43ea-8779-08d8590ba2e6', 2, CAST(N'2020-09-15T03:09:38.5607490' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T03:11:18.8360539' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Bateri Dersi xx', N'xxxxx', N'WhatsApp Image 2020-06-28 at 13.14.37.jpeg')
INSERT [dbo].[Layouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'00969a6c-d816-4059-aa2a-08d8595913c8', 2, CAST(N'2020-09-15T12:23:59.2725058' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T12:25:07.4847513' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Deneme', N'deneme', N'noimage.jpg')
INSERT [dbo].[Layouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'dddeb71c-02df-478c-aa2b-08d8595913c8', 2, CAST(N'2020-09-15T12:25:13.2064387' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T12:29:10.4426803' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'1', N'1', N'noimage.jpg')
INSERT [dbo].[Layouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'c409c156-3750-4ffe-c7f3-08d85959eef5', 2, CAST(N'2020-09-15T12:30:06.9252673' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T12:50:14.1930285' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Deneme', N'deneme', N'WhatsApp Image 2020-06-28 at 13.14.37.jpeg')
INSERT [dbo].[Layouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'd3bd9981-a29e-47c8-766a-08d8595cc25f', 2, CAST(N'2020-09-15T12:50:20.5950993' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T12:57:33.1462803' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Deneme', N'deneme', N'noimage.jpg')
INSERT [dbo].[Layouts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Description], [ImagePath]) VALUES (N'b98cb431-3200-41e1-766b-08d8595cc25f', 2, CAST(N'2020-09-15T12:53:44.5061562' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-09-15T12:57:35.5375665' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.38', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Davul Dersi', N'davul', N'noimage.jpg')
GO
INSERT [dbo].[NavbarItems] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [ImagePath], [Title], [Description], [Quantity]) VALUES (N'11b6badd-2f24-43de-c382-08d84035cbe6', 1, CAST(N'2020-08-14T12:38:27.2519692' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'WhatsApp Image 2020-06-28 at 13.15.42.jpeg', N'ElBerk Müzik', N'Ses Kayıt ve Mix Mastering Stüdyosu', 0)
INSERT [dbo].[NavbarItems] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [ImagePath], [Title], [Description], [Quantity]) VALUES (N'a95ad9ca-64a9-44e5-c383-08d84035cbe6', 1, CAST(N'2020-08-14T12:39:03.7690791' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'WhatsApp Image 2020-06-28 at 13.18.18 (1).jpeg', N'Mix/Mastering', N'Online Mix Mastering Hizmeti', 0)
INSERT [dbo].[NavbarItems] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [ImagePath], [Title], [Description], [Quantity]) VALUES (N'64a53a97-4b1c-4368-c384-08d84035cbe6', 1, CAST(N'2020-08-14T12:39:43.4948462' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'WhatsApp Image 2020-06-28 at 13.18.16.jpeg', N'Bateri Dersleri', N'Başlangıç ve ileri seviye davul dersleri', 0)
GO
INSERT [dbo].[Photos] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [ImagePath]) VALUES (N'4b7a44d1-edbd-4161-15e6-08d84038f395', 1, CAST(N'2020-08-14T13:01:02.2212576' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'13E95F49-C902-4D26-B715-B88F3C99927A.jpeg')
INSERT [dbo].[Photos] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [ImagePath]) VALUES (N'ab7373da-5749-4197-15e7-08d84038f395', 1, CAST(N'2020-08-14T13:01:10.5102976' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'F815A783-1494-4A31-ABD0-DECAE57FD3B4.jpeg')
INSERT [dbo].[Photos] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [ImagePath]) VALUES (N'ba22bc6a-dc54-4a4e-15e8-08d84038f395', 1, CAST(N'2020-08-14T13:01:47.1372212' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'WhatsApp Image 2020-06-28 at 13.18.17 (1).jpeg')
INSERT [dbo].[Photos] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [ImagePath]) VALUES (N'e96acc5d-c208-49b5-15e9-08d84038f395', 1, CAST(N'2020-08-14T13:01:58.8618384' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'WhatsApp Image 2020-06-28 at 13.15.15.jpeg')
INSERT [dbo].[Photos] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [ImagePath]) VALUES (N'2b596e16-9498-4968-15ea-08d84038f395', 1, CAST(N'2020-08-14T13:02:10.5049729' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'WhatsApp Image 2020-06-29 at 19.39.43.jpeg')
INSERT [dbo].[Photos] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [ImagePath]) VALUES (N'7068c83c-2648-4d2c-15eb-08d84038f395', 1, CAST(N'2020-08-14T13:02:26.2581694' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'WhatsApp Image 2020-06-28 at 13.18.18 (3).jpeg')
INSERT [dbo].[Photos] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [ImagePath]) VALUES (N'db43d3aa-f91c-4f45-15ec-08d84038f395', 2, CAST(N'2020-08-14T13:02:45.3189115' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-11-12T16:53:57.8873866' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.39', N'DESKTOP-2UBTK8M\Elif', N'admin', N'WhatsApp Image 2020-06-28 at 13.15.39 (3).jpeg')
INSERT [dbo].[Photos] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [ImagePath]) VALUES (N'5ed9ac5c-6ea5-4027-b5ad-08d887126f8b', 1, CAST(N'2020-11-12T16:54:12.3697480' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.39', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'WhatsApp Image 2020-07-07 at 22.33.22.jpeg')
GO
INSERT [dbo].[Posts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Body], [ImagePath]) VALUES (N'a7910396-96ca-417b-a89e-08d84039427c', 2, CAST(N'2020-08-14T13:03:14.5954945' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-10-05T16:25:30.3766897' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.34', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Blog Sayfamızda En Yakın Zamanda Görüşmek Üzere', NULL, N'WhatsApp Image 2020-07-07 at 22.31.53.jpeg')
INSERT [dbo].[Posts] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Title], [Body], [ImagePath]) VALUES (N'2b484c82-7cfe-4e16-5568-08d86932c656', 2, CAST(N'2020-10-05T16:30:07.0818937' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.34', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-10-05T16:30:19.2954637' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.34', N'DESKTOP-2UBTK8M\Elif', N'admin', N'x', N'x', N'WhatsApp Image 2020-06-28 at 13.14.33.jpeg')
GO
INSERT [dbo].[Prices] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [SinglePrice], [Title], [Description1], [Description2], [Description3], [Description4]) VALUES (N'060fe1a3-e635-4c0f-a777-08d83f824f6d', 2, CAST(N'2020-08-13T15:13:38.4619400' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.36', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-08-14T13:03:27.9950931' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', N'14tl', N'Deneme', N'mix mastering fiyatı', NULL, NULL, NULL)
INSERT [dbo].[Prices] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [SinglePrice], [Title], [Description1], [Description2], [Description3], [Description4]) VALUES (N'99666984-507e-407a-04d5-08d84039bad2', 1, CAST(N'2020-08-14T13:06:36.5188336' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'500 TL', N'MIX', N'14 kanal+ 800 TL', NULL, NULL, NULL)
INSERT [dbo].[Prices] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [SinglePrice], [Title], [Description1], [Description2], [Description3], [Description4]) VALUES (N'385eeb81-3b31-4c48-04d6-08d84039bad2', 1, CAST(N'2020-08-14T13:07:05.8600547' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'250 TL', N'MASTERING', N'YouTube', N'Spotify', N'Apple Music', N'Diğer')
INSERT [dbo].[Prices] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [SinglePrice], [Title], [Description1], [Description2], [Description3], [Description4]) VALUES (N'0747cd21-d555-4af0-04d7-08d84039bad2', 1, CAST(N'2020-08-14T13:07:28.4132551' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'1000 TL', N'SES KAYIT', N'Saatlik ses kayıt ücreti', NULL, NULL, NULL)
INSERT [dbo].[Prices] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [SinglePrice], [Title], [Description1], [Description2], [Description3], [Description4]) VALUES (N'302337a2-865e-4c1e-04d8-08d84039bad2', 1, CAST(N'2020-08-14T13:07:45.6513341' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.37', N'DESKTOP-2UBTK8M\Elif', N'admin', NULL, NULL, NULL, NULL, NULL, N'1500 TL', N'KAYIT+ MIX&MASTERING', N'Saatlik ücrettir', NULL, NULL, NULL)
GO
INSERT [dbo].[Referances] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Text], [Link], [Photo]) VALUES (N'dd91ba83-2d2f-49db-dc66-08d887fb8245', 1, CAST(N'2020-11-13T21:00:56.8023312' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.36', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-11-13T21:00:56.9332908' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.36', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Çağrı Gülennnn', N'https://www.klipsanat.com/', N'WhatsApp Image 2020-08-25 at 21.11.36.jpeg')
INSERT [dbo].[Referances] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Text], [Link], [Photo]) VALUES (N'8f31f3ac-ab4a-4f82-f063-08d887fd5d89', 2, CAST(N'2020-11-13T20:55:53.9155381' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.36', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-11-13T20:55:58.9982937' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.36', N'DESKTOP-2UBTK8M\Elif', N'admin', N'xxxx', N'xxxxx', N'noimage.jpg')
INSERT [dbo].[Referances] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [Text], [Link], [Photo]) VALUES (N'a942dcf4-7f84-4d17-4136-08d888003def', 1, CAST(N'2020-11-13T21:17:19.6384314' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.36', N'DESKTOP-2UBTK8M\Elif', N'admin', CAST(N'2020-11-13T21:17:19.7097379' AS DateTime2), N'DESKTOP-2UBTK8M', N'192.168.1.36', N'DESKTOP-2UBTK8M\Elif', N'admin', N'Berk Gülen', N'https://elberkmuzik.com/', N'WhatsApp Image 2020-06-28 at 13.13.22.jpeg')
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 13.11.2020 21:35:31 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 13.11.2020 21:35:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 13.11.2020 21:35:31 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 13.11.2020 21:35:31 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 13.11.2020 21:35:31 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 13.11.2020 21:35:31 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 13.11.2020 21:35:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LayoutDetails_FullLayoutID]    Script Date: 13.11.2020 21:35:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_LayoutDetails_FullLayoutID] ON [dbo].[LayoutDetails]
(
	[FullLayoutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LayoutDetails_LayoutID]    Script Date: 13.11.2020 21:35:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_LayoutDetails_LayoutID] ON [dbo].[LayoutDetails]
(
	[LayoutID] ASC
)
WHERE ([LayoutID] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NavbarItems] ADD  DEFAULT (CONVERT([smallint],(0))) FOR [Quantity]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[LayoutDetails]  WITH CHECK ADD  CONSTRAINT [FK_LayoutDetails_FullLayouts_FullLayoutID] FOREIGN KEY([FullLayoutID])
REFERENCES [dbo].[FullLayouts] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LayoutDetails] CHECK CONSTRAINT [FK_LayoutDetails_FullLayouts_FullLayoutID]
GO
ALTER TABLE [dbo].[LayoutDetails]  WITH CHECK ADD  CONSTRAINT [FK_LayoutDetails_Layouts_LayoutID] FOREIGN KEY([LayoutID])
REFERENCES [dbo].[Layouts] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LayoutDetails] CHECK CONSTRAINT [FK_LayoutDetails_Layouts_LayoutID]
GO
USE [master]
GO
ALTER DATABASE [elberkmu_ElBerkStudyoDB] SET  READ_WRITE 
GO

