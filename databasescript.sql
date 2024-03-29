USE [master]
GO
/****** Object:  Database [13th Aug CLoud PT Immersive]    Script Date: 19-10-2019 18:09:58 ******/
CREATE DATABASE [13th Aug CLoud PT Immersive]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'13th Aug CLoud PT Immersive', FILENAME = N'D:\SQL Server 2012\Data\13th Aug CLoud PT Immersive.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'13th Aug CLoud PT Immersive_log', FILENAME = N'D:\SQL Server 2012\Data\13th Aug CLoud PT Immersive_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [13th Aug CLoud PT Immersive].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET ARITHABORT OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET  DISABLE_BROKER 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET RECOVERY FULL 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET  MULTI_USER 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET DB_CHAINING OFF 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'13th Aug CLoud PT Immersive', N'ON'
GO
USE [13th Aug CLoud PT Immersive]
GO
/****** Object:  User [sqluser]    Script Date: 19-10-2019 18:09:58 ******/
CREATE USER [sqluser] FOR LOGIN [sqluser] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [sqluser]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [sqluser]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [sqluser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [sqluser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [sqluser]
GO
/****** Object:  Schema [PecuniaTeamF]    Script Date: 19-10-2019 18:09:59 ******/
CREATE SCHEMA [PecuniaTeamF]
GO
/****** Object:  Schema [purchase_17]    Script Date: 19-10-2019 18:09:59 ******/
CREATE SCHEMA [purchase_17]
GO
/****** Object:  Schema [sales]    Script Date: 19-10-2019 18:09:59 ******/
CREATE SCHEMA [sales]
GO
/****** Object:  Schema [sqluser]    Script Date: 19-10-2019 18:09:59 ******/
CREATE SCHEMA [sqluser]
GO
/****** Object:  Schema [Team_D]    Script Date: 19-10-2019 18:09:59 ******/
CREATE SCHEMA [Team_D]
GO
/****** Object:  Schema [TeamA]    Script Date: 19-10-2019 18:09:59 ******/
CREATE SCHEMA [TeamA]
GO
/****** Object:  Schema [TeamB]    Script Date: 19-10-2019 18:09:59 ******/
CREATE SCHEMA [TeamB]
GO
/****** Object:  Schema [TeamC]    Script Date: 19-10-2019 18:09:59 ******/
CREATE SCHEMA [TeamC]
GO
/****** Object:  Schema [TeamE]    Script Date: 19-10-2019 18:09:59 ******/
CREATE SCHEMA [TeamE]
GO
/****** Object:  Schema [TeamF]    Script Date: 19-10-2019 18:09:59 ******/
CREATE SCHEMA [TeamF]
GO
/****** Object:  UserDefinedDataType [dbo].[Email]    Script Date: 19-10-2019 18:09:59 ******/
CREATE TYPE [dbo].[Email] FROM [varchar](40) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Password]    Script Date: 19-10-2019 18:09:59 ******/
CREATE TYPE [dbo].[Password] FROM [varchar](15) NULL
GO
/****** Object:  UserDefinedDataType [sqluser].[Location]    Script Date: 19-10-2019 18:09:59 ******/
CREATE TYPE [sqluser].[Location] FROM [varchar](500) NULL
GO
/****** Object:  UserDefinedDataType [sqluser].[TypeAge]    Script Date: 19-10-2019 18:09:59 ******/
CREATE TYPE [sqluser].[TypeAge] FROM [int] NULL
GO
/****** Object:  UserDefinedDataType [sqluser].[TypeName]    Script Date: 19-10-2019 18:09:59 ******/
CREATE TYPE [sqluser].[TypeName] FROM [varchar](100) NULL
GO
USE [13th Aug CLoud PT Immersive]
GO
/****** Object:  Sequence [sqluser].[mySeq]    Script Date: 19-10-2019 18:09:59 ******/
CREATE SEQUENCE [sqluser].[mySeq] 
 AS [bigint]
 START WITH 10
 INCREMENT BY 5
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[vaishali]    Script Date: 19-10-2019 18:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vaishali](
	[name] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sqluser].[AddPatient]    Script Date: 19-10-2019 18:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sqluser].[AddPatient](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[Pname] [varchar](50) NULL,
	[age] [int] NOT NULL,
	[gender] [varchar](1) NOT NULL,
	[date_of_appointment] [datetime] NOT NULL,
	[email] [varchar](50) NULL,
	[problem] [varchar](50) NOT NULL,
	[specialist] [varchar](1) NULL,
	[staffid] [int] NULL,
	[Staffname] [varchar](10) NULL,
	[prescription] [varchar](100) NULL,
	[report] [varchar](100) NULL,
	[bill] [int] NOT NULL,
	[Recheckupdate] [datetime] NULL,
	[Resheduledate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sqluser].[Addstaff]    Script Date: 19-10-2019 18:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sqluser].[Addstaff](
	[staffid] [int] IDENTITY(1,1) NOT NULL,
	[Staffname] [varchar](30) NULL,
	[Emailid] [varchar](50) NOT NULL,
	[MobileNo] [varchar](13) NOT NULL,
	[Gender] [varchar](1) NULL,
	[Pwd] [varchar](10) NOT NULL,
	[Address] [varchar](50) NULL,
	[Position] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[staffid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sqluser].[admin]    Script Date: 19-10-2019 18:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sqluser].[admin](
	[UserName] [varchar](20) NULL,
	[Password] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sqluser].[Bill]    Script Date: 19-10-2019 18:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sqluser].[Bill](
	[Bno] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[sno] [int] NULL,
	[BillingDate] [datetime] NOT NULL,
	[SName] [varchar](30) NULL,
	[ConsultancyFee] [int] NOT NULL,
	[Test] [varchar](1) NULL,
	[testFee] [int] NOT NULL,
	[subtotal] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Bno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sqluser].[EnglishStudents1]    Script Date: 19-10-2019 18:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sqluser].[EnglishStudents1](
	[Id] [uniqueidentifier] NOT NULL,
	[StudentName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sqluser].[Lab]    Script Date: 19-10-2019 18:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sqluser].[Lab](
	[Sno] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[Name] [varchar](50) NOT NULL,
	[Test] [varchar](1) NULL,
	[SName] [varchar](30) NULL,
	[report] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sqluser].[Products]    Script Date: 19-10-2019 18:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sqluser].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[QtyAvailable] [smallint] NULL,
	[UnitPrice] [money] NULL,
	[InventoryValue]  AS ([QtyAvailable]*[UnitPrice])
) ON [PRIMARY]
GO
/****** Object:  Table [sqluser].[SimpleDemo]    Script Date: 19-10-2019 18:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sqluser].[SimpleDemo](
	[Node] [hierarchyid] NOT NULL,
	[Geographical Name] [nvarchar](30) NOT NULL,
	[Geographical Type] [nvarchar](9) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Team_D].[Distributor]    Script Date: 19-10-2019 18:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team_D].[Distributor](
	[DistributorID] [uniqueidentifier] NOT NULL,
	[DistributorName] [varchar](40) NOT NULL,
	[DistributorMobile] [char](10) NOT NULL,
	[DistributorEmail] [varchar](30) NOT NULL,
	[DistributorPassword] [varchar](15) NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
 CONSTRAINT [Distributor_pk] PRIMARY KEY CLUSTERED 
(
	[DistributorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[DistributorMobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[DistributorName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[DistributorPassword] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[DistributorEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Team_D].[DistributorAddress]    Script Date: 19-10-2019 18:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team_D].[DistributorAddress](
	[DistributoraddressID] [uniqueidentifier] NOT NULL,
	[DistributorID] [uniqueidentifier] NULL,
	[AddressLine1] [varchar](30) NOT NULL,
	[AddressLine2] [varchar](30) NULL,
	[Pincode] [char](6) NULL,
	[City] [varchar](10) NULL,
	[DistributorState] [varchar](10) NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
 CONSTRAINT [Distributoraddress_pk] PRIMARY KEY CLUSTERED 
(
	[DistributoraddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[AddressLine1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Team_D].[Product]    Script Date: 19-10-2019 18:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team_D].[Product](
	[ProductID] [uniqueidentifier] NOT NULL,
	[ProductName] [varchar](30) NOT NULL,
	[ProductCode] [varchar](5) NOT NULL,
	[ProductUnitPrice] [decimal](18, 0) NOT NULL,
	[ProductType] [varchar](12) NOT NULL,
	[CreationDateTime] [datetime2](7) NULL,
	[LastUpdateDateTime] [datetime2](7) NULL,
 CONSTRAINT [ProductPK] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [PCodeUnique] UNIQUE NONCLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Team_D].[ProductOrderDetails]    Script Date: 19-10-2019 18:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team_D].[ProductOrderDetails](
	[ProductOrderDetailID] [uniqueidentifier] NOT NULL,
	[ProductOrderID] [uniqueidentifier] NOT NULL,
	[ProductID] [uniqueidentifier] NOT NULL,
	[ProductTotalPrice] [decimal](18, 0) NULL,
	[ProductQuantity] [decimal](18, 0) NULL,
	[ProductUnitPrice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductOrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Team_D].[ProductOrders]    Script Date: 19-10-2019 18:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team_D].[ProductOrders](
	[ProductOrderID] [uniqueidentifier] NOT NULL,
	[ProductOrderDate] [datetime] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[DistributorID] [uniqueidentifier] NULL,
	[ProductOrderAmount] [decimal](18, 0) NULL,
	[PaymentStatus] [bit] NOT NULL,
	[TotalQuantity] [decimal](18, 0) NULL,
	[DistributorAddressID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Team_D].[RawMaterial]    Script Date: 19-10-2019 18:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team_D].[RawMaterial](
	[RawMaterialID] [uniqueidentifier] NOT NULL,
	[RawMaterialName] [varchar](30) NOT NULL,
	[RawMaterialCode] [varchar](5) NOT NULL,
	[RawMaterialUnitPrice] [decimal](18, 0) NOT NULL,
	[CreationDateTime] [datetime2](7) NULL,
	[LastUpdateDateTime] [datetime2](7) NULL,
 CONSTRAINT [RawMaterialPK] PRIMARY KEY CLUSTERED 
(
	[RawMaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [RMCodeUnique] UNIQUE NONCLUSTERED 
(
	[RawMaterialCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Team_D].[Rawmaterialorder]    Script Date: 19-10-2019 18:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team_D].[Rawmaterialorder](
	[CreationDateTime] [datetime] NULL,
	[LastmodifiedDateTime] [datetime] NULL,
	[RawMaterialOrderID] [uniqueidentifier] NOT NULL,
	[SupplierID] [uniqueidentifier] NOT NULL,
	[RawMaterialTotalPrice] [decimal](18, 0) NULL,
	[RawMaterialTotalQuantity] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[RawMaterialOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Team_D].[Rawmaterialorderdetails]    Script Date: 19-10-2019 18:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team_D].[Rawmaterialorderdetails](
	[RawMaterialOrderDetailID] [uniqueidentifier] NULL,
	[RawMaterialOrderID] [uniqueidentifier] NULL,
	[RawMaterialID] [uniqueidentifier] NULL,
	[RawMaterialUnitPrice] [decimal](18, 0) NULL,
	[RawMaterialQuantity] [decimal](18, 0) NULL,
	[RawMaterialTotalPrice] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Team_D].[supplier]    Script Date: 19-10-2019 18:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team_D].[supplier](
	[supplierID] [uniqueidentifier] NOT NULL,
	[SupplierName] [varchar](40) NOT NULL,
	[SupplierMobile] [char](10) NOT NULL,
	[SupplierEmail] [varchar](50) NOT NULL,
	[SupplierPassword] [varchar](15) NOT NULL,
	[creationDateTime] [datetime] NULL,
	[lastModifiedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SupplierEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Team_D].[supplierAddress]    Script Date: 19-10-2019 18:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team_D].[supplierAddress](
	[supplierAddressID] [uniqueidentifier] NOT NULL,
	[supplierID] [uniqueidentifier] NOT NULL,
	[AddressLine1] [varchar](255) NOT NULL,
	[AddressLine2] [varchar](255) NOT NULL,
	[PinCode] [char](6) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[creationDateTime] [datetime] NULL,
	[lastModifiedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PinCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamA].[Addresses]    Script Date: 19-10-2019 18:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamA].[Addresses](
	[AddressID] [uniqueidentifier] NOT NULL,
	[RetailerID] [uniqueidentifier] NOT NULL,
	[Line1] [varchar](100) NOT NULL,
	[Line2] [varchar](100) NULL,
	[City] [varchar](20) NOT NULL,
	[Pincode] [char](6) NOT NULL,
	[State] [varchar](15) NOT NULL,
	[MobileNo] [char](10) NOT NULL,
	[CreationDateTime] [datetime] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_TeamA_Addresses_AddressID] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_MobileNo] UNIQUE NONCLUSTERED 
(
	[MobileNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamA].[Admins]    Script Date: 19-10-2019 18:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamA].[Admins](
	[AdminID] [uniqueidentifier] NOT NULL,
	[AdminName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[CreationDateTime] [datetime] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_TeamA_Admin_AdminID] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamA].[OrderDetails]    Script Date: 19-10-2019 18:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamA].[OrderDetails](
	[OrderDetailID] [uniqueidentifier] NOT NULL,
	[OrderID] [uniqueidentifier] NOT NULL,
	[ProductID] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NOT NULL,
	[DiscountedUnitPrice] [decimal](15, 2) NOT NULL,
	[TotalPrice] [decimal](15, 2) NOT NULL,
	[GiftPacking] [bit] NULL,
	[AddressID] [uniqueidentifier] NOT NULL,
	[CurrentStatus] [varchar](15) NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_TeamA_OrderDetails_OrderDetailID] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamA].[Orders]    Script Date: 19-10-2019 18:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamA].[Orders](
	[OrderID] [uniqueidentifier] NOT NULL,
	[RetailerID] [uniqueidentifier] NULL,
	[SalespersonID] [uniqueidentifier] NULL,
	[TotalQuantity] [int] NOT NULL,
	[TotalAmount] [decimal](15, 2) NOT NULL,
	[ChannelOfSale] [char](7) NOT NULL,
	[OrderDateTime] [datetime] NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_TeamA_Orders_OrderID] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamA].[Products]    Script Date: 19-10-2019 18:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamA].[Products](
	[ProductID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Category] [varchar](30) NOT NULL,
	[Stock] [int] NULL,
	[Size] [varchar](4) NULL,
	[Colour] [varchar](20) NOT NULL,
	[TechnicalSpecifications] [varchar](5000) NOT NULL,
	[CostPrice] [decimal](15, 2) NULL,
	[SellingPrice] [decimal](15, 2) NULL,
	[DiscountPercentage] [decimal](15, 2) NULL,
	[Target] [decimal](15, 2) NULL,
	[Bonus] [decimal](15, 2) NULL,
	[Salary] [decimal](15, 2) NULL,
 CONSTRAINT [pk_TeamA_Products_ProductID] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamA].[Retailers]    Script Date: 19-10-2019 18:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamA].[Retailers](
	[RetailerID] [uniqueidentifier] NOT NULL,
	[RetailerName] [varchar](50) NOT NULL,
	[RetailerMobile] [char](10) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[RetailerPassword] [varchar](16) NOT NULL,
	[RetailerDiscountPercentage] [decimal](2, 2) NULL,
	[CreationDateTime] [datetime] NOT NULL,
	[ModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_TeamA_Retailers_RetailerID] PRIMARY KEY CLUSTERED 
(
	[RetailerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_RetailerDiscountPercentage] UNIQUE NONCLUSTERED 
(
	[RetailerDiscountPercentage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_RetailerEmail] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_RetailerMobile] UNIQUE NONCLUSTERED 
(
	[RetailerMobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_RetailerName] UNIQUE NONCLUSTERED 
(
	[RetailerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_RetailerPassword] UNIQUE NONCLUSTERED 
(
	[RetailerPassword] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamA].[ReturnDetails]    Script Date: 19-10-2019 18:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamA].[ReturnDetails](
	[ReturnDetailID] [uniqueidentifier] NOT NULL,
	[ReturnID] [uniqueidentifier] NULL,
	[ProductID] [uniqueidentifier] NULL,
	[Quantity] [int] NOT NULL,
	[ReasonOfReturn] [varchar](10) NOT NULL,
	[UnitPrice] [decimal](15, 2) NOT NULL,
	[TotalPrice] [decimal](15, 2) NOT NULL,
	[AddressID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TeamA_ReturnDetails_ReturnDetailID] PRIMARY KEY CLUSTERED 
(
	[ReturnDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamA].[ReturnTable]    Script Date: 19-10-2019 18:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamA].[ReturnTable](
	[ReturnID] [uniqueidentifier] NOT NULL,
	[OrderID] [uniqueidentifier] NULL,
	[ChannelOfReturn] [varchar](7) NOT NULL,
	[ReturnAmount] [decimal](15, 2) NOT NULL,
	[ReturnDateTime] [datetime] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_TeamA_ReturnTable_ReturnID] PRIMARY KEY CLUSTERED 
(
	[ReturnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamA].[SalesPersons]    Script Date: 19-10-2019 18:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamA].[SalesPersons](
	[SalespersonID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Mobile] [char](10) NOT NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](12) NOT NULL,
	[JoiningDate] [datetime] NOT NULL,
	[AddressLine1] [varchar](500) NULL,
	[AddressLine2] [varchar](500) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Pincode] [varchar](6) NULL,
	[Birthdate] [datetime] NOT NULL,
	[LastAccountModifiedDateTime] [datetime] NULL,
	[Salary] [decimal](15, 2) NULL,
	[Bonus] [decimal](15, 2) NULL,
	[Target] [decimal](15, 2) NULL,
 CONSTRAINT [pk_GOUsers_SalesPersons_SalespersonID] PRIMARY KEY CLUSTERED 
(
	[SalespersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uq_TeamA_SalesPersons_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uq_TeamA_SalesPersons_Mobile] UNIQUE NONCLUSTERED 
(
	[Mobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uq_TeamA_SalesPersons_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamB].[Addresses]    Script Date: 19-10-2019 18:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamB].[Addresses](
	[AddressID] [uniqueidentifier] NOT NULL,
	[AddressLine1] [varchar](50) NOT NULL,
	[AddressLine2] [varchar](50) NOT NULL,
	[LandMark] [varchar](20) NULL,
	[City] [varchar](20) NOT NULL,
	[State] [varchar](20) NOT NULL,
	[PinCode] [varchar](20) NOT NULL,
	[RetailerID] [uniqueidentifier] NULL,
	[CreationDateTime] [datetime] NULL,
	[LastModifiedDateTime] [datetime] NULL,
 CONSTRAINT [AddressID_PK] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamB].[AdminTable]    Script Date: 19-10-2019 18:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamB].[AdminTable](
	[AdminID] [uniqueidentifier] NOT NULL,
	[AdminName] [varchar](30) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[Password] [varchar](15) NOT NULL,
	[CreationDateTime] [datetime] NULL,
	[LastModifiedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamB].[OfflineOrderDetails]    Script Date: 19-10-2019 18:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamB].[OfflineOrderDetails](
	[OfflineOrderDetailID] [uniqueidentifier] NOT NULL,
	[ProductID] [uniqueidentifier] NOT NULL,
	[ProductName] [varchar](30) NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [money] NULL,
	[TotalPrice] [money] NULL,
	[CreationDateTime] [datetime] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[OfflineOrderID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_OfflineOrderDetailID] PRIMARY KEY CLUSTERED 
(
	[OfflineOrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamB].[OfflineOrders]    Script Date: 19-10-2019 18:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamB].[OfflineOrders](
	[OfflineOrderID] [uniqueidentifier] NOT NULL,
	[RetailerID] [uniqueidentifier] NOT NULL,
	[SalesPersonID] [uniqueidentifier] NOT NULL,
	[TotalOfflineOrderAmount] [money] NOT NULL,
	[TotalQuantity] [int] NOT NULL,
	[OfflineOrderNumber] [int] NOT NULL,
	[CreationDateTime] [datetime] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OfflineOrderID] PRIMARY KEY CLUSTERED 
(
	[OfflineOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamB].[OfflineReturns]    Script Date: 19-10-2019 18:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamB].[OfflineReturns](
	[OfflineReturn_ID] [uniqueidentifier] NOT NULL,
	[Purpose] [varchar](30) NOT NULL,
	[QuantityOfReturn] [int] NOT NULL,
	[OfflineOrder_ID] [uniqueidentifier] NOT NULL,
	[Product_ID] [uniqueidentifier] NOT NULL,
	[ReturnAmount] [money] NOT NULL,
	[Unit_Price] [money] NOT NULL,
	[CreationDateTime] [datetime] NULL,
	[LastModifiedDateTime] [datetime] NULL,
 CONSTRAINT [PK_OfflineReturn] PRIMARY KEY CLUSTERED 
(
	[OfflineReturn_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamB].[OnlineReturns]    Script Date: 19-10-2019 18:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamB].[OnlineReturns](
	[OnlineReturnID] [uniqueidentifier] NOT NULL,
	[OrderID] [uniqueidentifier] NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[ProductNumber] [int] NOT NULL,
	[ProductID] [uniqueidentifier] NOT NULL,
	[QuantityOfReturn] [int] NOT NULL,
	[Purpose] [varchar](40) NOT NULL,
	[RetailerID] [uniqueidentifier] NOT NULL,
	[ProductPrice] [money] NOT NULL,
	[TotalAmount] [money] NOT NULL,
	[CreationDateTime] [datetime] NULL,
	[LastModifiedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OnlineReturnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamB].[OrderDetailsTable]    Script Date: 19-10-2019 18:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamB].[OrderDetailsTable](
	[OrderDetailID] [uniqueidentifier] NOT NULL,
	[OrderID] [uniqueidentifier] NOT NULL,
	[IsCancelled] [varchar](3) NULL,
	[ProductID] [uniqueidentifier] NOT NULL,
	[ProductQuantityOrdered] [int] NOT NULL,
	[ProductPrice] [money] NOT NULL,
	[AddressID] [uniqueidentifier] NOT NULL,
	[TotalAmount] [money] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[DateOfOrder] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamB].[OrdersTable]    Script Date: 19-10-2019 18:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamB].[OrdersTable](
	[OrderID] [uniqueidentifier] NOT NULL,
	[RetailerID] [uniqueidentifier] NOT NULL,
	[DateOfOrder] [datetime] NOT NULL,
	[TotalQuantity] [int] NOT NULL,
	[OrderAmount] [money] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[OrderNumber] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [OrderID_PK] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamB].[Product]    Script Date: 19-10-2019 18:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamB].[Product](
	[ProductID] [uniqueidentifier] NOT NULL,
	[ProductName] [varchar](15) NOT NULL,
	[ProductNumber] [int] NOT NULL,
	[ProductCategory] [varchar](25) NOT NULL,
	[ProductColor] [varchar](30) NOT NULL,
	[ProductSize] [varchar](15) NOT NULL,
	[ProductMaterial] [varchar](30) NOT NULL,
	[ProductPrice] [money] NOT NULL,
	[CreationDateTime] [datetime] NULL,
	[LastModifiedDateTime] [datetime] NULL,
 CONSTRAINT [ProductPK] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [PNumberUnique] UNIQUE NONCLUSTERED 
(
	[ProductNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamB].[Retailers]    Script Date: 19-10-2019 18:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamB].[Retailers](
	[RetailerID] [uniqueidentifier] NOT NULL,
	[RetailerName] [varchar](30) NOT NULL,
	[RetailerEmail] [varchar](50) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[RetailerMobile] [varchar](13) NOT NULL,
	[CreationDateTime] [datetime] NULL,
	[LastModifiedDateTime] [datetime] NULL,
 CONSTRAINT [RetailerID_PK] PRIMARY KEY CLUSTERED 
(
	[RetailerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RetailerEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamB].[SalesPersons]    Script Date: 19-10-2019 18:10:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamB].[SalesPersons](
	[SalesPersonID] [uniqueidentifier] NOT NULL,
	[SalesPersonName] [varchar](30) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[SalesPersonMobile] [varchar](50) NOT NULL,
	[CreationDateTime] [datetime] NULL,
	[LastModifiedDateTime] [datetime] NULL,
 CONSTRAINT [Pk_SalesPerson] PRIMARY KEY CLUSTERED 
(
	[SalesPersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamB].[ViewSalesReports]    Script Date: 19-10-2019 18:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamB].[ViewSalesReports](
	[SalespersonID] [uniqueidentifier] NULL,
	[SalespersonName] [varchar](30) NOT NULL,
	[OfflinesalesCount] [int] NULL,
	[TotalAmount] [money] NULL,
	[Target] [varchar](10) NULL,
	[LastUpdatedsalestime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TeamC].[Admin]    Script Date: 19-10-2019 18:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamC].[Admin](
	[AdminID] [uniqueidentifier] NOT NULL,
	[AdminName] [varchar](50) NOT NULL,
	[AdminEmail] [varchar](100) NOT NULL,
	[AdminPassword] [varchar](30) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[Modifieddate] [datetime] NOT NULL,
 CONSTRAINT [PK_TeamC.Admin] PRIMARY KEY CLUSTERED 
(
	[AdminEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamC].[DistributorAddresses]    Script Date: 19-10-2019 18:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamC].[DistributorAddresses](
	[DistributorAddress_ID] [uniqueidentifier] NOT NULL,
	[Distributor_ID] [uniqueidentifier] NULL,
	[DistributorAddressLine1] [varchar](100) NOT NULL,
	[DistributorAddressLine2] [varchar](100) NOT NULL,
	[Distributor_City] [varchar](30) NOT NULL,
	[Distributor_State] [varchar](30) NOT NULL,
	[Distributor_Pincode] [char](6) NOT NULL,
 CONSTRAINT [DistributorAddressId_Pk] PRIMARY KEY CLUSTERED 
(
	[DistributorAddress_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamC].[Distributors]    Script Date: 19-10-2019 18:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamC].[Distributors](
	[Distributor_ID] [uniqueidentifier] NOT NULL,
	[Distributor_Name] [varchar](50) NOT NULL,
	[Distributor_Mobile] [char](10) NOT NULL,
	[Distributor_Email] [varchar](50) NOT NULL,
	[Distributor_Password] [varchar](15) NOT NULL,
	[Created_On] [datetime] NULL,
	[Last_Modified_On] [datetime] NULL,
 CONSTRAINT [DistributorId_Pk] PRIMARY KEY CLUSTERED 
(
	[Distributor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Distributor_Mobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Distributor_Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamC].[ProductsInventory]    Script Date: 19-10-2019 18:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamC].[ProductsInventory](
	[ProductID] [uniqueidentifier] NOT NULL,
	[ProductName] [varchar](100) NOT NULL,
	[ProductType] [varchar](100) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[CreationTime] [datetime] NULL,
 CONSTRAINT [ProductID_pk] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamC].[RawMaterial]    Script Date: 19-10-2019 18:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamC].[RawMaterial](
	[RawMaterialId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[UnitPrice] [decimal](18, 0) NOT NULL,
	[MinQuantity] [decimal](18, 0) NOT NULL,
	[AvailableQuantity] [decimal](18, 0) NOT NULL,
	[ReqdQuantity]  AS ([MinQuantity]-[AvailableQuantity]),
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [RawMaterialID_pk] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Name_Unique_notNull] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamC].[RawMaterialOrder]    Script Date: 19-10-2019 18:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamC].[RawMaterialOrder](
	[OrderInvoiceCode] [int] NOT NULL,
	[OrderID] [uniqueidentifier] NOT NULL,
	[SupplierID] [uniqueidentifier] NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[TotalQuantity] [decimal](18, 0) NULL,
	[CreationTime] [datetime] NULL,
	[ModificationTime] [datetime] NULL,
 CONSTRAINT [OrderID_pk] PRIMARY KEY CLUSTERED 
(
	[OrderInvoiceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamC].[RawMaterialOrderDetail]    Script Date: 19-10-2019 18:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamC].[RawMaterialOrderDetail](
	[OrderDetailID] [uniqueidentifier] NOT NULL,
	[OrderInvoiceCode] [int] NULL,
	[RawMaterialName] [varchar](50) NULL,
	[Quantity] [decimal](18, 0) NOT NULL,
	[UnitPrice] [decimal](18, 0) NOT NULL,
	[Amount]  AS ([Quantity]*[UnitPrice]),
	[CreationTime] [datetime] NULL,
	[ModificationTime] [datetime] NULL,
 CONSTRAINT [OrderDetailCode_pk] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamC].[SupPayment]    Script Date: 19-10-2019 18:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamC].[SupPayment](
	[SupOrderInvoiceCode] [int] NULL,
	[SupplierID] [uniqueidentifier] NOT NULL,
	[SupName] [varchar](50) NOT NULL,
	[RawName] [varchar](50) NOT NULL,
	[SupAmount] [decimal](18, 0) NOT NULL,
	[SupChequeNoTransNo] [nchar](6) NOT NULL,
	[RawOrderCreationDate] [datetime] NULL,
	[SupPaymentDate] [datetime] NOT NULL,
	[SupMethod] [varchar](20) NOT NULL,
	[SupStatus] [varchar](20) NOT NULL,
 CONSTRAINT [TransNo_PK] PRIMARY KEY CLUSTERED 
(
	[SupChequeNoTransNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamC].[supplierAddresses]    Script Date: 19-10-2019 18:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamC].[supplierAddresses](
	[SupplierAddressID] [uniqueidentifier] NOT NULL,
	[SupplierID] [uniqueidentifier] NULL,
	[supplierAddressLine1] [varchar](50) NOT NULL,
	[supplierAddressLine2] [varchar](50) NOT NULL,
	[supplierCity] [varchar](50) NOT NULL,
	[supplierState] [varchar](50) NOT NULL,
	[supplierPinCode] [char](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamC].[suppliers]    Script Date: 19-10-2019 18:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamC].[suppliers](
	[supplierID] [uniqueidentifier] NOT NULL,
	[supplierName] [varchar](50) NOT NULL,
	[supplierMobile] [char](10) NOT NULL,
	[supplierEmail] [varchar](50) NOT NULL,
	[supplierPassword] [varchar](15) NOT NULL,
	[creationDate] [datetime] NULL,
	[lastModified] [datetime] NULL,
 CONSTRAINT [SupplierId_Pk] PRIMARY KEY CLUSTERED 
(
	[supplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[supplierEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[supplierName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[supplierMobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamC].[SystemUser]    Script Date: 19-10-2019 18:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamC].[SystemUser](
	[SystemUserID] [uniqueidentifier] NOT NULL,
	[SystemUserName] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](30) NOT NULL,
	[CreationDateTime] [datetime] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_TeamC.SystemUser] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamC].[Users]    Script Date: 19-10-2019 18:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamC].[Users](
	[UserID] [uniqueidentifier] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[UserPassword] [varchar](15) NOT NULL,
	[UserType] [varchar](15) NOT NULL,
 CONSTRAINT [UserID_PK] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Email_Unique_notNull] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamE].[Admin]    Script Date: 19-10-2019 18:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamE].[Admin](
	[AdminID] [uniqueidentifier] NOT NULL,
	[AdminName] [varchar](50) NOT NULL,
	[Email] [varchar](20) NOT NULL,
	[AdminPassword] [varchar](15) NOT NULL,
	[CreationDateTime] [datetime] NULL,
	[LastModifiedDatetime] [datetime] NULL,
 CONSTRAINT [PK_EmployeeService_Admin_AdminID] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamE].[CarLoan]    Script Date: 19-10-2019 18:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamE].[CarLoan](
	[CarLoanID] [uniqueidentifier] NOT NULL,
	[CustomerID] [uniqueidentifier] NOT NULL,
	[CarLoanNumber] [char](4) NOT NULL,
	[LoanAmount] [money] NOT NULL,
	[LoanType] [varchar](20) NOT NULL,
	[LoanStatus] [varchar](10) NOT NULL,
	[LoanDuration] [decimal](18, 0) NOT NULL,
	[License] [char](15) NOT NULL,
	[CreationDateTime] [datetime] NOT NULL,
	[LastModifiedTime] [datetime] NOT NULL,
 CONSTRAINT [PK_CarLoan_LoanID] PRIMARY KEY CLUSTERED 
(
	[CarLoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamE].[ChequeBook]    Script Date: 19-10-2019 18:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamE].[ChequeBook](
	[ChequeBookID] [uniqueidentifier] NOT NULL,
	[AccountID] [uniqueidentifier] NULL,
	[AccountNo] [char](10) NOT NULL,
	[SeriesStart] [decimal](18, 0) NULL,
	[NumberOfLeaves] [int] NOT NULL,
	[ChequeBookStatus] [varchar](12) NOT NULL,
	[ChequeBookRequestDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_CustomerService_ChequeBook_ChequeBookID] PRIMARY KEY CLUSTERED 
(
	[ChequeBookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_CustomerService_ChequeBook_SeriesStart] UNIQUE NONCLUSTERED 
(
	[SeriesStart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamE].[CreditCard]    Script Date: 19-10-2019 18:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamE].[CreditCard](
	[CreditCardID] [uniqueidentifier] NOT NULL,
	[CustomerID] [uniqueidentifier] NULL,
	[CustomerNameAsPerCard] [varchar](50) NOT NULL,
	[CardNumber] [char](12) NULL,
	[CreditLimit] [decimal](18, 0) NOT NULL,
	[ExpiryMMYYYY] [varchar](7) NOT NULL,
	[CardType] [varchar](20) NOT NULL,
	[CardStatus] [varchar](12) NOT NULL,
	[CardIssueDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_TeamE_CreditCard_CreditCardID] PRIMARY KEY CLUSTERED 
(
	[CreditCardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_TeamE_CreditCard_CardNumber] UNIQUE NONCLUSTERED 
(
	[CardNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamE].[Customer]    Script Date: 19-10-2019 18:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamE].[Customer](
	[CustomerID] [uniqueidentifier] NOT NULL,
	[CustomerNumber] [char](6) NOT NULL,
	[CustomerName] [varchar](40) NOT NULL,
	[CustomerMobile] [char](10) NOT NULL,
	[CustomerAddress] [varchar](200) NOT NULL,
	[CustomerAadharNumber] [char](12) NOT NULL,
	[CustomerPANNumber] [char](10) NOT NULL,
	[CustomerGender] [varchar](12) NOT NULL,
	[CustomerDOB] [datetime] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[WorkExperience] [decimal](18, 0) NOT NULL,
	[AnnualIncome] [decimal](18, 0) NOT NULL,
	[CreationDateTime] [datetime] NOT NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Customer_CustomerID] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamE].[DebitCard]    Script Date: 19-10-2019 18:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamE].[DebitCard](
	[DebitCardID] [uniqueidentifier] NOT NULL,
	[AccountID] [uniqueidentifier] NULL,
	[CustomerNameAsPerCard] [varchar](50) NOT NULL,
	[CardNumber] [char](12) NULL,
	[ExpiryMMYYYY] [varchar](7) NOT NULL,
	[CardType] [varchar](20) NOT NULL,
	[CardStatus] [varchar](12) NOT NULL,
	[CardIssueDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_CustomerService_DebitCard_DebitCardID] PRIMARY KEY CLUSTERED 
(
	[DebitCardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_CustomerService_DebitCard_CardNumber] UNIQUE NONCLUSTERED 
(
	[CardNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamE].[EducationLoan]    Script Date: 19-10-2019 18:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamE].[EducationLoan](
	[EducationLoanID] [uniqueidentifier] NOT NULL,
	[CustomerID] [uniqueidentifier] NOT NULL,
	[EducationLoanNumber] [int] NOT NULL,
	[LoanAmount] [money] NOT NULL,
	[LoanStatus] [varchar](10) NOT NULL,
	[LoanDuration] [decimal](18, 0) NOT NULL,
	[Collateral] [money] NOT NULL,
	[CreationDateTime] [datetime] NOT NULL,
	[LastModifiedTime] [datetime] NOT NULL,
	[LoanType] [varchar](20) NOT NULL,
	[CollegeName] [varchar](50) NOT NULL,
	[AdmissionID] [varchar](50) NOT NULL,
	[Sponseror] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EducationLoan_LoanID] PRIMARY KEY CLUSTERED 
(
	[EducationLoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamE].[Employees]    Script Date: 19-10-2019 18:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamE].[Employees](
	[EmployeeID] [uniqueidentifier] NOT NULL,
	[EmployeeName] [varchar](50) NOT NULL,
	[Email] [varchar](20) NOT NULL,
	[EmployeePassword] [varchar](15) NOT NULL,
	[CreationDateTime] [datetime] NULL,
	[LastModifiedDatetime] [datetime] NULL,
 CONSTRAINT [PK_EmployeeService_Employee_EmployeeID] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamE].[FixedAccount]    Script Date: 19-10-2019 18:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamE].[FixedAccount](
	[AccountID] [uniqueidentifier] NOT NULL,
	[CustomerID] [uniqueidentifier] NOT NULL,
	[AccountNo] [char](10) NOT NULL,
	[CurrentBalance] [money] NULL,
	[AccountType] [varchar](10) NOT NULL,
	[Branch] [varchar](30) NOT NULL,
	[Tenure] [decimal](18, 0) NOT NULL,
	[FDDeposit] [money] NOT NULL,
	[Status] [char](10) NOT NULL,
	[MinimumBalance] [money] NOT NULL,
	[InterestRate] [decimal](18, 0) NOT NULL,
	[CreationDateTime] [datetime] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_FixedAccount_AccountID] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[AccountNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamE].[HomeLoan]    Script Date: 19-10-2019 18:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamE].[HomeLoan](
	[HomeLoanID] [uniqueidentifier] NOT NULL,
	[CustomerID] [uniqueidentifier] NOT NULL,
	[HomeLoanNumber] [int] NOT NULL,
	[LoanAmount] [money] NOT NULL,
	[LoanStatus] [varchar](10) NOT NULL,
	[LoanDuration] [decimal](18, 0) NOT NULL,
	[Collateral] [money] NOT NULL,
	[CreationDateTime] [datetime] NOT NULL,
	[LastModifiedTime] [datetime] NOT NULL,
	[LoanType] [varchar](20) NOT NULL,
 CONSTRAINT [PK_HomeLoan_LoanID] PRIMARY KEY CLUSTERED 
(
	[HomeLoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamE].[PersonalLoan]    Script Date: 19-10-2019 18:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamE].[PersonalLoan](
	[PersonalLoanID] [uniqueidentifier] NOT NULL,
	[CustomerID] [uniqueidentifier] NOT NULL,
	[PersonalLoanNumber] [int] NOT NULL,
	[LoanAmount] [money] NOT NULL,
	[LoanStatus] [varchar](10) NOT NULL,
	[LoanDuration] [decimal](18, 0) NOT NULL,
	[Collateral] [money] NOT NULL,
	[CreationDateTime] [datetime] NOT NULL,
	[LastModifiedTime] [datetime] NOT NULL,
	[LoanType] [varchar](20) NOT NULL,
 CONSTRAINT [PK_PersonalLoan_LoanID] PRIMARY KEY CLUSTERED 
(
	[PersonalLoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamE].[RegularAccount]    Script Date: 19-10-2019 18:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamE].[RegularAccount](
	[AccountID] [uniqueidentifier] NOT NULL,
	[CustomerID] [uniqueidentifier] NOT NULL,
	[AccountNo] [char](10) NOT NULL,
	[CurrentBalance] [money] NOT NULL,
	[AccountType] [varchar](10) NOT NULL,
	[Branch] [varchar](30) NOT NULL,
	[Status] [char](10) NOT NULL,
	[MinimumBalance] [money] NOT NULL,
	[InterestRate] [decimal](18, 0) NOT NULL,
	[CreationDateTime] [datetime] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_RegularAccount_AccountID] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[AccountNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamE].[Transactions]    Script Date: 19-10-2019 18:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamE].[Transactions](
	[TransactionID] [uniqueidentifier] NOT NULL,
	[CreditAccountNumber] [char](10) NULL,
	[DebitAccountNumber] [char](10) NULL,
	[Ammount] [money] NOT NULL,
	[TransactionType] [varchar](10) NOT NULL,
	[TransactionDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Transactions_TransactionID] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamF].[Account]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamF].[Account](
	[AccountID] [uniqueidentifier] NOT NULL,
	[AccountNumber] [bigint] NULL,
	[HomeBranch] [varchar](20) NULL,
	[Feedback] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[DateOfCreation] [datetime] NULL,
	[AccountType] [varchar](7) NULL,
	[AccountBalance] [money] NULL,
	[CustomerID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamF].[Admins]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamF].[Admins](
	[AdminID] [uniqueidentifier] NOT NULL,
	[AdminName] [varchar](40) NOT NULL,
	[AdminEmail] [dbo].[Email] NOT NULL,
	[AdminPassword] [dbo].[Password] NOT NULL,
	[CreationDateTime] [datetime] NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[IsActive] [bit] NULL,
	[EmployeeID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamF].[CarLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamF].[CarLoan](
	[LoanID] [uniqueidentifier] NOT NULL,
	[CustomerID] [uniqueidentifier] NULL,
	[AmountApplied] [money] NULL,
	[InterestRate] [decimal](10, 2) NULL,
	[EMI_amount] [money] NULL,
	[RepaymentPeriod] [tinyint] NULL,
	[DateOfApplication] [datetime] NULL,
	[LoanStatus] [varchar](15) NULL,
	[Occupation] [varchar](15) NULL,
	[GrossIncome] [money] NULL,
	[SalaryDeduction] [money] NULL,
	[VehicleType] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[LoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamF].[Customers]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamF].[Customers](
	[CustomerID] [uniqueidentifier] NOT NULL,
	[CustomerName] [varchar](40) NOT NULL,
	[CustomerAddress] [varchar](200) NULL,
	[CustomerMobile] [char](10) NOT NULL,
	[CustomerEmail] [varchar](40) NULL,
	[CustomerPan] [char](10) NULL,
	[CustomerAadhaarNumber] [char](12) NULL,
	[DOB] [datetime] NULL,
	[CustomerGender] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamF].[EduLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamF].[EduLoan](
	[LoanID] [uniqueidentifier] NOT NULL,
	[CustomerID] [uniqueidentifier] NULL,
	[AmountApplied] [money] NULL,
	[InterestRate] [decimal](18, 0) NULL,
	[EMI_amount] [money] NULL,
	[RepaymentPeriod] [tinyint] NULL,
	[DateOfApplication] [datetime] NULL,
	[LoanStatus] [varchar](15) NULL,
	[Course] [varchar](15) NULL,
	[InstituteName] [varchar](50) NULL,
	[StudentID] [varchar](20) NULL,
	[RepaymentHoliday] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[LoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamF].[Employees]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamF].[Employees](
	[EmployeeID] [uniqueidentifier] NOT NULL,
	[EmployeeName] [varchar](40) NOT NULL,
	[EmployeeEmail] [dbo].[Email] NOT NULL,
	[EmployeePassword] [dbo].[Password] NOT NULL,
	[Mobile] [char](10) NULL,
	[CreationDateTime] [datetime] NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamF].[FixedDeposit]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamF].[FixedDeposit](
	[AccountID] [uniqueidentifier] NOT NULL,
	[FdDeposit] [bigint] NULL,
	[InterestRate] [float] NULL,
	[Tenure] [int] NULL,
	[AccountNumber] [bigint] NULL,
	[HomeBranch] [uniqueidentifier] NULL,
	[CustomerID] [uniqueidentifier] NULL,
	[Feedback] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[DateOfCreation] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamF].[HomeLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamF].[HomeLoan](
	[LoanID] [uniqueidentifier] NOT NULL,
	[CustomerID] [uniqueidentifier] NULL,
	[AmountApplied] [money] NULL,
	[InterestRate] [decimal](18, 0) NULL,
	[EMI_amount] [money] NULL,
	[RepaymentPeriod] [tinyint] NULL,
	[DateOfApplication] [datetime] NULL,
	[LoanStatus] [varchar](15) NULL,
	[Occupation] [varchar](15) NULL,
	[ServiceYears] [tinyint] NULL,
	[GrossIncome] [money] NULL,
	[SalaryDeduction] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[LoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TeamF].[Transactions]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TeamF].[Transactions](
	[TransactionID] [uniqueidentifier] NOT NULL,
	[AccountID] [uniqueidentifier] NULL,
	[TypeOfTransaction] [varchar](6) NOT NULL,
	[Amount] [money] NOT NULL,
	[DateOfTransaction] [datetime] NULL,
	[Mode] [varchar](14) NOT NULL,
	[ChequeNumber] [char](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[GetAccountByAccountNo]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[GetAccountByAccountNo]
as
SELECT * from TeamE.RegularAccount WHERE Status = 'Active'

GO
ALTER TABLE [sqluser].[EnglishStudents1] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [TeamA].[OrderDetails] ADD  DEFAULT ((0)) FOR [GiftPacking]
GO
ALTER TABLE [TeamB].[OrderDetailsTable] ADD  DEFAULT ('no') FOR [IsCancelled]
GO
ALTER TABLE [TeamE].[Admin] ADD  DEFAULT (sysdatetime()) FOR [CreationDateTime]
GO
ALTER TABLE [TeamE].[Admin] ADD  DEFAULT (sysdatetime()) FOR [LastModifiedDatetime]
GO
ALTER TABLE [TeamE].[CarLoan] ADD  DEFAULT ((0)) FOR [LoanAmount]
GO
ALTER TABLE [TeamE].[CreditCard] ADD  DEFAULT (sysdatetime()) FOR [CardIssueDate]
GO
ALTER TABLE [TeamE].[CreditCard] ADD  DEFAULT (sysdatetime()) FOR [LastModifiedDate]
GO
ALTER TABLE [TeamE].[Customer] ADD  DEFAULT (sysdatetime()) FOR [CreationDateTime]
GO
ALTER TABLE [TeamE].[Customer] ADD  DEFAULT (sysdatetime()) FOR [LastModified]
GO
ALTER TABLE [TeamE].[DebitCard] ADD  DEFAULT (sysdatetime()) FOR [CardIssueDate]
GO
ALTER TABLE [TeamE].[DebitCard] ADD  DEFAULT (sysdatetime()) FOR [LastModifiedDate]
GO
ALTER TABLE [TeamE].[EducationLoan] ADD  DEFAULT ((0)) FOR [LoanAmount]
GO
ALTER TABLE [TeamE].[Employees] ADD  DEFAULT (sysdatetime()) FOR [CreationDateTime]
GO
ALTER TABLE [TeamE].[Employees] ADD  DEFAULT (sysdatetime()) FOR [LastModifiedDatetime]
GO
ALTER TABLE [TeamE].[FixedAccount] ADD  DEFAULT ((0)) FOR [CurrentBalance]
GO
ALTER TABLE [TeamE].[FixedAccount] ADD  DEFAULT ('Active') FOR [Status]
GO
ALTER TABLE [TeamE].[FixedAccount] ADD  DEFAULT ((500)) FOR [MinimumBalance]
GO
ALTER TABLE [TeamE].[FixedAccount] ADD  DEFAULT ((3.5)) FOR [InterestRate]
GO
ALTER TABLE [TeamE].[FixedAccount] ADD  DEFAULT (sysdatetime()) FOR [CreationDateTime]
GO
ALTER TABLE [TeamE].[FixedAccount] ADD  DEFAULT (sysdatetime()) FOR [LastModifiedDateTime]
GO
ALTER TABLE [TeamE].[HomeLoan] ADD  DEFAULT ((0)) FOR [LoanAmount]
GO
ALTER TABLE [TeamE].[PersonalLoan] ADD  DEFAULT ((0)) FOR [LoanAmount]
GO
ALTER TABLE [TeamE].[RegularAccount] ADD  DEFAULT ((0)) FOR [CurrentBalance]
GO
ALTER TABLE [TeamE].[RegularAccount] ADD  DEFAULT ('Active') FOR [Status]
GO
ALTER TABLE [TeamE].[RegularAccount] ADD  DEFAULT ((500)) FOR [MinimumBalance]
GO
ALTER TABLE [TeamE].[RegularAccount] ADD  DEFAULT ((3.5)) FOR [InterestRate]
GO
ALTER TABLE [TeamE].[RegularAccount] ADD  DEFAULT (sysdatetime()) FOR [CreationDateTime]
GO
ALTER TABLE [TeamE].[RegularAccount] ADD  DEFAULT (sysdatetime()) FOR [LastModifiedDateTime]
GO
ALTER TABLE [TeamE].[Transactions] ADD  DEFAULT (sysdatetime()) FOR [TransactionDateTime]
GO
ALTER TABLE [sqluser].[AddPatient]  WITH CHECK ADD FOREIGN KEY([staffid])
REFERENCES [sqluser].[Addstaff] ([staffid])
GO
ALTER TABLE [sqluser].[Bill]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [sqluser].[AddPatient] ([pid])
GO
ALTER TABLE [sqluser].[Bill]  WITH CHECK ADD FOREIGN KEY([sno])
REFERENCES [sqluser].[Lab] ([Sno])
GO
ALTER TABLE [sqluser].[Lab]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [sqluser].[AddPatient] ([pid])
GO
ALTER TABLE [Team_D].[DistributorAddress]  WITH CHECK ADD FOREIGN KEY([DistributorID])
REFERENCES [Team_D].[Distributor] ([DistributorID])
GO
ALTER TABLE [Team_D].[ProductOrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductOrderID])
REFERENCES [Team_D].[ProductOrders] ([ProductOrderID])
GO
ALTER TABLE [Team_D].[ProductOrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [Team_D].[Product] ([ProductID])
GO
ALTER TABLE [Team_D].[ProductOrders]  WITH CHECK ADD FOREIGN KEY([DistributorID])
REFERENCES [Team_D].[Distributor] ([DistributorID])
GO
ALTER TABLE [Team_D].[ProductOrders]  WITH CHECK ADD FOREIGN KEY([DistributorAddressID])
REFERENCES [Team_D].[DistributorAddress] ([DistributoraddressID])
GO
ALTER TABLE [Team_D].[Rawmaterialorderdetails]  WITH CHECK ADD FOREIGN KEY([RawMaterialOrderID])
REFERENCES [Team_D].[Rawmaterialorder] ([RawMaterialOrderID])
GO
ALTER TABLE [Team_D].[Rawmaterialorderdetails]  WITH CHECK ADD FOREIGN KEY([RawMaterialID])
REFERENCES [Team_D].[RawMaterial] ([RawMaterialID])
GO
ALTER TABLE [Team_D].[supplierAddress]  WITH CHECK ADD FOREIGN KEY([supplierID])
REFERENCES [Team_D].[supplier] ([supplierID])
GO
ALTER TABLE [TeamA].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_TeamA_Addresses_RetailerID] FOREIGN KEY([RetailerID])
REFERENCES [TeamA].[Retailers] ([RetailerID])
GO
ALTER TABLE [TeamA].[Addresses] CHECK CONSTRAINT [FK_TeamA_Addresses_RetailerID]
GO
ALTER TABLE [TeamA].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_TeamA_OrderDetails_TeamA_Addresses_AddressID] FOREIGN KEY([AddressID])
REFERENCES [TeamA].[Addresses] ([AddressID])
GO
ALTER TABLE [TeamA].[OrderDetails] CHECK CONSTRAINT [FK_TeamA_OrderDetails_TeamA_Addresses_AddressID]
GO
ALTER TABLE [TeamA].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_TeamA_OrderDetails_TeamA_Orders_OrderID] FOREIGN KEY([OrderID])
REFERENCES [TeamA].[Orders] ([OrderID])
GO
ALTER TABLE [TeamA].[OrderDetails] CHECK CONSTRAINT [FK_TeamA_OrderDetails_TeamA_Orders_OrderID]
GO
ALTER TABLE [TeamA].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_TeamA_Orders_TeamA_Retailers_RetailerID] FOREIGN KEY([RetailerID])
REFERENCES [TeamA].[Retailers] ([RetailerID])
GO
ALTER TABLE [TeamA].[Orders] CHECK CONSTRAINT [FK_TeamA_Orders_TeamA_Retailers_RetailerID]
GO
ALTER TABLE [TeamA].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_TeamA_Orders_TeamA_Salespersons_SalespersonID] FOREIGN KEY([SalespersonID])
REFERENCES [TeamA].[SalesPersons] ([SalespersonID])
GO
ALTER TABLE [TeamA].[Orders] CHECK CONSTRAINT [FK_TeamA_Orders_TeamA_Salespersons_SalespersonID]
GO
ALTER TABLE [TeamA].[ReturnDetails]  WITH CHECK ADD  CONSTRAINT [FK_TeamA_ReturnTable_ReturnDetails_ReturnID] FOREIGN KEY([ReturnID])
REFERENCES [TeamA].[ReturnTable] ([ReturnID])
GO
ALTER TABLE [TeamA].[ReturnDetails] CHECK CONSTRAINT [FK_TeamA_ReturnTable_ReturnDetails_ReturnID]
GO
ALTER TABLE [TeamA].[ReturnTable]  WITH CHECK ADD  CONSTRAINT [FK_TeamA_Orders_ReturnTable_OrderID] FOREIGN KEY([OrderID])
REFERENCES [TeamA].[Orders] ([OrderID])
GO
ALTER TABLE [TeamA].[ReturnTable] CHECK CONSTRAINT [FK_TeamA_Orders_ReturnTable_OrderID]
GO
ALTER TABLE [TeamB].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_RetailerID_For_Address] FOREIGN KEY([RetailerID])
REFERENCES [TeamB].[Retailers] ([RetailerID])
GO
ALTER TABLE [TeamB].[Addresses] CHECK CONSTRAINT [FK_RetailerID_For_Address]
GO
ALTER TABLE [TeamB].[OfflineOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OfflineOrders_OfflineOrderID] FOREIGN KEY([OfflineOrderID])
REFERENCES [TeamB].[OfflineOrders] ([OfflineOrderID])
GO
ALTER TABLE [TeamB].[OfflineOrderDetails] CHECK CONSTRAINT [FK_OfflineOrders_OfflineOrderID]
GO
ALTER TABLE [TeamB].[OfflineOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTID_FOR_OOD] FOREIGN KEY([ProductID])
REFERENCES [TeamB].[Product] ([ProductID])
GO
ALTER TABLE [TeamB].[OfflineOrderDetails] CHECK CONSTRAINT [FK_PRODUCTID_FOR_OOD]
GO
ALTER TABLE [TeamB].[OfflineOrders]  WITH CHECK ADD FOREIGN KEY([RetailerID])
REFERENCES [TeamB].[Retailers] ([RetailerID])
GO
ALTER TABLE [TeamB].[OfflineOrders]  WITH CHECK ADD FOREIGN KEY([SalesPersonID])
REFERENCES [TeamB].[SalesPersons] ([SalesPersonID])
GO
ALTER TABLE [TeamB].[OfflineReturns]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTID_FOR_OR] FOREIGN KEY([Product_ID])
REFERENCES [TeamB].[Product] ([ProductID])
GO
ALTER TABLE [TeamB].[OfflineReturns] CHECK CONSTRAINT [FK_PRODUCTID_FOR_OR]
GO
ALTER TABLE [TeamB].[OfflineReturns]  WITH CHECK ADD  CONSTRAINT [FK1_OfflineOrders_OfflineOrderID] FOREIGN KEY([OfflineOrder_ID])
REFERENCES [TeamB].[OfflineOrders] ([OfflineOrderID])
GO
ALTER TABLE [TeamB].[OfflineReturns] CHECK CONSTRAINT [FK1_OfflineOrders_OfflineOrderID]
GO
ALTER TABLE [TeamB].[OnlineReturns]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [TeamB].[OrdersTable] ([OrderID])
GO
ALTER TABLE [TeamB].[OnlineReturns]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTID_FOR_ONR] FOREIGN KEY([ProductID])
REFERENCES [TeamB].[Product] ([ProductID])
GO
ALTER TABLE [TeamB].[OnlineReturns] CHECK CONSTRAINT [FK_PRODUCTID_FOR_ONR]
GO
ALTER TABLE [TeamB].[OnlineReturns]  WITH CHECK ADD  CONSTRAINT [FK_RetailerID_ForOnlineReturn] FOREIGN KEY([RetailerID])
REFERENCES [TeamB].[Retailers] ([RetailerID])
GO
ALTER TABLE [TeamB].[OnlineReturns] CHECK CONSTRAINT [FK_RetailerID_ForOnlineReturn]
GO
ALTER TABLE [TeamB].[OrderDetailsTable]  WITH CHECK ADD  CONSTRAINT [FK_for_OrderDetail_of_AddressID] FOREIGN KEY([AddressID])
REFERENCES [TeamB].[Addresses] ([AddressID])
GO
ALTER TABLE [TeamB].[OrderDetailsTable] CHECK CONSTRAINT [FK_for_OrderDetail_of_AddressID]
GO
ALTER TABLE [TeamB].[OrderDetailsTable]  WITH CHECK ADD  CONSTRAINT [FK_OrderID] FOREIGN KEY([OrderID])
REFERENCES [TeamB].[OrdersTable] ([OrderID])
GO
ALTER TABLE [TeamB].[OrderDetailsTable] CHECK CONSTRAINT [FK_OrderID]
GO
ALTER TABLE [TeamB].[OrderDetailsTable]  WITH CHECK ADD  CONSTRAINT [FK_ProductID] FOREIGN KEY([ProductID])
REFERENCES [TeamB].[Product] ([ProductID])
GO
ALTER TABLE [TeamB].[OrderDetailsTable] CHECK CONSTRAINT [FK_ProductID]
GO
ALTER TABLE [TeamB].[OrdersTable]  WITH CHECK ADD  CONSTRAINT [FK_RetailerID_For_Order] FOREIGN KEY([RetailerID])
REFERENCES [TeamB].[Retailers] ([RetailerID])
GO
ALTER TABLE [TeamB].[OrdersTable] CHECK CONSTRAINT [FK_RetailerID_For_Order]
GO
ALTER TABLE [TeamB].[ViewSalesReports]  WITH CHECK ADD FOREIGN KEY([SalespersonID])
REFERENCES [TeamB].[SalesPersons] ([SalesPersonID])
GO
ALTER TABLE [TeamC].[DistributorAddresses]  WITH CHECK ADD  CONSTRAINT [DistributorId_Fk] FOREIGN KEY([Distributor_ID])
REFERENCES [TeamC].[Distributors] ([Distributor_ID])
GO
ALTER TABLE [TeamC].[DistributorAddresses] CHECK CONSTRAINT [DistributorId_Fk]
GO
ALTER TABLE [TeamC].[RawMaterialOrder]  WITH CHECK ADD  CONSTRAINT [SupplierName_FK] FOREIGN KEY([SupplierID])
REFERENCES [TeamC].[suppliers] ([supplierID])
GO
ALTER TABLE [TeamC].[RawMaterialOrder] CHECK CONSTRAINT [SupplierName_FK]
GO
ALTER TABLE [TeamC].[RawMaterialOrderDetail]  WITH CHECK ADD  CONSTRAINT [OrderID_fk] FOREIGN KEY([OrderInvoiceCode])
REFERENCES [TeamC].[RawMaterialOrder] ([OrderInvoiceCode])
GO
ALTER TABLE [TeamC].[RawMaterialOrderDetail] CHECK CONSTRAINT [OrderID_fk]
GO
ALTER TABLE [TeamC].[RawMaterialOrderDetail]  WITH CHECK ADD  CONSTRAINT [RawMaterialId_fk] FOREIGN KEY([RawMaterialName])
REFERENCES [TeamC].[RawMaterial] ([Name])
GO
ALTER TABLE [TeamC].[RawMaterialOrderDetail] CHECK CONSTRAINT [RawMaterialId_fk]
GO
ALTER TABLE [TeamC].[SupPayment]  WITH CHECK ADD  CONSTRAINT [Invoice_FK] FOREIGN KEY([SupOrderInvoiceCode])
REFERENCES [TeamC].[RawMaterialOrder] ([OrderInvoiceCode])
GO
ALTER TABLE [TeamC].[SupPayment] CHECK CONSTRAINT [Invoice_FK]
GO
ALTER TABLE [TeamC].[SupPayment]  WITH CHECK ADD  CONSTRAINT [RawName_FK] FOREIGN KEY([RawName])
REFERENCES [TeamC].[RawMaterial] ([Name])
GO
ALTER TABLE [TeamC].[SupPayment] CHECK CONSTRAINT [RawName_FK]
GO
ALTER TABLE [TeamC].[SupPayment]  WITH CHECK ADD  CONSTRAINT [SupID_FK] FOREIGN KEY([SupplierID])
REFERENCES [TeamC].[suppliers] ([supplierID])
GO
ALTER TABLE [TeamC].[SupPayment] CHECK CONSTRAINT [SupID_FK]
GO
ALTER TABLE [TeamC].[supplierAddresses]  WITH CHECK ADD  CONSTRAINT [Foreignkey_Fk] FOREIGN KEY([SupplierID])
REFERENCES [TeamC].[suppliers] ([supplierID])
GO
ALTER TABLE [TeamC].[supplierAddresses] CHECK CONSTRAINT [Foreignkey_Fk]
GO
ALTER TABLE [TeamE].[CarLoan]  WITH CHECK ADD  CONSTRAINT [FK_CarLoan_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [TeamE].[Customer] ([CustomerID])
GO
ALTER TABLE [TeamE].[CarLoan] CHECK CONSTRAINT [FK_CarLoan_CustomerID]
GO
ALTER TABLE [TeamE].[ChequeBook]  WITH CHECK ADD  CONSTRAINT [FK_ChequeBook_RegularAccount_AccountID] FOREIGN KEY([AccountID])
REFERENCES [TeamE].[RegularAccount] ([AccountID])
GO
ALTER TABLE [TeamE].[ChequeBook] CHECK CONSTRAINT [FK_ChequeBook_RegularAccount_AccountID]
GO
ALTER TABLE [TeamE].[CreditCard]  WITH CHECK ADD  CONSTRAINT [FK_CreditCard_Customer_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [TeamE].[Customer] ([CustomerID])
GO
ALTER TABLE [TeamE].[CreditCard] CHECK CONSTRAINT [FK_CreditCard_Customer_CustomerID]
GO
ALTER TABLE [TeamE].[DebitCard]  WITH CHECK ADD  CONSTRAINT [FK_DebitCard_RegularAccount_AccountID] FOREIGN KEY([AccountID])
REFERENCES [TeamE].[RegularAccount] ([AccountID])
GO
ALTER TABLE [TeamE].[DebitCard] CHECK CONSTRAINT [FK_DebitCard_RegularAccount_AccountID]
GO
ALTER TABLE [TeamE].[EducationLoan]  WITH CHECK ADD  CONSTRAINT [FK_EducationLoan_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [TeamE].[Customer] ([CustomerID])
GO
ALTER TABLE [TeamE].[EducationLoan] CHECK CONSTRAINT [FK_EducationLoan_CustomerID]
GO
ALTER TABLE [TeamE].[FixedAccount]  WITH CHECK ADD  CONSTRAINT [FK_FixedAccount_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [TeamE].[Customer] ([CustomerID])
GO
ALTER TABLE [TeamE].[FixedAccount] CHECK CONSTRAINT [FK_FixedAccount_CustomerID]
GO
ALTER TABLE [TeamE].[HomeLoan]  WITH CHECK ADD  CONSTRAINT [FK_HomeLoan_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [TeamE].[Customer] ([CustomerID])
GO
ALTER TABLE [TeamE].[HomeLoan] CHECK CONSTRAINT [FK_HomeLoan_CustomerID]
GO
ALTER TABLE [TeamE].[PersonalLoan]  WITH CHECK ADD  CONSTRAINT [FK_PersonalLoan_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [TeamE].[Customer] ([CustomerID])
GO
ALTER TABLE [TeamE].[PersonalLoan] CHECK CONSTRAINT [FK_PersonalLoan_CustomerID]
GO
ALTER TABLE [TeamE].[RegularAccount]  WITH CHECK ADD  CONSTRAINT [FK_RegularAccount_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [TeamE].[Customer] ([CustomerID])
GO
ALTER TABLE [TeamE].[RegularAccount] CHECK CONSTRAINT [FK_RegularAccount_CustomerID]
GO
ALTER TABLE [TeamE].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_CreditAccountNO] FOREIGN KEY([CreditAccountNumber])
REFERENCES [TeamE].[RegularAccount] ([AccountNo])
GO
ALTER TABLE [TeamE].[Transactions] CHECK CONSTRAINT [FK_Transaction_CreditAccountNO]
GO
ALTER TABLE [TeamE].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_DebitAccountNO] FOREIGN KEY([DebitAccountNumber])
REFERENCES [TeamE].[RegularAccount] ([AccountNo])
GO
ALTER TABLE [TeamE].[Transactions] CHECK CONSTRAINT [FK_Transaction_DebitAccountNO]
GO
ALTER TABLE [TeamF].[Account]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [TeamF].[Customers] ([CustomerID])
GO
ALTER TABLE [TeamF].[Admins]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [TeamF].[Employees] ([EmployeeID])
GO
ALTER TABLE [TeamF].[CarLoan]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [TeamF].[Customers] ([CustomerID])
ON UPDATE CASCADE
GO
ALTER TABLE [TeamF].[EduLoan]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [TeamF].[Customers] ([CustomerID])
ON UPDATE CASCADE
GO
ALTER TABLE [TeamF].[FixedDeposit]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [TeamF].[Customers] ([CustomerID])
GO
ALTER TABLE [TeamF].[HomeLoan]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [TeamF].[Customers] ([CustomerID])
ON UPDATE CASCADE
GO
ALTER TABLE [TeamF].[Transactions]  WITH CHECK ADD FOREIGN KEY([AccountID])
REFERENCES [TeamF].[Account] ([AccountID])
ON UPDATE CASCADE
GO
ALTER TABLE [sqluser].[AddPatient]  WITH CHECK ADD CHECK  (([gender]='Female' OR [gender]='Male'))
GO
ALTER TABLE [sqluser].[AddPatient]  WITH CHECK ADD CHECK  (([specialist]='Neurologist' OR [specialist]='Skinspecialist' OR [specialist]='manisha'))
GO
ALTER TABLE [sqluser].[Addstaff]  WITH CHECK ADD CHECK  (([Gender]='Female' OR [Gender]='Male'))
GO
ALTER TABLE [sqluser].[Addstaff]  WITH CHECK ADD CHECK  (([Position]='Receptionist' OR [Position]='Biller' OR [Position]='Biller' OR [Position]='Laboratory'))
GO
ALTER TABLE [sqluser].[Bill]  WITH CHECK ADD CHECK  (([Test]='BloodTest' OR [Test]='Haemtology'))
GO
ALTER TABLE [sqluser].[Lab]  WITH CHECK ADD CHECK  (([Test]='BloodTest' OR [Test]='Haemtology' OR [Test]='MRI scan'))
GO
ALTER TABLE [Team_D].[Product]  WITH CHECK ADD  CONSTRAINT [PPriceNotNegative] CHECK  (([ProductUnitPrice]>(0)))
GO
ALTER TABLE [Team_D].[Product] CHECK CONSTRAINT [PPriceNotNegative]
GO
ALTER TABLE [Team_D].[Product]  WITH CHECK ADD  CONSTRAINT [PTypeIN] CHECK  (([ProductType]='Tonic Water' OR [ProductType]='Juice' OR [ProductType]='Energy Drink' OR [ProductType]='Soft Drink' OR [ProductType]='Mocktail'))
GO
ALTER TABLE [Team_D].[Product] CHECK CONSTRAINT [PTypeIN]
GO
ALTER TABLE [Team_D].[ProductOrderDetails]  WITH CHECK ADD  CONSTRAINT [Price_constraint] CHECK  (([ProductTotalPrice]>(0.0)))
GO
ALTER TABLE [Team_D].[ProductOrderDetails] CHECK CONSTRAINT [Price_constraint]
GO
ALTER TABLE [Team_D].[ProductOrderDetails]  WITH CHECK ADD  CONSTRAINT [Prod_quantity_constraint] CHECK  (([ProductQuantity]>(0.0)))
GO
ALTER TABLE [Team_D].[ProductOrderDetails] CHECK CONSTRAINT [Prod_quantity_constraint]
GO
ALTER TABLE [Team_D].[ProductOrderDetails]  WITH CHECK ADD  CONSTRAINT [Unit_price_constraint] CHECK  (([ProductUnitPrice]>(0.0)))
GO
ALTER TABLE [Team_D].[ProductOrderDetails] CHECK CONSTRAINT [Unit_price_constraint]
GO
ALTER TABLE [Team_D].[ProductOrders]  WITH CHECK ADD  CONSTRAINT [Amount_constraint] CHECK  (([ProductOrderAmount]>(0.0)))
GO
ALTER TABLE [Team_D].[ProductOrders] CHECK CONSTRAINT [Amount_constraint]
GO
ALTER TABLE [Team_D].[ProductOrders]  WITH CHECK ADD  CONSTRAINT [quantity_constraint] CHECK  (([TotalQuantity]>(0.0)))
GO
ALTER TABLE [Team_D].[ProductOrders] CHECK CONSTRAINT [quantity_constraint]
GO
ALTER TABLE [Team_D].[RawMaterial]  WITH CHECK ADD  CONSTRAINT [RMPriceNotNegative] CHECK  (([RawMaterialUnitPrice]>(0)))
GO
ALTER TABLE [Team_D].[RawMaterial] CHECK CONSTRAINT [RMPriceNotNegative]
GO
ALTER TABLE [Team_D].[Rawmaterialorder]  WITH CHECK ADD  CONSTRAINT [k_RM_price] CHECK  (([RawMaterialTotalPrice]>(0)))
GO
ALTER TABLE [Team_D].[Rawmaterialorder] CHECK CONSTRAINT [k_RM_price]
GO
ALTER TABLE [Team_D].[Rawmaterialorder]  WITH CHECK ADD  CONSTRAINT [k_RM_quantity] CHECK  (([RawMaterialTotalQuantity]>(0)))
GO
ALTER TABLE [Team_D].[Rawmaterialorder] CHECK CONSTRAINT [k_RM_quantity]
GO
ALTER TABLE [TeamA].[OrderDetails]  WITH CHECK ADD CHECK  (([DiscountedUnitPrice]>(0)))
GO
ALTER TABLE [TeamA].[OrderDetails]  WITH CHECK ADD CHECK  (([Quantity]>(0)))
GO
ALTER TABLE [TeamA].[OrderDetails]  WITH CHECK ADD CHECK  (([TotalPrice]>(0)))
GO
ALTER TABLE [TeamA].[Orders]  WITH CHECK ADD CHECK  (([ChannelOfSale]='Online' OR [ChannelOfSale]='Offline'))
GO
ALTER TABLE [TeamA].[Orders]  WITH CHECK ADD CHECK  (([TotalAmount]>(0)))
GO
ALTER TABLE [TeamA].[Orders]  WITH CHECK ADD CHECK  (([TotalQuantity]>(0)))
GO
ALTER TABLE [TeamA].[Products]  WITH CHECK ADD  CONSTRAINT [ck_TeamA_Products_CostPriceCanNotBeNegative] CHECK  (([CostPrice]>=(0)))
GO
ALTER TABLE [TeamA].[Products] CHECK CONSTRAINT [ck_TeamA_Products_CostPriceCanNotBeNegative]
GO
ALTER TABLE [TeamA].[Products]  WITH CHECK ADD  CONSTRAINT [ck_TeamA_Products_DiscountPercentageCanNotBeNegative] CHECK  (([DiscountPercentage]>=(0)))
GO
ALTER TABLE [TeamA].[Products] CHECK CONSTRAINT [ck_TeamA_Products_DiscountPercentageCanNotBeNegative]
GO
ALTER TABLE [TeamA].[Products]  WITH CHECK ADD  CONSTRAINT [ck_TeamA_Products_SellingPriceCanNotBeNegative] CHECK  (([SellingPrice]>=(0)))
GO
ALTER TABLE [TeamA].[Products] CHECK CONSTRAINT [ck_TeamA_Products_SellingPriceCanNotBeNegative]
GO
ALTER TABLE [TeamA].[Retailers]  WITH CHECK ADD CHECK  (([RetailerDiscountPercentage]>=(0)))
GO
ALTER TABLE [TeamA].[ReturnDetails]  WITH CHECK ADD CHECK  (([Quantity]>=(0)))
GO
ALTER TABLE [TeamA].[ReturnDetails]  WITH CHECK ADD CHECK  (([ReasonOfReturn]='Incomplete' OR [ReasonOfReturn]='Wrong'))
GO
ALTER TABLE [TeamA].[ReturnDetails]  WITH CHECK ADD CHECK  (([TotalPrice]>(0)))
GO
ALTER TABLE [TeamA].[ReturnDetails]  WITH CHECK ADD CHECK  (([UnitPrice]>(0)))
GO
ALTER TABLE [TeamA].[ReturnTable]  WITH CHECK ADD CHECK  (([ChannelOfReturn]='Online' OR [ChannelOfReturn]='Offline'))
GO
ALTER TABLE [TeamA].[ReturnTable]  WITH CHECK ADD CHECK  (([ReturnAmount]>(0)))
GO
ALTER TABLE [TeamA].[SalesPersons]  WITH CHECK ADD  CONSTRAINT [ck_TeamA_SalesPersons_CheckIfBirthDateIsAfter1950] CHECK  (([Birthdate]>='1950-01-01' AND [Birthdate]<='2012-01-01'))
GO
ALTER TABLE [TeamA].[SalesPersons] CHECK CONSTRAINT [ck_TeamA_SalesPersons_CheckIfBirthDateIsAfter1950]
GO
ALTER TABLE [TeamB].[Product]  WITH CHECK ADD  CONSTRAINT [PCategoryIN] CHECK  (([ProductCategory]='Golf Equipment' OR [ProductCategory]='Mountaineering Equipment' OR [ProductCategory]='Personal Accessories' OR [ProductCategory]='Outdoor Protection' OR [ProductCategory]='Camping Equipment'))
GO
ALTER TABLE [TeamB].[Product] CHECK CONSTRAINT [PCategoryIN]
GO
ALTER TABLE [TeamB].[Product]  WITH CHECK ADD  CONSTRAINT [PPriceNotNegative] CHECK  (([ProductPrice]>(0)))
GO
ALTER TABLE [TeamB].[Product] CHECK CONSTRAINT [PPriceNotNegative]
GO
ALTER TABLE [TeamE].[CarLoan]  WITH CHECK ADD CHECK  (([LoanAmount]>=(0)))
GO
ALTER TABLE [TeamE].[CarLoan]  WITH CHECK ADD CHECK  (([LoanDuration]>=(0)))
GO
ALTER TABLE [TeamE].[CarLoan]  WITH CHECK ADD CHECK  (([LoanStatus]='Pending' OR [LoanStatus]='Approved' OR [LoanStatus]='Rejected'))
GO
ALTER TABLE [TeamE].[Customer]  WITH CHECK ADD CHECK  (([AnnualIncome]>(0)))
GO
ALTER TABLE [TeamE].[Customer]  WITH CHECK ADD CHECK  (([WorkExperience]>(0)))
GO
ALTER TABLE [TeamE].[EducationLoan]  WITH CHECK ADD CHECK  (([LoanAmount]>=(0)))
GO
ALTER TABLE [TeamE].[EducationLoan]  WITH CHECK ADD CHECK  (([LoanDuration]>=(0)))
GO
ALTER TABLE [TeamE].[EducationLoan]  WITH CHECK ADD CHECK  (([LoanStatus]='Pending' OR [LoanStatus]='Approved' OR [LoanStatus]='Rejected'))
GO
ALTER TABLE [TeamE].[FixedAccount]  WITH CHECK ADD CHECK  ((len([AccountNo])=(10)))
GO
ALTER TABLE [TeamE].[FixedAccount]  WITH CHECK ADD CHECK  (([AccountType]='Fixed'))
GO
ALTER TABLE [TeamE].[FixedAccount]  WITH CHECK ADD CHECK  (([Branch]='Delhi' OR [Branch]='Mumbai' OR [Branch]='Chennai' OR [Branch]='Bengaluru'))
GO
ALTER TABLE [TeamE].[FixedAccount]  WITH CHECK ADD CHECK  (([CurrentBalance]>=(0)))
GO
ALTER TABLE [TeamE].[FixedAccount]  WITH CHECK ADD CHECK  (([FDDeposit]>(0)))
GO
ALTER TABLE [TeamE].[FixedAccount]  WITH CHECK ADD CHECK  (([InterestRate]>=(0)))
GO
ALTER TABLE [TeamE].[FixedAccount]  WITH CHECK ADD CHECK  (([MinimumBalance]>=(0)))
GO
ALTER TABLE [TeamE].[FixedAccount]  WITH CHECK ADD CHECK  (([Status]='Active' OR [Status]='Closed'))
GO
ALTER TABLE [TeamE].[FixedAccount]  WITH CHECK ADD CHECK  (([tenure]>(0)))
GO
ALTER TABLE [TeamE].[HomeLoan]  WITH CHECK ADD CHECK  (([LoanAmount]>=(0)))
GO
ALTER TABLE [TeamE].[HomeLoan]  WITH CHECK ADD CHECK  (([LoanDuration]>=(0)))
GO
ALTER TABLE [TeamE].[HomeLoan]  WITH CHECK ADD CHECK  (([LoanStatus]='Pending' OR [LoanStatus]='Approved' OR [LoanStatus]='Rejected'))
GO
ALTER TABLE [TeamE].[PersonalLoan]  WITH CHECK ADD CHECK  (([LoanAmount]>=(0)))
GO
ALTER TABLE [TeamE].[PersonalLoan]  WITH CHECK ADD CHECK  (([LoanDuration]>=(0)))
GO
ALTER TABLE [TeamE].[PersonalLoan]  WITH CHECK ADD CHECK  (([LoanStatus]='Pending' OR [LoanStatus]='Approved' OR [LoanStatus]='Rejected'))
GO
ALTER TABLE [TeamE].[RegularAccount]  WITH CHECK ADD CHECK  ((len([AccountNo])=(10)))
GO
ALTER TABLE [TeamE].[RegularAccount]  WITH CHECK ADD CHECK  (([AccountType]='Savings' OR [AccountType]='Current'))
GO
ALTER TABLE [TeamE].[RegularAccount]  WITH CHECK ADD CHECK  (([Branch]='Delhi' OR [Branch]='Mumbai' OR [Branch]='Chennai' OR [Branch]='Bengaluru'))
GO
ALTER TABLE [TeamE].[RegularAccount]  WITH CHECK ADD CHECK  (([CurrentBalance]>=(0)))
GO
ALTER TABLE [TeamE].[RegularAccount]  WITH CHECK ADD CHECK  (([InterestRate]>=(0)))
GO
ALTER TABLE [TeamE].[RegularAccount]  WITH CHECK ADD CHECK  (([MinimumBalance]>=(0)))
GO
ALTER TABLE [TeamE].[RegularAccount]  WITH CHECK ADD CHECK  (([Status]='Active' OR [Status]='Closed'))
GO
ALTER TABLE [TeamE].[Transactions]  WITH CHECK ADD CHECK  (([Ammount]>(0)))
GO
ALTER TABLE [TeamE].[Transactions]  WITH CHECK ADD CHECK  (([TransactionType]='Credit' OR [TransactionType]='Debit' OR [TransactionType]='Transfer'))
GO
/****** Object:  StoredProcedure [dbo].[AddAdmin]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--Creation of a stored procedure AddAdmin which adds Admin to the Admins Table.
Create Procedure [dbo].[AddAdmin]
(
	--Parameters for the AddAdmin procedure
	@AdminID uniqueidentifier,
	@AdminName varchar(50),
	@Email varchar(50),
	@Password varchar(20),
	@CreationDateTime DateTime,
	@LastModifiedDateTime DateTime
)
as
begin 
	--Validation of the parameters
	if @AdminID is null OR @AdminID = ''
		throw 5001,'Invalid Admin ID',1
	if @AdminName is null OR @AdminName = ''
		throw 5001,'Invalid Admin Name',1
	if @Email is null OR @Email = ''
		throw 5001,'Invalid Admin Name',1
	if @Password is null OR @Password = ''
		throw 5001, 'Invalid Admin Password',1
	if @CreationDateTime is null OR @CreationDateTime = ''
	    throw 5001, 'Invalid Creation Date and Time',1
	if @LastModifiedDateTime is null OR @LastModifiedDateTime = ''
		throw 5001, 'Invalid Last Modified Date and Time',1

	
	--Inserting the values to the admins table. 
	insert into TeamA.Admins
	values 
	(@AdminID,@AdminName,@Email,@Password,
	@CreationDateTime,@LastModifiedDateTime)
end
GO
/****** Object:  StoredProcedure [dbo].[AddOfflineOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddOfflineOrder](@retailerID varchar(30),@salesPersonID varchar(30), @totalOrderAmount money, @totalQuantity int)

as 
begin

if @retailerID is null OR @retailerID = ''
   throw 50001, 'Invalid Retailer ID', 2

if @salesPersonID is null OR @salesPersonID = ''
   throw 50002, 'Invalid SalesPerson ID', 3

if @totalOrderAmount < 1
   throw 50003, 'Total Order Amount cannot be negative', 4

if @totalQuantity < 1
   throw 50004, 'Total Quantity cannot be negative', 5

Declare @offlineOrderID varchar(36) , @CreationDateTime DateTime , @LastModifiedDateTime DateTime 
set @offlineOrderID = Cast(newid() as varchar(36))
Set @CreationDateTime = SYSDATETIME()
Set @LastModifiedDateTime = SYSDATETIME()


Insert into  TeamB.OfflineOrders(OfflineOrderID, RetailerID, SalesPersonID, TotalOfflineOrderAmount,
				TotalQuantity,CreationDateTime,LastModifiedDateTime) 
  
   values(@offlineOrderID, @retailerID, @salesPersonID, @totalOrderAmount,
				@totalQuantity,@CreationDateTime,@LastModifiedDateTime)

end
GO
/****** Object:  StoredProcedure [dbo].[AddOfflineOrderDetail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddOfflineOrderDetail](@offlineOrderID uniqueidentifier,@productID uniqueidentifier,@productName varchar(30), @Quantity int, @unitPrice money,@totalPrice money)

as 
begin

if @productID is null OR @productID = ''
   throw 50001, 'Invalid product ID', 1

if @ProductName is null OR @productName = ''
   throw 50002, 'Invalid Product Name', 2

if @Quantity < 1
   throw 50003, 'Total Order Amount cannot be negative', 3

if @unitPrice< 1
   throw 50004, 'Total Quantity cannot be negative', 4

if @totalPrice< 1
   throw 50005, 'Total Quantity cannot be negative', 5

if @offlineOrderID is null OR @offlineOrderID = ''
   throw 50006, 'Invalid OfflineOrder ID', 6

Declare @offlineOrderDetailID varchar(36) , @CreationDateTime DateTime , @LastModifiedDateTime DateTime 
set @offlineOrderDetailID = Cast(newid() as uniqueidentifier)
Set @CreationDateTime = SYSDATETIME()
Set @LastModifiedDateTime = SYSDATETIME()
Set @totalPrice = @Quantity * @unitPrice


Insert into  TeamB.OfflineOrderDetails(OfflineOrderDetailID, ProductID, OfflineOrderID, TotalPrice,UnitPrice,
				Quantity,CreationDateTime,LastModifiedDateTime) 
  
   values(@offlineOrderDetailID, @productID, @offlineOrderID, @totalPrice,@unitPrice,
				@Quantity,@CreationDateTime,@LastModifiedDateTime)

end

GO
/****** Object:  StoredProcedure [dbo].[AddOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AddOrder](@orderId uniqueidentifier, @retailerId uniqueidentifier, @dateOfOrder datetime, @totalQuantity int, @orderAmount money, @lastModifiedDate datetime)
as
 begin
	
	if @retailerID is null OR @retailerID = ''
			   throw 50001, 'Invalid Retailer ID', 2

	if @orderAmount < 1
			   throw 50003, 'Total Order Amount cannot be negative', 4
	
	if @totalQuantity < 1
			   throw 50004, 'Total Quantity cannot be negative', 5

insert into TeamB.OrdersTable (RetailerId, DateOfOrder, TotalQuantity, OrderAmount, LastModifiedDateTime) values (@retailerId, @dateOfOrder, @totalQuantity, @orderAmount, @lastModifiedDate)			
 return @@ROWCOUNT
end
GO
/****** Object:  StoredProcedure [dbo].[AddOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[AddOrderDetails](@orderId uniqueidentifier,@orderDetailID uniqueidentifier, @productId uniqueidentifier,  @productQuantityOrdered int, @productPrice money, @addressId uniqueidentifier, @totalAmount money, @dateOfOrder datetime, @lastModifiedDate datetime)
as
 begin
	if @productID is null OR @productID = ''
	   throw 50001, 'Invalid product ID', 1

	if @productQuantityOrdered < 1
	   throw 50002, 'Total Order Amount cannot be negative', 3

	if @productPrice< 1
	   throw 50003, 'Total Quantity cannot be negative', 4

	if @totalAmount< 1
	   throw 50004, 'Total Quantity cannot be negative', 5

	if @orderDetailID is null OR @orderDetailID = ''
	   throw 50005, 'Invalid OfflineOrder ID', 6

	if @addressId is null OR @addressId = ''
	   throw 50006, 'Invalid Address ID', 6

insert into TeamB.OrderDetailsTable (OrderId, OrderDetailId, ProductID, ProductQuantityOrdered, ProductPrice, AddressId, TotalAmount, DateOfOrder, LastModifiedDateTime ) values (@orderId, @orderDetailId, @productId, @productQuantityOrdered, @productPrice, @addressId, @totalAmount, @dateOfOrder, @lastModifiedDate)
	return @@ROWCOUNT
 end
GO
/****** Object:  StoredProcedure [dbo].[AddProduct]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AddProduct] (@ProductID uniqueidentifier,@ProductName varchar(15), @ProductNumber int, @ProductCategory varchar(25),
 @ProductColor varchar(30), @ProductSize varchar(15), @ProductMaterial varchar(30),@ProductPrice money )

as
BEGIN

	begin try

		insert into TeamB.Product values
		(@ProductID,@ProductName,@ProductNumber,@ProductCategory,@ProductColor,@ProductSize,@ProductMaterial,@ProductPrice,sysdatetime(),sysdatetime())

	end try

	begin catch 

		throw 500000, 'Product not added',1

	end catch

END
GO
/****** Object:  StoredProcedure [dbo].[AddProductOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AddProductOrderDetails](@ProductOrderDetailID varchar(40),@ProductOrderID varchar(40), @ProductID varchar(40),@DistributorID varchar(40) , @ProductTotalPrice decimal,@ProductQuantity decimal, @ProductUnitPrice decimal)
as 
begin
if @ProductOrderDetailID IS NULL OR @ProductOrderDetailID =''
throw 500001,'Invalid ProductOrderDetailID',1
if @ProductOrderID IS NULL OR @ProductOrderID =''
throw 500001,'Invalid ProductOrderID',1
if @DistributorID IS NULL OR @DistributorID=''
throw 500001,'Invalid Distributor ID',2
if @ProductTotalPrice<=0
throw 500001,'Product Total Price should be greater than or equal to zero',3
if @ProductQuantity <=0
throw 500001,'Product Quantity should be greater than or equal to zero',4
if @ProductUnitPrice<=0 
throw 500001,'ProductUnitPrice should be greater than or equal to zero',5
if @ProductID IS NULL
throw 500001,'Invalid ProductID',1

insert into Team_D.ProductOrderDetails(ProductOrderDetailID, ProductOrderID,ProductID,ProductTotalPrice,ProductQuantity,ProductUnitPrice)
values (@ProductOrderDetailID,@ProductOrderID,@ProductID,@ProductTotalPrice,@ProductQuantity,@ProductUnitPrice)
end
--PROCEDURE CREATED
GO
/****** Object:  StoredProcedure [dbo].[AddRawmaterialOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE  procedure [dbo].[AddRawmaterialOrder] ( @RawMaterialOrderID varchar(30), @RawMaterialOrderDate datetime,@SupplierID varchar(30),
 @RawMaterialTotalPrice decimal, @RawMaterialTotalQuantity  decimal)
--procedure to add a raw material order into table
--Developed by Ritwik on 30/09/2019
 as 
 begin
 if isnull(@RawMaterialTotalPrice,0) = 0
   throw 50001, 'raw material total price cannot be 0 ', 1
 if isnull(@RawMaterialTotalQuantity,0) = 0
 throw 50002, 'raw material total quantity cannot be 0', 1
 if @RawMaterialTotalPrice <0
   throw 50003, 'raw material total price cannot be negative ', 1
 if @RawMaterialTotalQuantity <0 
 throw 50004, 'raw material total quantity cannot be negative', 1
 insert into Team_D.Rawmaterialorder(CreationDateTime, LastmodifiedDateTime,RawMaterialOrderID , RawMaterialOrderDate ,SupplierID ,
 RawMaterialTotalPrice , RawMaterialTotalQuantity)
 values ( sysdatetime(), sysdatetime(),@RawMaterialOrderID , @RawMaterialOrderDate,@SupplierID ,
 @RawMaterialTotalPrice, @RawMaterialTotalQuantity)
 end
GO
/****** Object:  StoredProcedure [dbo].[AddSupplier]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AddSupplier](@supID int, @supName varchar(40), @supMob char(10),@supEmail varchar(50) ,@supPass varchar(15))
as 
begin
if @supID IS NULL OR @supID=''
throw 50001,'Invalid SupplierID',1
if exists (select SupplierID from supplier where SupplierID=@supID)
if @supName IS NULL OR @supName=''
throw 50001,'Invalid Supplier name',2
if exists (select SupplierName from supplier where supplierName=@supName)
if @supMob IS NULL OR @supMob=''
throw 50001,'Invalid Mobile number',3
if exists (select supplierMobile from supplier where supplierMobile=@supMob)
if @supEmail IS NULL OR @supEmail=''
throw 50001,'Invalid Supplier Email',4
if exists (select supplierEmail from supplier where supplierEmail=@supEmail)
if @supPass IS NULL OR @supPass=''
throw 50001,'Invalid Supplier password',5

insert into supplier(supplierID,supplierName,supplierMobile,supplierEmail, supplierPassword,creationDateTime,lastmodifiedDateTime)
values (@supID,@supName,@supMob,@supEmail,@supPass,sysdatetime(),sysdatetime())

end
GO
/****** Object:  StoredProcedure [dbo].[AddSupplierAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AddSupplierAddress](@supAdID uniqueidentifier, @supID uniqueidentifier, @AdLine1 char(255),@AdLine2 varchar(255) ,@pcode varchar(15),@city varchar(20),@State varchar(20) )
--Created by Pushpraj kaushik on 4/10/19
--created procedure for adding the supplier address 
as 
begin
if @supAdID IS NULL OR @supAdID=''
throw 50001,'Invalid Supplier addressID',1
if @supID IS NULL OR @supID=''
throw 50001,'Invalid Supplier ID',2
if @AdLine1 IS NULL OR @AdLine1=''
throw 50001,'Invalid Adress line1',3
if @AdLine2 IS NULL OR @AdLine2=''
throw 50001,'Invalid Address line2',4
if @pcode IS NULL OR @pcode=''
throw 50001,'Invalid PinCode',5
if @city IS NULL OR @city=''
throw 50001,'Invalid City name',6
if @State IS NULL OR @State=''
throw 50001,'Invalid State name',7


insert into Team_D.supplierAddress(SupplierAddressID,SupplierID,AddressLine1,AddressLine2,PinCode,City,State )
values (@supAdID,@supID,@AdLine1,@AdLine2,@pcode,@city,@State)
end
GO
/****** Object:  StoredProcedure [dbo].[ChangeFDDeposit]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ChangeFDDeposit](@AccountID uniqueidentifier,@FdDeposit money)
as
begin

--If AccountID Null then throw exception
if(@AccountID = '')
throw 50000,'AccountID cannot be Null',1

 --Throw exception if  deposit is less than 20000
if(@FdDeposit < 20000)
throw 50000,'Minimum FD Deposit is 20000',1;


Update TeamF.FixedDeposit 
set FdDeposit = @FdDeposit where AccountID = @AccountID;
end
GO
/****** Object:  StoredProcedure [dbo].[ChangeFixedAccountBranch]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ChangeFixedAccountBranch](@AccountNo char(10),@Branch varchar(30))

as 
begin

		---THROWING EXCEPTION IF ACCOUNT No IS NULL OR INVALID
		if @AccountNo is null OR @AccountNo NOT LIKE '2%'
			throw 50001,'Invalid Account No',1

		---THROWING EXCEPTION IF THE ACCOUNT DOESN'T EXISTS
		if NOT EXISTS(SELECT * from TeamE.FixedAccount WHERE AccountNo = @AccountNo)
			throw 50001,'Account does not exists',1

		---THROWING EXCEPTION IF THE HOME BRANCH ENTERED IS NOT VALID
		if @Branch NOT IN ('Mumbai','Delhi','Chennai','Bengaluru')
			throw 50001,'Home branch entered is invalid',1

		---CHANGING THE HOME BRANCH IF ACCOUNT NO MATCHES
		update TeamE.FixedAccount
		set Branch = @Branch where ((AccountNo = @AccountNo)AND(Branch IN ('Mumbai','Delhi','Chennai','Bengaluru')))



end

GO
/****** Object:  StoredProcedure [dbo].[ChangeRegularAccountBranch]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ChangeRegularAccountBranch](@AccountNo char(10),@Branch varchar(30))

as 
begin

		---THROWING EXCEPTION IF ACCOUNT No IS NULL OR INVALID
		if @AccountNo is null OR @AccountNo NOT LIKE '1%'
			throw 50001,'Invalid Account No',1
					
		---THROWING EXCEPTION IF THE ACCOUNT DOESN'T EXISTS
		if NOT EXISTS(SELECT * from TeamE.RegularAccount WHERE AccountNo = @AccountNo)
			throw 50001,'Account does not exists',1

		---THROWING EXCEPTION IF THE HOME BRANCH ENTERED IS NOT VALID
		if @Branch NOT IN ('Mumbai','Delhi','Chennai','Bengaluru')
			throw 50001,'Home branch entered is invalid',1

		---CHANGING THE HOME BRANCH IF ACCOUNT NO MATCHES
		update TeamE.RegularAccount
		set Branch = @Branch where ((AccountNo = @AccountNo)AND(Branch IN ('Mumbai','Delhi','Chennai','Bengaluru')))

end

GO
/****** Object:  StoredProcedure [dbo].[ChangeRegularAccountType]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ChangeRegularAccountType](@AccountNo char(10),@AccountType varchar(10))

as 
begin
		
		---THROWING EXCEPTION IF THE ACCOUNT NO ENTERED BELONGS TO FIXED ACCOUNT TABLE
		if EXISTS(SELECT * from TeamE.FixedAccount WHERE AccountNo = @AccountNo) 
			throw 50001,'Fixed accounts cannot be modified into other account types',1


		---THROWING EXCEPTION IF ACCOUNT No IS NULL OR INVALID
		if @AccountNo is null OR @AccountNo NOT LIKE '1%'
			throw 50001,'Invalid Account No',1

		---THROWING EXCEPTION IF THE ACCOUNT DOESN'T EXISTS
		if NOT EXISTS(SELECT * from TeamE.RegularAccount WHERE AccountNo = @AccountNo)
			throw 50001,'Regular Account does not exists',1
		
		

		---THROWING EXCEPTION IF THE ACCOUNT TYPE ENTERED IS NOT VALID
		if @AccountType NOT IN ('SAVINGS','CURRENT')
			throw 50001,'Account Type entered is invalid',1

		---CHANGING THE ACCOUNT TYPE IF ACCOUNT NO MATCHES
		update TeamE.RegularAccount
		set AccountType = @AccountType where ((AccountNo = @AccountNo)AND(AccountType IN ('Savings','Current')))


end

GO
/****** Object:  StoredProcedure [dbo].[CreateFixedAccount]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CreateFixedAccount]
(@CustomerID uniqueidentifier,@Branch varchar(30),@Tenure decimal,@FDDeposit money,@MinimumBalance money,@InterestRate decimal)
as
begin

		---THROWING EXCEPTION IF CUSTOMER ID IS NULL
		if @CustomerID IS null
			throw 50001,'Invalid Customer ID',1

		---GENERATING ACCOUNT ID
		declare @AccountID uniqueidentifier
			set @AccountID = NEWID()
		
		---GENERATING ACCOUNT NO
		declare @acount int,@AccountNo char(10)
			set @acount = (select count(*) from TeamE.FixedAccount)
			set @AccountNo = (SELECT CONVERT(char(10),(2000000001 + @acount)))

		---THROWING EXCEPTION IF HOME BRANCH IS INVALID OR NULL
		if @Branch NOT IN('Mumbai','Delhi','Chennai','Bengaluru')
			throw 50001,'Invalid Branch',7

		---THROWING EXCEPTION IF TENURE IS INVALID 
		if @Tenure <= 0 
			throw 50001, 'Invalid Tenure',5

		---THROWING EXCEPTION IF FDDEPOSIT AMOUNT IS INVALID 
		if @FDDeposit <= 0 
			throw 50001, 'Invalid FDDeposit Amount',5

			INSERT INTO TeamE.FixedAccount(AccountID, CustomerID, AccountNo,Branch,Tenure,FDDeposit,MinimumBalance,InterestRate)VALUES(@AccountID, @CustomerID, @AccountNo,
	@Branch,@Tenure,@FDDeposit,@MinimumBalance,@InterestRate)

	SELECT @@ROWCOUNT,@AccountNo
end


GO
/****** Object:  StoredProcedure [dbo].[CreateRegularAccount]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CreateRegularAccount]
(@CustomerID uniqueidentifier,@AccountType varchar(10),@Branch varchar(30),@MinimumBalance money,@InterestRate decimal)
as
begin

		---THROWING EXCEPTION IF CUSTOMER ID IS NULL
		if @CustomerID IS null
			throw 50001,'Invalid Customer ID',1
		
		---GENERATING ACCOUNT ID
		declare @AccountID uniqueidentifier
			set @AccountID = NEWID()
		
		---GENERATING ACCOUNT NO
		declare @acount int,@AccountNo char(10)
			set @acount = (select count(*) from TeamE.RegularAccount)
			set @AccountNo = (SELECT CONVERT(char(10),(1000000001 + @acount)))

		---THROWING EXCEPTION IF ACCOUNT TYPE IS NOT SAVINGS OR CURRENT
		if @AccountType NOT IN('Savings','Current')
			throw 50001,'Invalid Account Type',6

		---THROWING EXCEPTION IF HOME BRANCH IS INVALID OR NULL
		if @Branch NOT IN('Mumbai','Delhi','Chennai','Bengaluru')
			throw 50001,'Invalid Branch',7

			INSERT INTO TeamE.RegularAccount(AccountID, CustomerID, AccountNo,
	AccountType ,Branch,MinimumBalance,InterestRate)VALUES(@AccountID, @CustomerID, @AccountNo,
	@AccountType ,@Branch,@MinimumBalance,@InterestRate)

	SELECT @@ROWCOUNT,@AccountNo
end

GO
/****** Object:  StoredProcedure [dbo].[CreditBalance]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CreditBalance](@accountID uniqueidentifier, @amount money)
as
begin
update TeamF.Account
set AccountBalance = AccountBalance + @amount
where AccountID = @accountID
end
GO
/****** Object:  StoredProcedure [dbo].[DebitBalance]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DebitBalance](@accountID uniqueidentifier, @amount money)
as
begin
update TeamF.Account
set AccountBalance = AccountBalance - @amount
where AccountID = @accountID
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteDistributor]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DeleteDistributor](@distributorID varchar(30))
as
 --Procedure to delete distributor from table.
--Developed by Sowrasree Banerjee on 01-10-2019 
begin
begin try
DELETE FROM prod.Distributor WHERE DistributorID=@distributorID
end try
begin catch
PRINT @@ERROR;
throw 500001,'invalid values fetched',3
return 0
end catch
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteDistributorAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[DeleteDistributorAddress](@distributoraddID uniqueidentifier)
as
 --Procedure to delete distributor from table.
--Developed by Sowrasree Banerjee on 01-10-2019 
begin
begin try
DELETE FROM Team_D.DistributorAddress WHERE DistributorAddressID=@distributoraddID
end try
begin catch
PRINT @@ERROR;
throw 500001,'invalid values fetched',3
return 0
end catch
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteFixedAccount]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DeleteFixedAccount](@AccountNo char(10))

as 
begin

		---THROWING EXCEPTION IF ACCOUNT No IS NULL OR INVALID
		if @AccountNo is null OR @AccountNo NOT LIKE '2%'
			throw 50001,'Invalid Account No',1

		---THROWING EXCEPTION IF THE ACCOUNT DOESN'T EXISTS
		if NOT EXISTS(SELECT * from TeamE.FixedAccount WHERE AccountNo = @AccountNo)
			throw 50001,'Account does not exists',1

		---SETTING THE VALUE OF STATUS FROM "ACTIVE" TO "CLOSED"
		update TeamE.FixedAccount
		set Status = 'Closed' where AccountNo = @AccountNo;

end

GO
/****** Object:  StoredProcedure [dbo].[DeleteOfflineOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[DeleteOfflineOrder](@OfflineOrderid VARCHAR(30))
AS
BEGIN
   begin try
		Delete from TeamB.OfflineOrders where OfflineOrderID = @OfflineOrderid
   end try
   begin catch
		PRINT @@ERROR;
	    throw 50000, 'Invalid Values fetched',5
	    return 0
   end catch
end

GO
/****** Object:  StoredProcedure [dbo].[DeleteOfflineOrderDetail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[DeleteOfflineOrderDetail](@OfflineOrderdetailid uniqueidentifier)
AS
BEGIN
   begin try
		Delete from TeamB.OfflineOrderDetails where OfflineOrderDetailID = @OfflineOrderdetailid
   end try
   begin catch
		PRINT @@ERROR;
	    throw 50000, 'Invalid Values fetched',5
	    return 0
   end catch
end

GO
/****** Object:  StoredProcedure [dbo].[DeleteOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[DeleteOrder](@orderId uniqueidentifier)
as
 begin
	begin try
		delete from TeamB.OrdersTable where OrderId=@orderId
		delete from TeamB.OrderDetailstable where OrderId=@orderId
	end try
	begin catch
		PRINT @@ERROR;
	    throw 50000, 'Invalid Values',5
	    return 0
	end catch
 end
 return @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[DeleteOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DeleteOrderDetails](@orderdetailid uniqueidentifier)
as
 begin
	begin try
		delete from TeamB.OrderDetailsTable where OrderDetailId=@orderdetailid
	end try
	begin catch
		throw 500000,'Invalid Orderdetails Id',1
	end catch
 end
 return @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DeleteProduct](@ProductID uniqueidentifier)
as 
BEGIN
begin try
	if exists(select ProductID from TeamB.Product where ProductID = @ProductID) 
		delete from TeamB.Product where ProductID = @ProductID
	else
		throw 500002, 'Product does not exist',1 
end try
begin catch
	throw 500003, 'Unable to fetch product',1
end catch
END
GO
/****** Object:  StoredProcedure [dbo].[deleteProducts]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[deleteProducts](@productID varchar(50), @productName varchar(100))
as
begin
delete TeamC.ProductsInventory where ProductID = @productID or ProductName = @productName
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteRawMaterial]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeleteRawMaterial](@rawmaterialid varchar(36))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to delete a raw material
begin
	if exists (select RawMaterialID from Team_D.RawMaterial where RawMaterialID = @rawmaterialid)
		begin
			delete from Team_D.RawMaterial
			where RawMaterialID = @rawmaterialid
		end
	else
		throw 50004, 'Raw Material Code does not exists', 1
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteRawMaterialOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeleteRawMaterialOrder](@RawMaterialOrderID varchar(40) )
as 
--Procedure to delete RawMaterial Order
--Developed by Ritwik on 30/09/2019
begin
	begin try
		DELETE FROM Team_D.RawMaterialOrder where RawMaterialOrderID=@RawMaterialOrderID
	end try
	begin catch
	PRINT @@ERROR;
		throw 500001,'Invalid Values Fetched',3
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteRegularAccount]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DeleteRegularAccount](@AccountNo char(10))

as 
begin

		---THROWING EXCEPTION IF ACCOUNT No IS NULL OR INVALID
		if @AccountNo is null OR @AccountNo NOT LIKE '1%'
			throw 50001,'Invalid Account No',1

		---THROWING EXCEPTION IF THE ACCOUNT DOESN'T EXISTS
		if NOT EXISTS(SELECT * from TeamE.RegularAccount WHERE AccountNo = @AccountNo)
			throw 50001,'Account does not exists',1

		---SETTING THE VALUE OF STATUS FROM "ACTIVE" TO "CLOSED"
		update TeamE.RegularAccount
		set Status = 'Closed' where AccountNo = @AccountNo;

end
GO
/****** Object:  StoredProcedure [dbo].[DeleteSupplier]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PROCEDURE CREATED
create procedure [dbo].[DeleteSupplier](@supID uniqueidentifier)
as 
--Created by Pushpraj kaushik on 4/10/19
--created procedure for deleting existing supplier
begin
	if exists (select supplierID from Team_D.supplier where supplierID=@supID)
	begin
	DELETE FROM Team_D.supplier where supplierID=@supID
	end
	else
	throw 50001,'Invalid Values Fetched',3	
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteSupplierAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[DeleteSupplierAddress](@supAdID uniqueidentifier)
--Created by Pushpraj kaushik on 4/10/19
--created procedure for deleting the supplier address
as 
begin
	if exists (select supplierAddressID from Team_D.supplierAddress where supplierAddressID=@supAdID)
	begin
	DELETE FROM Team_D.supplierAddress where supplierAddressID=@supAdID
	end
	else
	throw 50001,'Invalid Values Fetched',3
end
GO
/****** Object:  StoredProcedure [dbo].[GetAccountByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAccountByCustomerID](@CustomerID uniqueidentifier)
as 
begin

select * from TeamF.Account where CustomerID = @CustomerID;

end
GO
/****** Object:  StoredProcedure [dbo].[GetAllCustomersDAL]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  Create Procedure [dbo].[GetAllCustomersDAL]
  AS
  BEGIN
  Select * From Customers.Customer
  End
GO
/****** Object:  StoredProcedure [dbo].[GetAllDistributorAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAllDistributorAddress]
as
 --Procedure to get all distributor Address.
--Developed by Sowrasree Banerjee on 01-10-2019 
begin
begin try
select*from Team_D.DistributorAddress
end try
begin catch
PRINT @@ERROR;
throw 500001 ,'invalid values fetched ',2
return 0
end catch
end 
GO
/****** Object:  StoredProcedure [dbo].[GetAllDistributors]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAllDistributors]
as
 --Procedure to get all distributors.
--Developed by Sowrasree Banerjee on 01-10-2019 
begin
begin try
select*from Team_D.Distributor
end try
begin catch
PRINT @@ERROR;
throw 500001 ,'invalid values fetched ',2
return 0
end catch
end 
GO
/****** Object:  StoredProcedure [dbo].[GetAllFixedAccounts]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAllFixedAccounts]
as
begin

		SELECT * from TeamE.FixedAccount

end

GO
/****** Object:  StoredProcedure [dbo].[GetAllProductbyProductName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllProductbyProductName] (@ProductName varchar(100))
as
begin
--get all products by name
--created by sagar
select *from TeamC.ProductsInventory
where ProductName= @ProductName
end
GO
/****** Object:  StoredProcedure [dbo].[GetAllProductbyProductType]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllProductbyProductType] (@ProductType varchar(100))
as
begin
--get all products by type
--created by sagar
select *from ProductsInventory.Products
where ProductType= @ProductType
end
GO
/****** Object:  StoredProcedure [dbo].[GetAllProductOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllProductOrderDetails]
--Procedure to get all the product order details
--Developed by Maski Saijahnavi on 01/10/19
as 
begin 
	begin try 
	select*from Team_D.ProductOrderDetails
	end try
	begin catch
		PRINT @@ERROR;
		throw 500001,'Invalid Values Fetched',2
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [dbo].[GetAllProducts]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAllProducts]

as
BEGIN

	Select * from TeamB.Product

END
GO
/****** Object:  StoredProcedure [dbo].[GetAllRawMaterialOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllRawMaterialOrder]
as 
begin 
	begin try 
	select*from Team_D.RawMaterialOrder
	end try
	begin catch
		PRINT @@ERROR;
		throw 500001,'Invalid Values Fetched',2
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [dbo].[GetAllRawMaterials]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetAllRawMaterials]
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to list all the raw materials
begin
	select * from Team_D.RawMaterial
end
GO
/****** Object:  StoredProcedure [dbo].[GetAllRegularAccounts]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAllRegularAccounts]
as
begin

		SELECT * from TeamE.RegularAccount

end

GO
/****** Object:  StoredProcedure [dbo].[GetAllSupplier]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PROCEDURE CREATED
create procedure [dbo].[GetAllSupplier]
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting all the suppliers
as 
begin 
	begin try 
	select*from Team_D.supplier
	end try
	begin catch
		PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',2
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [dbo].[GetAllSupplierAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllSupplierAddress]
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting all the supplier address
as 
begin 
select*from Team_D.supplierAddress
end
GO
/****** Object:  StoredProcedure [dbo].[GetCreditCardsByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetCreditCardsByCustomerID](@custID uniqueIdentifier)
as
begin
	select *from TeamE.CreditCard 
 where CustomerID=@custID
 end
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerByCustomerIDDAL]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  --Create Procedure  RemoveCustomerDAL(@CustomerID varchar )
  --AS
  --Begin
  --Delete Customer From Customers.Customer
  --Where CustomerID = @CustomerID
  --END

  Create Procedure [dbo].[GetCustomerByCustomerIDDAL](@CustomerID varchar)
  AS
  BEGIN
  Select * From Customers.Customer
  Where CustomerID = @CustomerID
  END
GO
/****** Object:  StoredProcedure [dbo].[GetDistributorAddressByAdressLine1]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetDistributorAddressByAdressLine1](@disAddLine1 varchar(40))
as
 --Procedure to get Distributor Address by distributor addressLine1.
--Developed by Sowrasree Banerjee on 01-10-2019
begin
begin try
select *from Team_A.DistributorAddress where AddressLine1=@disAddLine1
end try
begin catch
Print @@ERROR;
throw 5001,'invalid values fetched',6
return 0
end catch
end 
GO
/****** Object:  StoredProcedure [dbo].[GetDistributoraddressByDistributorAddressID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetDistributoraddressByDistributorAddressID](@disAddId uniqueidentifier )
 as
  --Procedure to get distributor Address by distributor Address ID.
--Developed by Sowrasree Banerjee on 01-10-2019 
 begin 
 begin try
 SELECT * FROM Team_D.DistributorAddress where DistributorAddressID=@disAddId
 end try
 begin catch
Print  @@ERROR;
throw 5001,'invalid values fetched',5
return 0
end catch
end 
GO
/****** Object:  StoredProcedure [dbo].[GetDistributorByDistributorEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetDistributorByDistributorEmail](@Email varchar(40))
as
 --Procedure to get Distributor by distributor name.
--Developed by Sowrasree Banerjee on 01-10-2019
begin
begin try
select *from Team_D.Distributor where DistributorEmail=@Email
end try
begin catch
Print @@ERROR;
throw 5001,'invalid values fetched',6
return 0
end catch
end 
GO
/****** Object:  StoredProcedure [dbo].[GetDistributorByDistributorID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetDistributorByDistributorID](@disId uniqueidentifier)
 as
  --Procedure to get distributor by distributor ID.
--Developed by Sowrasree Banerjee on 01-10-2019 
 begin 
 begin try
 SELECT * FROM Team_D.Distributor where DistributorID=@disId
 end try
 begin catch
Print  @@ERROR;
throw 5001,'invalid values fetched',5
return 0
end catch
end 
GO
/****** Object:  StoredProcedure [dbo].[GetDistributorByDistributorName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetDistributorByDistributorName](@disName varchar(40))
as
 --Procedure to get Distributor by distributor name.
--Developed by Sowrasree Banerjee on 01-10-2019
begin
begin try
select *from prod.Distributor where DistributorName=@disName
end try
begin catch
Print @@ERROR;
throw 5001,'invalid values fetched',6
return 0
end catch
end 
GO
/****** Object:  StoredProcedure [dbo].[GetFixedAccountByAccountNo]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---CREATED PROCEDURE FOR LISTING FIXED ACCOUNT BY ACCOUNT NO

Create procedure [dbo].[GetFixedAccountByAccountNo](@AccountNo char(10)) 
as
begin

		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.FixedAccount a, TeamE.Customer c WHERE (AccountNo = @AccountNo) 
		AND (c.CustomerID = a.CustomerID )

end


GO
/****** Object:  StoredProcedure [dbo].[GetFixedAccountByCustomerNo]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---CREATED PROCEDURE FOR LISTING FIXED ACCOUNTS BY CUSTOMER NO

Create procedure [dbo].[GetFixedAccountByCustomerNo](@CustomerID uniqueIdentifier)
as
begin

		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.FixedAccount a, TeamE.Customer c WHERE (@CustomerID IN(SELECT CustomerID from TeamE.FixedAccount))AND(c.CustomerID = a.CustomerID )

end

GO
/****** Object:  StoredProcedure [dbo].[GetFixedAccountsByAccountOpeningDate]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetFixedAccountsByAccountOpeningDate](@StartDate datetime,@EndDate datetime)
as
begin
		
		---THROWING EXCEPTION IF END DATE IS LATER THAN TODAY
		if (@EndDate > = GETDATE())
			throw 50001,'End date cannot be later than today',1

		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.FixedAccount a, TeamE.Customer c WHERE ((a.CreationDateTime >= @StartDate) 
		AND (a.CreationDateTime <= @EndDate))

end

GO
/****** Object:  StoredProcedure [dbo].[GetOfflineOrderByOfflineOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[GetOfflineOrderByOfflineOrderID](@OfflinerOrderid uniqueidentifier)
AS
BEGIN
   begin try
   select * from TeamB.OfflineOrders where OfflineOrderID = @OfflinerOrderid
   end try
   begin catch
      PRINT @@ERROR;
	  throw 50000, 'Invalid Values fetched',2
	  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [dbo].[GetOfflineOrderByRetailerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetOfflineOrderByRetailerID](@retailerid uniqueidentifier)
AS
BEGIN
   begin try
   select * from TeamB.OfflineOrders where RetailerID = @retailerid
   end try
   begin catch
      PRINT @@ERROR;
	  throw 50000, 'Invalid Values fetched',2
	  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [dbo].[GetOfflineOrderBySalesPersonID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetOfflineOrderBySalesPersonID](@salespersonid uniqueidentifier)
AS
BEGIN
   begin try
   select * from TeamB.OfflineOrders where SalesPersonID = @salespersonid
   end try
   begin catch
      PRINT @@ERROR;
	  throw 50000, 'Invalid Values fetched',2
	  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [dbo].[GetOfflineOrderDetailByOfflineOrderDetailID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[GetOfflineOrderDetailByOfflineOrderDetailID](@OfflinerOrderdetailid uniqueidentifier)
AS
BEGIN
   begin try
   select * from TeamB.OfflineOrderDetails where OfflineOrderDetailID = @OfflinerOrderdetailid
   end try
   begin catch
      PRINT @@ERROR;
	  throw 50000, 'Invalid Values fetched',2
	  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [dbo].[GetOfflineOrderDetailByOfflineOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetOfflineOrderDetailByOfflineOrderID](@OfflinerOrderid uniqueidentifier)
AS
BEGIN
   begin try
   select * from TeamB.OfflineOrderDetails where OfflineOrderID = @OfflinerOrderid
   end try
   begin catch
      PRINT @@ERROR;
	  throw 50000, 'Invalid Values fetched',2
	  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [dbo].[GetProductByProductCode]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetProductByProductCode](@productcode varchar (5))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to search product by Code
begin
	if exists (select ProductCode from Team_D.Product where ProductCode = @productcode)
		begin
			select * from Team_D.Product
			where ProductCode = @productcode
		end
	else
		throw 50004, 'Product Code does not exists', 1
end
GO
/****** Object:  StoredProcedure [dbo].[GetProductByProductID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetProductByProductID](@ProductID uniqueidentifier)
as 
BEGIN
begin try
	if exists(select ProductID from TeamB.Product where ProductID = @ProductID) 
		select * from TeamB.Product where ProductID = @ProductID
	else
		throw 500002, 'Product does not exist',1 
end try
begin catch
	throw 500003, 'Unable to fetch product',1
end catch
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductByProductName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetProductByProductName](@productname varchar (30))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to search product by Name
begin
	if exists (select ProductName from Team_D.Product where ProductName = @productname)
		begin
			select * from Team_D.Product
			where ProductName = @productname
		end
	else
		throw 50004, 'Product Name does not exists', 1
end
GO
/****** Object:  StoredProcedure [dbo].[GetProductByProductNumber]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetProductByProductNumber](@ProductNumber int)
as 
BEGIN
begin try
	if exists(select ProductNumber from TeamB.Product where ProductNumber = @ProductNumber) 
		select * from TeamB.Product where ProductNumber = @ProductNumber
	else
		throw 500002, 'Product does not exist',1 
end try
begin catch
	throw 500003, 'Unable to fetch product',1
end catch
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductOrderDetailbyProductOrderDetailID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetProductOrderDetailbyProductOrderDetailID](@ProductOrderDetailID varchar(40))
--procudure to get order detail by order detail ID
--Developed by Maski Saijahnavi on 01/10/19
as 
begin
	begin try
		SELECT* FROM Team_D.ProductOrderDetails where ProductOrderDetailID=@ProductOrderDetailID
	end try
	begin catch
	PRINT @@ERROR;
		throw 5001,'Invalid Values Fetched',6
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [dbo].[GetProductsByProductCategory]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetProductsByProductCategory](@ProductCategory varchar(25))
as 
BEGIN
begin try
	select * from TeamB.Product where ProductCategory = @ProductCategory
end try
begin catch
	throw 500003, 'Unable to fetch products',1
end catch
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductsByProductName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetProductsByProductName]( @ProductName varchar(15))
as 
BEGIN
begin try
	select * from TeamB.Product where ProductName = @ProductName
end try
begin catch
	throw 500003, 'Unable to fetch products',1
end catch
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductsByProductType]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetProductsByProductType](@producttype varchar (12))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to search product by Code
begin
	if exists (select ProductType from Team_D.Product where ProductType = @producttype)
		begin
			select * from Team_D.Product
			where ProductType = @producttype
		end
	else
		throw 50004, 'Product Type does not exists', 1
end
GO
/****** Object:  StoredProcedure [dbo].[GetRawMaterialByRawMaterialCode]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetRawMaterialByRawMaterialCode](@rawmaterialcode varchar (5))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to search raw material by code
begin
	if exists (select RawMaterialCode from Team_D.RawMaterial where RawMaterialCode = @rawmaterialcode)
		begin
			select * from Team_D.RawMaterial
			where RawMaterialCode = @rawmaterialcode
		end
	else
		throw 50004, 'Raw Material Code does not exists', 1
end
GO
/****** Object:  StoredProcedure [dbo].[GetRawMaterialByRawMaterialID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetRawMaterialByRawMaterialID](@rawmaterialid varchar (36))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to search raw material by id
begin
	if exists (select RawMaterialName from Team_D.RawMaterial where RawMaterialID = @rawmaterialid)
		begin
			select * from Team_D.RawMaterial
			where RawMaterialID = @rawmaterialid
		end
	else
		throw 50004, 'Raw Material ID does not exists', 1
end
GO
/****** Object:  StoredProcedure [dbo].[GetRawMaterialByRawMaterialName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetRawMaterialByRawMaterialName](@rawmaterialname varchar (40))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to search raw material by name
begin
	if exists (select RawMaterialName from Team_D.RawMaterial where RawMaterialName = @rawmaterialname)
		begin
			select * from Team_D.RawMaterial
			where RawMaterialName = @rawmaterialname
		end
	else
		throw 50004, 'Raw Material Name does not exists', 1
end
GO
/****** Object:  StoredProcedure [dbo].[GetRawMaterialOrderbyRawMaterialOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetRawMaterialOrderbyRawMaterialOrderID](@RawMaterialOrderID varchar(40))
as 
--Procedure to get RawMaterial order by rawmaterial OrderID 
--Developed by Ritwik on 30/09/2019
begin
	begin try
		SELECT* FROM Team_D.RawMaterialOrder where RawMaterialOrderID=@RawMaterialOrderID
	end try
	begin catch
	PRINT @@ERROR;
		throw 5001,'Invalid Values Fetched',6
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [dbo].[GetRawMaterialOrdersByOrderDate]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Procedure to get RawMaterial order by rawmaterial Order Date 
--Developed by Ritwik on 30/09/2019
create procedure [dbo].[GetRawMaterialOrdersByOrderDate](@RawMaterialOrderDate datetime)
as 
begin
	begin try
		SELECT * FROM Team_D.RawMaterialOrder where RawMaterialOrderDate=@RawMaterialOrderDate
	end try
	begin catch
	PRINT @@ERROR;
		throw 5001,'Invalid Values Fetched',6
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [dbo].[GetRegularAccountByAccountNo]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetRegularAccountByAccountNo](@AccountNo char(10))
as
begin

		
		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.RegularAccount a, TeamE.Customer c WHERE (AccountNo = @AccountNo) 
		AND (c.CustomerID = a.CustomerID )

end
GO
/****** Object:  StoredProcedure [dbo].[GetRegularAccountByCustomerNo]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetRegularAccountByCustomerNo](@CustomerID uniqueIdentifier)
as
begin

		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.RegularAccount a, TeamE.Customer c WHERE (@CustomerID IN(SELECT CustomerID from TeamE.RegularAccount))AND(c.CustomerID = a.CustomerID )

end


GO
/****** Object:  StoredProcedure [dbo].[GetRegularAccountsByAccountOpeningDate]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetRegularAccountsByAccountOpeningDate](@StartDate datetime,@EndDate datetime)
as
begin
		
		---THROWING EXCEPTION IF END DATE IS LATER THAN TODAY
		if (@EndDate > = GETDATE())
			throw 50001,'End date cannot be later than today',1

		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.RegularAccount a, TeamE.Customer c WHERE ((a.CreationDateTime >= @StartDate) 
		AND (a.CreationDateTime <= @EndDate))

end

GO
/****** Object:  StoredProcedure [dbo].[GetRegularAccountsByAccountType]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetRegularAccountsByAccountType](@AccountType varchar(10))
as
begin

		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.RegularAccount a, TeamE.Customer c WHERE (AccountType = @AccountType) 
		AND (c.CustomerID = a.CustomerID )

end

GO
/****** Object:  StoredProcedure [dbo].[GetSupplierAddressbySupplierAddressID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetSupplierAddressbySupplierAddressID](@supAdID uniqueidentifier)
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting the supplier address by suppplier address ID
as 
begin
	if exists (select supplierAddressID from Team_D.supplierAddress where supplierAddressID=@supAdID)
	begin
	SELECT * FROM Team_D.supplierAddress where supplierAddressID=@supAdID
	end
	else
	throw 50001,'Invalid Values Fetched',3
end
GO
/****** Object:  StoredProcedure [dbo].[GetSupplierbyEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetSupplierbyEmail](@supEmail varchar(50))
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting the supplier by email
as
begin
if exists (select supplierEmail from Team_D.supplier where supplierEmail = @supEmail)
		begin
			select* from Team_D.supplier
			where supplierEmail = @supEmail
		end
	else 
		throw 50003, 'supplier Email does not exists', 1			
end
GO
/****** Object:  StoredProcedure [dbo].[GetSupplierbySupplierEmailandPass]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetSupplierbySupplierEmailandPass](@supEmail varchar(50) ,@supPass varchar(15))
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting the supplier by email and password
as
begin
if exists (select supplierEmail,supplierPassword from supplier where supplierEmail = @supEmail and supplierPassword = @supPass)
		begin
			SELECT* FROM Team_D.supplier where supplierEmail=@supEmail and supplierPassword=@supPass

		end
	else 
		throw 50003, 'supplier Email and password does not exists', 1			
end
GO
/****** Object:  StoredProcedure [dbo].[GetSupplierbySupplierID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetSupplierbySupplierID](@supID uniqueidentifier)
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting supplier by supplier ID
as
begin
if exists (select supplierID from Team_D.supplier where supplierID = @supID)
		begin
			select* from Team_D.supplier
			where supplierID = @supID
		end
	else 
		throw 50003, 'supplier id does not exists', 1			
end
GO
/****** Object:  StoredProcedure [dbo].[GetSupplierbySupplierName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetSupplierbySupplierName]( @supName varchar(40))
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting all the suppliers by their name
as
begin
if exists (select supplierName from Team_D.supplier where supplierName = @supName)
		begin
			select* from Team_D.supplier
			where supplierName = @supName
		end
	else 
		throw 50003, 'supplier name does not exists', 1			
end
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsByAccountID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetTransactionsByAccountID](@accountID uniqueidentifier)
as
begin
	if  @accountID = ''		
		throw 500000,'The ID is not in correct format',1;

	else
		select * from Transactions where AccountID = @accountID
end
GO
/****** Object:  StoredProcedure [dbo].[ShowCustomerByCustomerNumber]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ShowCustomerByCustomerNumber](@CustomerNumber char(6)) 
as
begin 
	select * from CustomerService.Customer where CustomerNumber= @CustomerNumber
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateCreditCardStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdateCreditCardStatus](@cardNumber char(12) ,@cardStatus varchar(12),@lastModifiedDate datetime)
as
begin
update TeamE.CreditCard
set
CardStatus=@cardStatus
where CardNumber=@cardNumber
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomerByCustomerIDDAL]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  Create Procedure [dbo].[UpdateCustomerByCustomerIDDAL](@CustomerID varchar,@CustomerName varchar(40),@CustomerAddress varchar(100),@CustomerMobile char(10),@CustomerEmail varchar,@CustomerPan char(10),@CustomerAadhaarNumber char(12),@DOB datetime,@CustomerGender varchar(12))
  AS
  BEGIN
  Update Customers.Customer
  Set CustomerName=@CustomerName,CustomerAddress=@CustomerAddress,CustomerMobile=@CustomerMobile,CustomerEmail=@CustomerEmail,CustomerPan=@CustomerPan,CustomerAadhaarNumber=@CustomerAadhaarNumber,DOB=@DOB,CustomerGender=@CustomerGender
  Where CustomerID =@CustomerID
  END
GO
/****** Object:  StoredProcedure [dbo].[UpdateDistributor]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[UpdateDistributor](@disId uniqueidentifier,
 @disName varchar(40),
  @disMob char(10),
  @disEmail varchar(30),
  @disPas varchar(15))
 as
 --Procedure to update distributor in table.
--Developed by Sowrasree Banerjee on 01-10-2019 
 begin
 begin try
 UPDATE Team_D.Distributor
 SET DistributorName=@disName, DistributorMobile=@disMob,DistributorEmail=@disEmail,DistributorPassword=@disPas
 WHERE DistributorID=@disId
 end try
 begin catch
 Print @@ERROR;
 throw 500001,'invalid values fetched',4
 return 0
 end catch
 end 
GO
/****** Object:  StoredProcedure [dbo].[UpdateDistributorAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateDistributorAddress](@disAddId uniqueidentifier,
 @AddLine1 varchar(40),
  @AddLine2 char(10),
  @pincode varchar(30),
  @city varchar(10),
  @state varchar(10))
 as
 --Procedure to update distributor address in table.
--Developed by Sowrasree Banerjee on 01-10-2019 
 begin
 begin try
 UPDATE Team_D.DistributorAddress
 SET AddressLine1=@AddLine1, AddressLine2=@AddLine2,Pincode=@pincode,City=@city,DistributorState=@state
 WHERE DistributorAddressID=@disAddId
 end try
 begin catch
 Print @@ERROR;
 throw 500001,'invalid values fetched',4
 return 0
 end catch
 end 
GO
/****** Object:  StoredProcedure [dbo].[UpdateOfflineOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[UpdateOfflineOrder](@OfflineOrderid uniqueidentifier, @totalOrderAmount money, @totalQuantity int,@LastModifiedDateTime date)
AS
BEGIN
   begin try
   Update TeamB.OfflineOrders set TotalOfflineOrderAmount =@totalOrderAmount,@LastModifiedDateTime = SYSDATETIME(),
TotalQuantity = @totalQuantity  Where   OfflineOrderID = @OfflineOrderid
   end try
   begin catch
      PRINT @@ERROR;
	  throw 50000, 'Invalid Values fetched',6
	  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateOfflineOrderDetail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[UpdateOfflineOrderDetail](@OfflineOrderDetailid uniqueidentifier, @totalprice money, @Quantity int)
AS
BEGIN
   begin try
   Declare @lastmodifiedDate DateTime
   set    @lastmodifiedDate= SYSDATETIME()
   Update OfflineOrder.OfflineOrderDetails set Quantity =@Quantity, TotalPrice = @totalprice, LastModifiedDateTime =@lastmodifiedDate
     Where   OfflineOrderDetailID = @OfflineOrderdetailid
   end try
   begin catch
      PRINT @@ERROR;
	  throw 50000, 'Invalid Values fetched',1
	  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[UpdateOrder](@orderId uniqueidentifier, @totalQuantity int, @orderAmount money, @lastModifiedDate datetime)
as
 begin
	begin try
		 update TeamB.OrdersTable
 		set
 			TotalQuantity=@totalQuantity,
  			OrderAmount=@orderAmount,
  			LastModifiedDateTime=@lastModifiedDate 		
  		where OrderId=@orderId
	end try
	begin catch
      PRINT @@ERROR;
	  throw 50000, 'Invalid Values',6
	  return 0
   end catch
	return @@ROWCOUNT
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[UpdateOrderDetails](@orderDetailid uniqueidentifier, @productQuantityOrdered int, @addressId varchar(30), @totalAmount money, @lastModifiedDate datetime)
as
 begin
 if @addressId is null OR @addressId = ''
	   throw 50006, 'Invalid Address ID', 6
if @orderDetailid is null OR @addressId = ''
	   throw 50007, 'Invalid OrderDetail ID', 7
 		update TeamB.OrderDetailsTable
 		set
 		 ProductQuantityOrdered=@productQuantityOrdered,
 		 AddressId=@addressId,
  		 TotalAmount=@totalAmount,
  		 LastModifiedDateTime = @lastModifiedDate
		where OrderDetailId=@orderDetailid	
end
return @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[UpdateProductDescription]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateProductDescription] (@ProductID uniqueidentifier,@ProductName varchar(15), @ProductNumber int,@ProductCategory varchar(25), 
  @ProductColor varchar(30), @ProductSize varchar(15), @ProductMaterial varchar(30),@ProductPrice money )

as 
BEGIN

	begin try

		if exists(select ProductID from TeamB.Product where ProductID = @ProductID) 
		update TeamB.Product set  ProductColor = @ProductColor,ProductSize = @ProductSize,ProductMaterial = @ProductMaterial,LastModifiedDateTime=sysdatetime() 
		where ProductID = @ProductID;
		else
		throw 500002, 'Product does not exist',1 

	end try

	begin catch

		throw 500000, 'Product description not updated',1

	end catch

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateProductOrderDetail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdateProductOrderDetail](@ProductOrderID varchar(40),@ProductOrderAmount decimal, @PaymentStatus bit,@TotalQuantity decimal ,@DistributorAddressID varchar(15))
--Procedure to update product order detail
--Developed by Maski Saijahnavi on 01/10/19
as 
begin
	begin try
		UPDATE Team_D.ProductOrders
		SET ProductOrderAmount=@ProductOrderAmount,PaymentStatus =@PaymentStatus, TotalQuantity= @TotalQuantity,DistributorAddressID = @DistributorAddressID
		WHERE ProductOrderID=@ProductOrderID
	end try
	begin catch
	PRINT @@ERROR;
		throw 500001,'Invalid Values Fetched',4
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateProductPrice]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateProductPrice] (@ProductID uniqueidentifier,@ProductName varchar(15), @ProductNumber int, @ProductCategory varchar(25),
  @ProductColor varchar(30), @ProductSize varchar(15), @ProductMaterial varchar(30),@ProductPrice money )

as
BEGIN

	begin try

		if exists(select ProductID from TeamB.Product where ProductID = @ProductID) 
		update TeamB.Product set  ProductPrice = @ProductPrice, LastModifiedDateTime=sysdatetime() where ProductID = @ProductID;
		else
		throw 500002, 'Product does not exist',1 

	end try

	begin catch

		throw 500000, 'Product price not updated',1

	end catch

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateRawMaterial]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdateRawMaterial](@rawmaterialid varchar(36), @rawmaterialname varchar(30), @rawmaterialcode varchar(5),
	@rawmaterialunitprice int, @lastmodifieddatetime datetime)
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to update a raw material
begin
	if @rawmaterialname = ''
	throw 50001, 'Raw Material Name cannot be empty', 1
	if exists (Select RawMaterialName from Team_D.RawMaterial where RawMaterialName = @rawmaterialname)
	throw 50002, 'Raw Material with same name already exists', 1
	if @rawmaterialcode = ''
	throw 50003, 'Raw Material Code cannot be empty', 1
	if exists (Select RawMaterialCode from Team_D.RawMaterial where RawMaterialCode = @rawmaterialcode)
	throw 50004, 'Raw Material with same code already exists', 1
	if @rawmaterialunitprice <= 0
	throw 50005, 'Raw material Price cannot be less than or equal to zero', 1
	
	if exists (select RawMaterialID from RMA.RawMaterial where RawMaterialID = @rawmaterialid)
		begin
			update Team_D.RawMaterial
			set	RawMaterialName = @rawmaterialname,
				RawMaterialCode = @rawmaterialcode,
				RawMaterialUnitPrice = @rawmaterialunitprice,
				LastUpdateDateTime = sysdatetime()
			where RawMaterialID = @rawmaterialid
		end
	else 
		throw 50003, 'Raw material id does not exists', 1			
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateRawMaterialOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdateRawMaterialOrder]( @RawMaterialOrderID varchar(30), @RawMaterialOrderDate datetime,@SupplierID varchar(30),
 @RawMaterialTotalPrice decimal, @RawMaterialTotalQuantity  decimal)
as
--Procedure to update RawMaterial order
--Developed by Ritwik on 30/09/2019
begin
	begin try
		UPDATE Team_D.RawMaterialOrder
		SET RawMaterialTotalPrice=@RawMaterialTotalPrice, RawMaterialTotalQuantity= @RawMaterialTotalQuantity
		WHERE RawMaterialOrderID=@RawMaterialOrderID
	end try
	begin catch
	PRINT @@ERROR;
		throw 500001,'Invalid Values Fetched',4
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateSupplier]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdateSupplier](@supID uniqueidentifier, @supName varchar(40), @supMob char(10),@supEmail varchar(50) )
--Created by Pushpraj kaushik on 4/10/19
--created procedure for updating the supplier details
as 
begin
	if @supName = ''
	throw 50003, 'SupplierName cannot be empty', 1
	
	if @supEmail = ''
	throw 50003, 'SupplierEmail cannot be empty', 1
		
	
	if exists (select supplierID from Team_D.supplier where supplierID = @supID)
		begin
			update Team_D.supplier
			set	supplierName = @supname,
				supplierID = @supID,
				supplierEmail = @supEmail,
				supplierMobile= @supMob
			where supplierID = @supID
		end
	else 
		throw 50003, 'supplier id does not exists', 1			
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateSupplierAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdateSupplierAddress](@supAdID uniqueidentifier,@supID uniqueidentifier,@AdLine1 varchar(255),@AdLine2 varchar(255),@pcode char(6),@city varchar(20),@state varchar(20))
--Created by Pushpraj kaushik on 4/10/19
--created procedure for updating the supplier address
as
begin
    if @supAdID =''
	throw 50003, 'Supplier Address ID cannot be empty', 1
	if @supID =''
	throw 50003, 'SupplierID cannot be empty', 1
	if @AdLine1 IS NULL OR @AdLine1=''
	throw 50001,'Invalid Adress line1',3
	if @AdLine2 IS NULL OR @AdLine2=''
	throw 50001,'Invalid Address line2',4
	if @pcode IS NULL OR @pcode=''
	throw 50001,'Invalid PinCode',5
	if @city IS NULL OR @city=''
	throw 50001,'Invalid City name',6
	if @State IS NULL OR @State=''
	throw 50001,'Invalid State name',7

	
	if exists (select supplierAddressID from Team_D.supplierAddress where supplierAddressID = @supAdID)
		begin
			update Team_D.supplierAddress
			set	SupplierID=@supID, AddressLine1=@AdLine1,AddressLine2=@AdLine2,PinCode=@pcode,City=@city,State=@state
			where supplierAddressID = @supAdID
		end
	else 
		throw 50003, 'supplier address id does not exists', 1			
end

GO
/****** Object:  StoredProcedure [dbo].[UpdateSupplierPass]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- PROCEDURE CREATED
create procedure [dbo].[UpdateSupplierPass](@supID uniqueidentifier, @supName varchar(40),@supPass varchar(15))
--Created by Pushpraj kaushik on 4/10/19
--created procedure for updating the supplier by password 
as
begin
		if exists (select supplierID from Team_D.supplier where supplierID = @supID)
		begin
			update Team_D.supplier
			set	supplierName = @supname,
				supplierID = @supID,
				supplierPassword = @supPass
			where supplierID = @supID
		end
	else 
		throw 50003, 'supplier id does not exists', 1			
end
GO
/****** Object:  StoredProcedure [dbo].[ViewOrderByOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------------------------------------------------------------------------

--stored procedure to show all orders

CREATE procedure [dbo].[ViewOrderByOrderID](@orderId uniqueidentifier)
as
 begin
	begin try
		select * from TableB.OrdersTable where OrderId= @orderId
	end try
	begin catch
		  PRINT @@ERROR;
		  throw 50000, 'Invalid OrderID',2
		  return 0
	end catch
return @@ROWCOUNT
 end
GO
/****** Object:  StoredProcedure [dbo].[ViewOrderDetailByOrderDetailID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ViewOrderDetailByOrderDetailID](@orderDetailsId uniqueidentifier)
as
 begin
	begin try
		select * from TeamB.OrderDetailsTable where OrderDetailId= @orderDetailsId
	end try
	begin catch
		throw 50000,'Invalid Orderdetails Id',1
	end catch
 end
 return @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[ViewOrderDetailsByOrderDetailID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--stored procedure to view a orderdetail from orderdetails table by orderdetail id

CREATE procedure [dbo].[ViewOrderDetailsByOrderDetailID](@orderDetailsId uniqueidentifier)
as
 begin
	begin try
		select * from TeamB.OrderDetailsTable where OrderDetailId= @orderDetailsId
	end try
	begin catch
		throw 50000,'Invalid Orderdetails Id',1
	end catch
 end
 return @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[ViewOrderDetailsByOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ViewOrderDetailsByOrderID](@orderId uniqueidentifier)
as
 begin
	begin try
		select * from TeamB.OrderDetailsTable where OrderId= @orderId
	end try
	begin catch
		throw 50000,'Invalid Order Id',1
	end catch
 end
 return @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[ViewRetailerOrders]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ViewRetailerOrders](@retailerId uniqueidentifier)
as
begin
	begin try
		select * from TableB.OrderDetailsTable where OrderId=(select OrderId from TableB.OrdersTable where RetailerId= @retailerId)
	end try
	begin catch
      PRINT @@ERROR;
	  throw 50000, 'Invalid Retailer ID',2
	  return 0
    end catch
	return @@ROWCOUNT
end
GO
/****** Object:  StoredProcedure [Team_D].[AddDistributor]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[AddDistributor]
 ( @disId uniqueidentifier,
 @disName varchar(40),
  @disMob char(10),
  @disEmail varchar(30),
  @disPas varchar(15),
  @creationDateTime datetime ,
   @lastModifiedDate datetime
)
 as 
 --Procedure to add Distributor into the table.
--Developed by Sowrasree Banerjee on 01-10-2019
 begin
 
		if @disName=''
		throw 50001, 'Distributor name cannot be empty',1
		if @disMob=''
		throw 50002, 'Distributor Mobile cannot be empty',1
		if @disEmail=''
		throw 50003, 'Distributor Email cannot be empty',1
		if @disPas=''
		throw 50003, 'Distributor Password cannot be empty',1

	insert into Team_D.Distributor values (@disId,@disName,@disMob,@disEmail,@disPas, @creationDateTime,@lastModifiedDate)
end
GO
/****** Object:  StoredProcedure [Team_D].[AddDistributorAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[AddDistributorAddress]
(@disAddId uniqueidentifier,
 @disID uniqueidentifier,
 @addline1 varchar(30),
 @addline2 char(30),

 @city varchar(10),
 @state varchar(10),
  @pincode varchar(6)
)
 as 
 --Procedure to add Distributor into the table.
--Developed by Sowrasree Banerjee on 01-10-2019
 begin
		
		if @addline1=''
		throw 50002, 'Address Line1 cannot be empty',1
		if @addline2=''
		throw 50003, 'Address Line2 cannot be empty',1
		if @pincode=''
		throw 50003, 'Pincode cannot be empty',1
		if @city=''
		throw 50003, 'City cannot be empty',1
		if @state=''
		throw 50003, 'State cannot be empty',1
	
	insert into Team_D.DistributorAddress values (@disAddId,@disID,@addline1,@addline2,@city,@state,@pincode,getdate(),getdate())
end
GO
/****** Object:  StoredProcedure [Team_D].[AddingSupplierAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[AddingSupplierAddress](@supAdID uniqueidentifier,@supID uniqueidentifier, @AdLine1 varchar(255),@AdLine2 varchar(255) ,@pcode varchar(15),@city varchar(20),@state varchar(20) )
--Created by Pushpraj kaushik on 4/10/19
--created procedure for adding the supplier address 
as 
begin

if @supID IS NULL 
throw 50001,'Invalid Supplier ID',2
if @AdLine1 IS NULL OR @AdLine1=''
throw 50001,'Invalid Adress line1',3
if @AdLine2 IS NULL OR @AdLine2=''
throw 50001,'Invalid Address line2',4
if @pcode IS NULL OR @pcode=''
throw 50001,'Invalid PinCode',5
if @city IS NULL OR @city=''
throw 50001,'Invalid City name',6
if @State IS NULL OR @state=''
throw 50001,'Invalid State name',7



insert into Team_D.SupplierAddress(SupplierAddressID,SupplierID,AddressLine1,AddressLine2,PinCode,City,[State],creationDateTime,lastmodifiedDateTime )
values (@supAdID,@supID,@AdLine1,@AdLine2,@pcode,@city,@state,sysdatetime(),sysdatetime())
end

GO
/****** Object:  StoredProcedure [Team_D].[AddProduct]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[AddProduct](@productid varchar(36), @producttype varchar(20), @productname varchar(30), @productcode varchar(5), 
	@productunitprice int)
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to add a product into the table
begin
	if @productname = ''
	throw 50001, 'Product Name cannot be empty', 1
	if exists (Select ProductName from Team_D.Product where ProductName = @productname)
	throw 50002, 'Product with same name already exists', 1
	if @productcode = ''
	throw 50003, 'Product Code cannot be empty', 1
	if exists (Select ProductCode from Team_D.Product where ProductCode = @productcode)
	throw 50004, 'Product with same code already exists', 1
	if @productunitprice <= 0
	throw 50005, 'Product Price cannot be less than or equal to zero', 1

	insert into Team_D.Product(ProductID,ProductType, ProductName, ProductCode, ProductUnitPrice, CreationDateTime, LastUpdateDateTime)
	values(@productid, @producttype, @productname, @productcode,@productunitprice, sysdatetime(), sysdatetime())
end
GO
/****** Object:  StoredProcedure [Team_D].[AddProductOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[AddProductOrder](@ProductOrderID uniqueidentifier ,@DistributorID uniqueidentifier, @ProductOrderAmount decimal,@paymentStatus bit , @TotalQuantity decimal, @distributorAddressID uniqueidentifier )
--Procedure to add all the product orders
--Developed by Maski Saijahnavi on 01/10/19
as 
begin
if @ProductOrderID IS NULL --OR @ProductOrderID =''
throw 500001,'Invalid ProductOrderID',1
if @DistributorID IS NULL --OR @DistributorID=''
throw 500001,'Invalid Distributor ID',2
if @ProductOrderAmount<=0
throw 500001,'Product Order amount should be greater than or equal to zero',3
if @paymentStatus IS NULL
throw 500001,'Payment status should not be null',4
if @TotalQuantity<=0 
throw 500001,'Total quantity should be greater than or equal to zero',5
if @distributorAddressID IS NULL-- OR @distributorAddressID =''
throw 500001,'Invalid ProductOrderID',1

insert into Team_D.ProductOrders values (@ProductOrderID,GetDate(),GetDate(),@DistributorID,@ProductOrderAmount,@paymentStatus,@TotalQuantity,@distributorAddressID)
end
--PROCEDURE CREATED
GO
/****** Object:  StoredProcedure [Team_D].[AddProductOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[AddProductOrderDetails](@ProductOrderDetailID varchar(40),@ProductOrderID varchar(40), @ProductID varchar(40), @ProductTotalPrice decimal,@ProductQuantity decimal, @ProductUnitPrice decimal)
as 
begin
if @ProductOrderDetailID IS NULL 
throw 500001,'Invalid ProductOrderDetailID',1
if @ProductOrderID IS NULL 
throw 500001,'Invalid ProductOrderID',1

if @ProductTotalPrice<=0
throw 500001,'Product Total Price should be greater than or equal to zero',3
if @ProductQuantity <=0
throw 500001,'Product Quantity should be greater than or equal to zero',4
if @ProductUnitPrice<=0 
throw 500001,'ProductUnitPrice should be greater than or equal to zero',5
if @ProductID IS NULL
throw 500001,'Invalid ProductID',1

insert into Team_D.ProductOrderDetails(ProductOrderDetailID, ProductOrderID,ProductID,ProductTotalPrice,ProductQuantity,ProductUnitPrice)
values (@ProductOrderDetailID,@ProductOrderID,@ProductID,@ProductTotalPrice,@ProductQuantity,@ProductUnitPrice)
end
--PROCEDURE CREATED
GO
/****** Object:  StoredProcedure [Team_D].[AddRawMaterial]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[AddRawMaterial](@rawmaterialid uniqueidentifier, @rawmaterialname varchar(30), @rawmaterialcode varchar(5), 
	@rawmaterialunitprice decimal, @creationdatetime datetime, @lastmodifiedatetime datetime)
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to add a raw material into table
begin
	if @rawmaterialname = ''
	throw 50001, 'Raw Material Name cannot be empty', 1
	if exists (Select RawMaterialName from Team_D.RawMaterial where RawMaterialName = @rawmaterialname)
	throw 50002, 'Raw Material with same name already exists', 1
	if @rawmaterialcode = ''
	throw 50003, 'Raw Material Code cannot be empty', 1
	if exists (Select RawMaterialCode from Team_D.RawMaterial where RawMaterialCode = @rawmaterialcode)
	throw 50004, 'Raw Material with same code already exists', 1
	if @rawmaterialunitprice <= 0
	throw 50005, 'Raw material Price cannot be less than or equal to zero', 1

	insert into Team_D.RawMaterial(RawMaterialID, RawMaterialName, RawMaterialCode, RawMaterialUnitPrice, CreationDateTime, LastUpdateDateTime)
	values(@rawmaterialid, @rawmaterialname, @rawmaterialcode, @rawmaterialunitprice, @creationdatetime, @lastmodifiedatetime)
end
GO
/****** Object:  StoredProcedure [Team_D].[AddRawmaterialOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [Team_D].[AddRawmaterialOrder] (@CreationDateTime datetime,@LastmodifiedDateTime datetime,@RawMaterialOrderID uniqueidentifier,@SupplierID uniqueidentifier,
 @RawMaterialOrderTotalPrice decimal, @RawMaterialOrderTotalQuantity decimal)
 as 
 --Developed by Ritwik on 30/09/2019
 --procedure to add a raw material order into table
 begin

 if @RawMaterialOrderTotalQuantity is null 
   throw 50001, 'raw material total price cannot be 0 or empty ', 2
 if @RawMaterialOrderTotalPrice is null 
 throw 50002, 'raw material total  cannot be 0', 3
 if @RawMaterialOrderTotalPrice <0
   throw 50003, 'raw material total price cannot be negative or empty ', 4
 if @RawMaterialOrderTotalQuantity <0 
 throw 50004, 'raw material total quantity cannot be negative', 5
 insert into Team_D.Rawmaterialorder(CreationDateTime, LastmodifiedDateTime,RawMaterialOrderID ,SupplierID ,
 RawMaterialTotalPrice , RawMaterialTotalQuantity)
 values ( @CreationDateTime, @LastmodifiedDateTime, @RawMaterialOrderID,@SupplierID ,
 @RawMaterialOrderTotalPrice, @RawMaterialOrderTotalQuantity)
 end
GO
/****** Object:  StoredProcedure [Team_D].[AddSupplier]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[AddSupplier](@supID uniqueidentifier,@supName varchar(40), @supMob char(10),@supEmail varchar(50) ,@supPass varchar(15))
as 
begin
if @supName IS NULL OR @supName=''
throw 50001,'Invalid Supplier name',2
if exists (select SupplierName from Team_D.supplier where supplierName=@supName)
if @supMob IS NULL OR @supMob=''
throw 50001,'Invalid Mobile number',3
if exists (select supplierMobile from Team_D.supplier where supplierMobile=@supMob)
if @supEmail IS NULL OR @supEmail=''
throw 50001,'Invalid Supplier Email',4
if exists (select supplierEmail from Team_D.supplier where supplierEmail=@supEmail)
if @supPass IS NULL OR @supPass=''
throw 50001,'Invalid Supplier password',5

insert into Team_D.supplier(supplierID,supplierName,supplierMobile,supplierEmail, supplierPassword,creationDateTime,lastmodifiedDateTime)
values (@supID ,@supName,@supMob,@supEmail,@supPass,sysdatetime(),sysdatetime())

end

GO
/****** Object:  StoredProcedure [Team_D].[DeleteDistributor]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[DeleteDistributor](@distributorID uniqueidentifier)
as
 --Procedure to delete distributor from table.
--Developed by Sowrasree Banerjee on 01-10-2019 
begin
begin try
DELETE FROM Team_D.Distributor WHERE DistributorID=@distributorID
end try
begin catch
PRINT @@ERROR;
throw 500001,'invalid values fetched',3
return 0
end catch
end
GO
/****** Object:  StoredProcedure [Team_D].[DeleteProduct]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[DeleteProduct](@productid varchar(36))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to delete a product
begin
	if exists (select ProductID from Team_D.Product where ProductID = @productid)
		begin
			delete from Team_D.Product
			where ProductID = @productid
		end
	else
		throw 50004, 'Product Code does not exists', 1
end
GO
/****** Object:  StoredProcedure [Team_D].[DeleteProductOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[DeleteProductOrder](@ProductOrderID uniqueidentifier )
--Procedure to delete Product Order
--Developed by Maski Saijahnavi on 01/10/19
as 
begin
	begin try
		DELETE FROM Team_D.ProductOrders where ProductOrderID=@ProductOrderID
	end try
	begin catch
	PRINT @@ERROR;
		throw 500001,'Invalid Values Fetched',3
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [Team_D].[DeleteRawMaterial]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[DeleteRawMaterial](@rawmaterialid varchar(36))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to delete a raw material
begin
	if exists (select RawMaterialID from Team_D.RawMaterial where RawMaterialID = @rawmaterialid)
		begin
			delete from Team_D.RawMaterial
			where RawMaterialID = @rawmaterialid
		end
	else
		throw 50004, 'Raw Material Code does not exists', 1
end
GO
/****** Object:  StoredProcedure [Team_D].[DeleteRawMaterialOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[DeleteRawMaterialOrder](@RawMaterialOrderID uniqueidentifier )
as 
--Procedure to delete RawMaterial Order
--Developed by Ritwik on 30/09/2019
begin
	begin try
		DELETE FROM Team_D.RawMaterialOrder where RawMaterialOrderID=@RawMaterialOrderID
	end try
	begin catch
	PRINT @@ERROR;
		throw 500001,'Invalid Values Fetched',3
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [Team_D].[DeleteSupplier]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[DeleteSupplier](@supID uniqueidentifier)
as 
--Created by Pushpraj kaushik on 4/10/19
--created procedure for deleting existing supplier
begin
	if exists (select supplierID from Team_D.supplier where supplierID=@supID)
	begin
	DELETE FROM Team_D.supplier where supplierID=@supID
	end
	else
	throw 50001,'Invalid Values Fetched',3
	
end
GO
/****** Object:  StoredProcedure [Team_D].[DeleteSupplierAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[DeleteSupplierAddress](@supAdID uniqueidentifier)
--Created by Pushpraj kaushik on 4/10/19
--created procedure for deleting the supplier address
as 
begin
	if exists (select supplierAddressID from Team_D.supplierAddress where supplierAddressID=@supAdID)
	begin
	DELETE FROM Team_D.supplierAddress where supplierAddressID=@supAdID
	end
	else
	throw 50001,'Invalid Values Fetched',3
end
GO
/****** Object:  StoredProcedure [Team_D].[GetAllDistributorAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [Team_D].[GetAllDistributorAddress]
as
 --Procedure to get all distributor Address.
--Developed by Sowrasree Banerjee on 01-10-2019 
begin
begin try
select*from Team_D.DistributorAddress
end try
begin catch
PRINT @@ERROR;
throw 500001 ,'invalid values fetched ',2
return 0
end catch
end 
GO
/****** Object:  StoredProcedure [Team_D].[GetAllDistributors]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetAllDistributors]
as
 --Procedure to get all distributors.
--Developed by Sowrasree Banerjee on 01-10-2019 
begin
begin try
select*from Team_D.Distributor
end try
begin catch
PRINT @@ERROR;
throw 500001 ,'invalid values fetched ',2
return 0
end catch
end 
GO
/****** Object:  StoredProcedure [Team_D].[GetAllProductOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetAllProductOrderDetails]
--Procedure to get all the product order details
--Developed by Maski Saijahnavi on 01/10/19
as 
begin 
	begin try 
	select*from Team_D.ProductOrderDetails
	end try
	begin catch
		PRINT @@ERROR;
		throw 500001,'Invalid Values Fetched',2
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [Team_D].[GetAllProductOrders]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[GetAllProductOrders]
--Procedure to get all the product orders
--Developed by Maski Saijahnavi on 01/10/19
as 
begin 
	begin try 
	select * from Team_D.ProductOrders
	end try
	begin catch
		PRINT @@ERROR;
		throw 500001,'Invalid Values Fetched',2
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [Team_D].[GetAllProducts]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetAllProducts]
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to list all the products
begin
	select * from Team_D.Product
end
GO
/****** Object:  StoredProcedure [Team_D].[GetAllRawMaterialOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [Team_D].[GetAllRawMaterialOrder]
as 
--Developed by Ritwik on 30/09/2019
--Procedure to get all the RawMaterial orders
begin 
	begin try 
	select * from Team_D.RawMaterialOrder
	end try
	begin catch
		PRINT @@ERROR;
		throw 500001,'Invalid Values Fetched',2
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [Team_D].[GetAllRawMaterials]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetAllRawMaterials]
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to list all the raw materials
begin
	select * from Team_D.RawMaterial
end
GO
/****** Object:  StoredProcedure [Team_D].[GetAllSupplier]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetAllSupplier]
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting all the suppliers

as 
begin 
	begin try 
	select*from Team_D.supplier
	end try
	begin catch
		PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',2
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [Team_D].[GetAllSupplierAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[GetAllSupplierAddress]
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting all the supplier address
as 
begin 
Select * FROM Team_D.supplierAddress 
end
GO
/****** Object:  StoredProcedure [Team_D].[GetAllSupplierAddressbySupplierID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[GetAllSupplierAddressbySupplierID](@supID uniqueidentifier)
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting all the supplier address
as 
begin 

	begin try
	Select * FROM Team_D.supplierAddress where supplierID=@supID
	end try
	begin catch
	Print @@ERROR;
	throw 50001,'Invalid values fetched',8
	return 0
	end catch
	end
GO
/****** Object:  StoredProcedure [Team_D].[GetDistributoraddressByDistributorAddressID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetDistributoraddressByDistributorAddressID](@disAddId uniqueidentifier )
 as
  --Procedure to get distributor Address by distributor Address ID.
--Developed by Sowrasree Banerjee on 01-10-2019 
 begin 
 begin try
 SELECT * FROM Team_D.DistributorAddress where DistributorAddressID=@disAddId
 end try
 begin catch
Print  @@ERROR;
throw 5001,'invalid values fetched',5
return 0
end catch
end 
GO
/****** Object:  StoredProcedure [Team_D].[GetDistributorByDistributorEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[GetDistributorByDistributorEmail](@Email varchar(40))
as
 --Procedure to get Distributor by distributor name.
--Developed by Sowrasree Banerjee on 01-10-2019
begin
begin try
select *from Team_D.Distributor where DistributorEmail=@Email
end try
begin catch
Print @@ERROR;
throw 5001,'invalid values fetched',6
return 0
end catch
end 
GO
/****** Object:  StoredProcedure [Team_D].[GetDistributorByDistributorEmailPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetDistributorByDistributorEmailPassword](@Email varchar(40),@Password varchar(15) )
as
 --Procedure to get Distributor by distributor email & password.
--Developed by Sowrasree Banerjee on 01-10-2019
begin
begin try
select *from Team_D.Distributor where DistributorEmail=@Email and DistributorPassword= @Password
end try
begin catch
Print @@ERROR;
throw 5001,'invalid values fetched',6
return 0
end catch
end 
GO
/****** Object:  StoredProcedure [Team_D].[GetProductByProductCode]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetProductByProductCode](@productcode varchar (5))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to search product by Code
begin
	if exists (select ProductCode from Team_D.Product where ProductCode = @productcode)
		begin
			select * from Team_D.Product
			where ProductCode = @productcode
		end
	else
		throw 50004, 'Product Code does not exists', 1
end
GO
/****** Object:  StoredProcedure [Team_D].[GetProductByProductID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetProductByProductID](@productid varchar (36))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to search product by ID
begin
	if exists (select ProductID from Team_D.Product where ProductID = @productid)
		begin
			select * from Team_D.Product
			where ProductID = @productid
		end
	else
		throw 50004, 'Product ID does not exists', 1
end
GO
/****** Object:  StoredProcedure [Team_D].[GetProductByProductName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetProductByProductName](@productname varchar (30))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to search product by Name
begin
	if exists (select ProductName from Team_D.Product where ProductName = @productname)
		begin
			select * from Team_D.Product
			where ProductName = @productname
		end
	else
		throw 50004, 'Product Name does not exists', 1
end
GO
/****** Object:  StoredProcedure [Team_D].[GetProductOrderbyProductOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [Team_D].[GetProductOrderbyProductOrderID](@ProductOrderID uniqueidentifier)
--Procedure to get order by OrderID
--Developed by Maski Saijahnavi on 01/10/19
as 
begin
	begin try
		SELECT* FROM Team_D.ProductOrders where ProductOrderID=@ProductOrderID
	end try
	begin catch
	PRINT @@ERROR;
		throw 5001,'Invalid Values Fetched',6
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [Team_D].[GetProductOrdersByOrderDate]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[GetProductOrdersByOrderDate](@ProductOrderDate datetime)
--Procedure to get Product Orders by Date
--Developed by Maski Saijahnavi on 01/10/19
as 
begin
	begin try
		SELECT * FROM Team_D.ProductOrders where ProductOrderDate=@ProductOrderDate
	end try
	begin catch
	PRINT @@ERROR;
		throw 5001,'Invalid Values Fetched',6
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [Team_D].[GetProductsByProductType]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetProductsByProductType](@producttype varchar (12))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to search product by Code
begin
	if exists (select ProductType from Team_D.Product where ProductType = @producttype)
		begin
			select * from Team_D.Product
			where ProductType = @producttype
		end
	else
		throw 50004, 'Product Type does not exists', 1
end
GO
/****** Object:  StoredProcedure [Team_D].[GetRawMaterialByRawMaterialCode]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetRawMaterialByRawMaterialCode](@rawmaterialcode varchar (5))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to search raw material by code
begin
	if exists (select RawMaterialCode from Team_D.RawMaterial where RawMaterialCode = @rawmaterialcode)
		begin
			select * from Team_D.RawMaterial
			where RawMaterialCode = @rawmaterialcode
		end
	else
		throw 50004, 'Raw Material Code does not exists', 1
end
GO
/****** Object:  StoredProcedure [Team_D].[GetRawMaterialByRawMaterialID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetRawMaterialByRawMaterialID](@rawmaterialid varchar (36))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to search raw material by id
begin
	if exists (select RawMaterialName from Team_D.RawMaterial where RawMaterialID = @rawmaterialid)
		begin
			select * from Team_D.RawMaterial
			where RawMaterialID = @rawmaterialid
		end
	else
		throw 50004, 'Raw Material ID does not exists', 1
end
GO
/****** Object:  StoredProcedure [Team_D].[GetRawMaterialByRawMaterialName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetRawMaterialByRawMaterialName](@rawmaterialname varchar (40))
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to search raw material by name
begin
	if exists (select RawMaterialName from Team_D.RawMaterial where RawMaterialName = @rawmaterialname)
		begin
			select * from Team_D.RawMaterial
			where RawMaterialName = @rawmaterialname
		end
	else
		throw 50004, 'Raw Material Name does not exists', 1
end
GO
/****** Object:  StoredProcedure [Team_D].[GetSupplierAddressbySupplierAddressID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetSupplierAddressbySupplierAddressID](@supAdID uniqueidentifier)
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting the supplier address by suppplier address ID
as 
begin
	if exists (select supplierAddressID from Team_D.supplierAddress where supplierAddressID=@supAdID)
	begin
	SELECT * FROM Team_D.supplierAddress where supplierAddressID=@supAdID
	end
	else
	throw 50001,'Invalid Values Fetched',3
end
GO
/****** Object:  StoredProcedure [Team_D].[GetSupplierbyEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetSupplierbyEmail](@supEmail varchar(50))
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting the supplier by email
as
begin
if exists (select supplierEmail from Team_D.supplier where supplierEmail = @supEmail)
		begin
			select* from Team_D.supplier
			where supplierEmail = @supEmail
		end
	else 
		throw 50003, 'supplier Email does not exists', 1			
end
GO
/****** Object:  StoredProcedure [Team_D].[GetSupplierbySupplierEmailandPass]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[GetSupplierbySupplierEmailandPass](@supEmail varchar(50) ,@supPass varchar(15))
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting the supplier by email and password
as
begin
if exists (select supplierEmail,supplierPassword from Team_D.supplier where supplierEmail = @supEmail and supplierPassword = @supPass)
		begin
			SELECT* FROM Team_D.supplier where supplierEmail=@supEmail and supplierPassword=@supPass

		end
	else 
		throw 50003, 'supplier Email and password does not exists', 1			
end
GO
/****** Object:  StoredProcedure [Team_D].[GetSupplierbySupplierID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetSupplierbySupplierID](@supID uniqueidentifier)
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting supplier by supplier ID
as
begin
if exists (select supplierID from Team_D.supplier where supplierID = @supID)
		begin
			select* from Team_D.supplier
			where supplierID = @supID
		end
	else 
		throw 50003, 'supplier id does not exists', 1			
end
GO
/****** Object:  StoredProcedure [Team_D].[GetSupplierbySupplierName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[GetSupplierbySupplierName]( @supName varchar(40))
--Created by Pushpraj kaushik on 4/10/19
--created procedure for getting all the suppliers by their name
as
begin
if exists (select supplierName from Team_D.supplier where supplierName = @supName)
		begin
			select* from Team_D.supplier
			where supplierName = @supName
		end
	else 
		throw 50003, 'supplier name does not exists', 1			
end
GO
/****** Object:  StoredProcedure [Team_D].[UpdateProduct]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[UpdateProduct](@productid varchar(36), @productname varchar(30), @productcode varchar(5),
	@productunitprice int, @lastmodifieddatetime datetime)
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to update a product
begin
	if @productname = ''
	throw 50001, 'Product Name cannot be empty', 1
	if exists (Select ProductName from Team_D.Product where ProductName = @productname)
	throw 50002, 'Product with same name already exists', 1
	if @productcode = ''
	throw 50003, 'Product Code cannot be empty', 1
	if exists (Select ProductCode from Team_D.Product where ProductCode = @productcode)
	throw 50004, 'Product with same code already exists', 1
	if @productunitprice <= 0
	throw 50005, 'Product Price cannot be less than or equal to zero', 1
	
	if exists (select ProductID from Team_D.Product where ProductID = @productid)
		begin
			update Team_D.Product
			set	ProductName = @productname,
				ProductCode = @productcode,
				ProductUnitPrice = @productunitprice,
				LastUpdateDateTime = sysdatetime()
			where ProductID = @productid
		end
	else 
		throw 50003, 'Raw material id does not exists', 1			
end
GO
/****** Object:  StoredProcedure [Team_D].[UpdateProductOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[UpdateProductOrder](@ProductOrderID uniqueidentifier,@ProductOrderAmount decimal, @PaymentStatus bit,@TotalQuantity decimal)
--Procedure to update product order
--Developed by Maski Saijahnavi on 01/10/19
as 
begin
	begin try
		UPDATE Team_D.ProductOrders
		SET ProductOrderAmount=@ProductOrderAmount,PaymentStatus =@PaymentStatus, TotalQuantity= @TotalQuantity
		WHERE ProductOrderID=@ProductOrderID
	end try
	begin catch
	PRINT @@ERROR;
		throw 500001,'Invalid Values Fetched',4
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [Team_D].[UpdateRawMaterial]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[UpdateRawMaterial](@rawmaterialid uniqueidentifier, @rawmaterialname varchar(30), @rawmaterialcode varchar(5),
	@rawmaterialunitprice int, @lastmodifieddatetime datetime)
as
--Developed by Rohit Kumar on 30/09/2019
--procedure to update a raw material
begin
	if @rawmaterialname = ''
	throw 50001, 'Raw Material Name cannot be empty', 1
	if exists (Select RawMaterialName from Team_D.RawMaterial where RawMaterialName = @rawmaterialname)
	throw 50002, 'Raw Material with same name already exists', 1
	if @rawmaterialcode = ''
	throw 50003, 'Raw Material Code cannot be empty', 1
	if exists (Select RawMaterialCode from Team_D.RawMaterial where RawMaterialCode = @rawmaterialcode)
	throw 50004, 'Raw Material with same code already exists', 1
	if @rawmaterialunitprice <= 0
	throw 50005, 'Raw material Price cannot be less than or equal to zero', 1
	
	if exists (select RawMaterialID from Team_D.RawMaterial where RawMaterialID = @rawmaterialid)
		begin
			update Team_D.RawMaterial
			set	RawMaterialName = @rawmaterialname,
				RawMaterialCode = @rawmaterialcode,
				RawMaterialUnitPrice = @rawmaterialunitprice,
				LastUpdateDateTime = sysdatetime()
			where RawMaterialID = @rawmaterialid
		end
	else 
		throw 50003, 'Raw material id does not exists', 1			
end
GO
/****** Object:  StoredProcedure [Team_D].[UpdateSupplier]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[UpdateSupplier]( @supID uniqueidentifier,@supName varchar(40), @supMob char(10),@supEmail varchar(50) )
--Created by Pushpraj kaushik on 4/10/19
--created procedure for updating the supplier details
as 
begin
	if @supName = ''
	throw 50003, 'SupplierName cannot be empty', 1
	
	if @supEmail = ''
	throw 50003, 'SupplierEmail cannot be empty', 1
		
	
	if exists (select supplierID from Team_D.supplier where supplierID = @supID)
		begin
			update Team_D.supplier
			set	supplierName = @supname,
				supplierID = @supID,
				supplierEmail = @supEmail,
				supplierMobile= @supMob
			where supplierID = @supID
		end
	else 
		throw 50003, 'supplier id does not exists', 1			
end
	select @@ROWCOUNT

GO
/****** Object:  StoredProcedure [Team_D].[UpdateSupplierAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [Team_D].[UpdateSupplierAddress](@supAdID uniqueidentifier,@supID uniqueidentifier,@AdLine1 varchar(255),@AdLine2 varchar(255),@pcode char(6),@city varchar(20),@state varchar(20))
--Created by Pushpraj kaushik on 4/10/19
--created procedure for updating the supplier address
as
begin
    if @supAdID IS NULL
	throw 50003, 'Supplier Address ID cannot be empty', 1
	if @supID IS NULL
	throw 50003, 'SupplierID cannot be empty', 1
	if @AdLine1 IS NULL OR @AdLine1=''
	throw 50001,'Invalid Adress line1',3
	if @AdLine2 IS NULL OR @AdLine2=''
	throw 50001,'Invalid Address line2',4
	if @pcode IS NULL OR @pcode=''
	throw 50001,'Invalid PinCode',5
	if @city IS NULL OR @city=''
	throw 50001,'Invalid City name',6
	if @State IS NULL OR @State=''
	throw 50001,'Invalid State name',7

	
	if exists (select supplierAddressID from Team_D.supplierAddress where supplierAddressID = @supAdID)
		begin
			update Team_D.supplierAddress
			set	SupplierID=@supID, AddressLine1=@AdLine1,AddressLine2=@AdLine2,PinCode=@pcode,City=@city,State=@state
			where supplierAddressID = @supAdID
		end
	else 
		throw 50003, 'supplier address id does not exists', 1			
end
select @@ROWCOUNT
GO
/****** Object:  StoredProcedure [Team_D].[UpdateSupplierPass]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [Team_D].[UpdateSupplierPass](@supID uniqueidentifier, @supName varchar(40))--@supPass varchar(15))
--Created by Pushpraj kaushik on 4/10/19
--created procedure for updating the supplier by password 
as
begin
		if exists (select supplierID from Team_D.supplier where supplierID = @supID)
		begin
			update supplier
			set	supplierName = @supname,
				supplierID = @supID
				--supplierPassword = @supPass
			where supplierID = @supID
		end
	else 
		throw 50003, 'supplier id does not exists', 1			
end

GO
/****** Object:  StoredProcedure [TeamA].[AddAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creation of a stored procedure AddAddress which adds addresses to the Addesses Table.
Create Procedure [TeamA].[AddAddress]
(
	--Parameters for the AddAddress procedure
	@AddressID uniqueidentifier,
	@RetailerID uniqueidentifier,
	@Line1 varchar(100),
	@Line2 varchar(100),
	@City varchar(20),
	@Pincode char(6),
	@State varchar(15),
	@MobileNo char(10),
	@CreationDateTime DateTime,
	@LastModifiedDateTime DateTime
)
as
begin 
	--Validation of the parameters
	if @AddressID is null OR @AddressID = ''
		throw 5001,'Invalid Address ID',1
	if @RetailerID is null OR @RetailerID = ''
		throw 5001,'Invalid Retailer ID',1
	if @Line1 is null OR @Line1 = ''
		throw 5001, 'Invalid Line1',1
	if @Line2 is null OR @Line2 = ''
		throw 5001, 'Invalid Line1',1
	if @City is null OR @City = ''
		throw 5001, 'Invalid City',1
	if @Pincode is null OR @Pincode = ''
		throw 5001,'Invalid Pincode',1
	if @State is null OR @State = ''
		throw 5001,'Invalid State',1
	if @MobileNo is null OR @MobileNo = ''
		throw 5001, 'Invalid Mobile Number',1
	if @CreationDateTime is null OR @CreationDateTime = ''
		throw 5001, 'Invalid Creation Date and Time',1
	if @LastModifiedDateTime is null OR @LastModifiedDateTime = ''
		throw 5001, 'Invalid Last Modified Date and Time',1

	
	--Inserting the values to the addresses table. 
	insert into TeamA.Addresses
	values 
	(@AddressID,@RetailerID,@Line1,@Line2,@City,@Pincode,@State,@MobileNo,
	@CreationDateTime,@LastModifiedDateTime)
end
GO
/****** Object:  StoredProcedure [TeamA].[AddAdmin]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Creation of a stored procedure AddAdmin which adds Admin to the Admins Table.
Create Procedure [TeamA].[AddAdmin]
(
	--Parameters for the AddAdmin procedure
	@AdminID uniqueidentifier,
	@AdminName varchar(50),
	@Email varchar(50),
	@Password varchar(20),
	@CreationDateTime DateTime,
	@LastModifiedDateTime DateTime
)
as
begin 
	--Validation of the parameters
	if @AdminID is null OR @AdminID = ''
		throw 5001,'Invalid Admin ID',1
	if @AdminName is null OR @AdminName = ''
		throw 5001,'Invalid Admin Name',1
	if @Email is null OR @Email = ''
		throw 5001,'Invalid Admin Name',1
	if @Password is null OR @Password = ''
		throw 5001, 'Invalid Admin Password',1
	if @CreationDateTime is null OR @CreationDateTime = ''
	    throw 5001, 'Invalid Creation Date and Time',1
	if @LastModifiedDateTime is null OR @LastModifiedDateTime = ''
		throw 5001, 'Invalid Last Modified Date and Time',1

	
	--Inserting the values to the admins table. 
	insert into TeamA.Admins
	values 
	(@AdminID,@AdminName,@Email,@Password,
	@CreationDateTime,@LastModifiedDateTime)
end
GO
/****** Object:  StoredProcedure [TeamA].[AddOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [TeamA].[AddOrder](@orderID uniqueidentifier, @retailerID uniqueidentifier,@salespersonID uniqueidentifier, @totalQuantity int, @totalAmount decimal(15,2), @channelOfSale char(7))
as
begin
if exists (Select OrderID from TeamA.Orders where OrderID = @orderID)
throw 50002, 'OrderID already exists.',0
if @orderID is null
throw 50002,'Invalid Order ID',1
if @retailerID is null AND @salespersonID is null
throw 50002, 'Both retailerID and salesmanID are null. ',2
if @totalQuantity = 0
throw 50002,'Total Quantity Entered is 0',3
if @totalAmount = 0
throw 50002, 'Invalid Total Amount',4
if @channelOfSale != 'Offline' AND @channelOfSale != 'Online'
throw 50002,'Invalid Channel Of Sale',5
 begin
 INSERT INTO GreatOutdoors.Orders(OrderID, RetailerID, SalespersonID, TotalQuantity, TotalAmount, ChannelOfSale, OrderDateTime, ModifiedDateTime)
 VALUES(@orderID, @retailerID, @salespersonID, @totalQuantity, @totalAmount, @channelOfSale, sysdatetime(),sysdatetime())
 end
 end 
GO
/****** Object:  StoredProcedure [TeamA].[AddOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[AddOrderDetails](@orderDetailID uniqueidentifier, @orderID uniqueidentifier,@productID uniqueidentifier, @quantity int, @discountedUnitPrice int, @totalPrice int, @giftPacking bit, @addressID uniqueidentifier)
as
begin
if exists (Select OrderDetailID from TeamA.OrderDetails where OrderDetailID = @orderDetailID)
throw 50002, 'Order Detail ID already exists.',0
if @orderDetailID is null
throw 50001,'Invalid Order Detail ID',1
if @orderID is null
throw 50001,'Invalid Order ID',2
if @productID is null
throw 50001, 'Invalid Product ID',3
if @quantity = 0
throw 50001,'Quantity Cannot Be 0',4
if @discountedUnitPrice = 0
throw 50001, 'Invalid Discounted Price',5
if @totalPrice = 0
throw 50001,'Invalid Total Price',6
if @giftPacking <0 OR @giftPacking >1
throw 50001,'Invalid Entry in Gift Packing',7
if @addressID is null
throw 50001, 'Invalid Address ID',8
else
INSERT INTO GreatOutdoors.OrderDetails(OrderDetailID, OrderID, ProductID, Quantity, DiscountedUnitPrice, TotalPrice, GiftPacking, AddressID, CurrentStatus, CreatedDateTime, ModifiedDateTime)
VALUES(@orderDetailID, @orderID, @productID, @quantity, @discountedUnitPrice, @totalPrice, @giftPacking, @addressID, 'InCart', sysdatetime(), sysdatetime())
end
GO
/****** Object:  StoredProcedure [TeamA].[AddProduct]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure 
[TeamA].[AddProduct](@prodid uniqueidentifier,@prodname varchar(50),@category varchar(30),@stock int,@size varchar(4),
@colour varchar(20),@techspecs varchar(1000),@cprice money,@sprice money,@discount decimal)
as
begin
begin try
	-- Checks if Product cost price is 0 or not, throws error if blank
	if @cprice = 0
			throw 50001,'Invalid cost price',1

	-- Checks if Product selling price is 0 or not, throws error if blank
	else if @sprice = 0
			throw 50001,'Invalid selling price',1

	-- Inserts product details into Products table
	insert into TeamA.Products(ProductID,[Name],Category,Stock,Size,Colour,TechnicalSpecifications,
	CostPrice,SellingPrice,DiscountPercentage) 
	values(@prodid,@prodname,@category,@stock,@size,@colour,@techspecs,@cprice,
	@sprice,@discount)

end try

begin catch 
	throw		
end catch
end
GO
/****** Object:  StoredProcedure [TeamA].[AddReturn]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[AddReturn](@returnID uniqueidentifier, @orderID uniqueidentifier, @channelOfReturn varchar(7), @returnAmount decimal(15,2), @returnDateTime datetime,@lastModifiedDateTime datetime)
as
begin
if @returnID is null
throw 5002,'Invalid Return ID',1
if @orderID = ' '
throw 5002,'Invalid Order ID',2
if @channelOfReturn != 'Offline' AND @channelOfReturn != 'Online'
throw 5002,'Invalid Channel Of Return',3
if @returnAmount = 0
throw 5002,'Invalid Return Amount', 4 
if @returnDateTime is null
throw 5002, 'Date Time cannot be null.',0
if @returnDateTime is null
throw 5002, 'Date Time cannot be null.',0
if @lastModifiedDateTime is null
throw 5002, 'Date Time cannot be null.',0

 begin
 INSERT INTO TeamA.ReturnTable(ReturnID, OrderID, ChannelOfReturn, ReturnAmount, ReturnDateTime, LastModifiedDateTime)
 VALUES(@returnID, @orderID, @channelOfReturn, @returnAmount, @returnDateTime, @lastModifiedDateTime)
 end
end
GO
/****** Object:  StoredProcedure [TeamA].[AddSalesPerson]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure 
[TeamA].[AddSalesPerson](@salespersonid uniqueidentifier,@salespersonname varchar(30),@mobile char(10),
@email varchar(100),@password varchar(12),@salary decimal(15,2),@bonus decimal(15,2),@target decimal(15,2),@joiningdate datetime,
@addressl1 varchar(500),@addressl2 varchar(500),@city varchar(100),@state varchar(100),@pincode varchar(6),
@birthdate datetime,@lastmodified datetime)
as
begin

	-- Inserts the values into the SalesPeople table
	insert into TeamA.SalesPersons (SalespersonID,[Name],Mobile,Email,[Password],Salary,
	Bonus,[Target],JoiningDate,AddressLine1,AddressLine2,City,[State],Pincode,Birthdate,LastAccountModifiedDateTime)
	 values(@salespersonid,@salespersonname,@mobile,
	@email,@password,@salary,@bonus,@target,@joiningdate,@addressl1,@addressl2,@city,@state,@pincode,
	@birthdate,@lastmodified)

end
GO
/****** Object:  StoredProcedure [TeamA].[DeleteAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creation of a stored procedure DeleteAddress which deletes addresses from the Addesses Table.
Create Procedure [TeamA].[DeleteAddress](@AddressID uniqueidentifier)
as 
begin
	--Validation of the parameter
	if @AddressID is null OR @AddressID = ''
		throw 5001,'Invalid Address ID',1
	--Exception handling
	begin try
		--Deleting the Address for Addresses table
		delete from TeamA.Addresses where AddressID=@AddressID 
	end try
	begin catch
		PRINT @@ERROR;
		throw 5000,'Values not deleted.',4
		return 0
	end catch
end
GO
/****** Object:  StoredProcedure [TeamA].[DeleteOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[DeleteOrderDetails](@orderDetailID uniqueidentifier)
as
begin

if exists (Select OrderDetailID from TeamA.OrderDetails where OrderDetailID = @orderDetailID )
 begin
 DELETE FROM TeamA.OrderDetails WHERE OrderDetailID = @orderDetailID 
end
else
 throw 50000,'No such record exists.',3


end
GO
/****** Object:  StoredProcedure [TeamA].[DeleteOrderDetailsByOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[DeleteOrderDetailsByOrderID](@orderID uniqueidentifier)
as
begin

if exists (Select OrderID from TeamA.OrderDetails where OrderID = @orderID )
 begin
 DELETE FROM TeamA.OrderDetails WHERE OrderID = @orderID 
end
else
 throw 50000,'No such record exists.',3


end
GO
/****** Object:  StoredProcedure [TeamA].[DeleteOrders]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[DeleteOrders](@orderID uniqueidentifier)
as
begin

if exists (Select OrderID from TeamA.Orders where OrderID = @orderID )
 begin
 DELETE FROM TeamA.Orders WHERE OrderID = @orderID 
end
else
 throw 50000,'No such record exists.',3


end
GO
/****** Object:  StoredProcedure [TeamA].[DeleteReturn]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[DeleteReturn](@returnID uniqueidentifier)
as
begin
begin try
DELETE FROM TeamA.ReturnTable WHERE ReturnID = @returnID
end try
begin catch
 PRINT @@ERROR;
 throw 5006,'Values not deleted.',3
 return 0
end catch
end
GO
/****** Object:  StoredProcedure [TeamA].[DeleteReturnDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[DeleteReturnDetails](@returnID uniqueidentifier, @productID uniqueidentifier)
as
begin
begin try
DELETE FROM TeamA.ReturnDetails where ReturnID = @returnID AND ProductID = @productID
end try
begin catch
 PRINT @@ERROR;
 throw 5000,'Values not deleted.',3
 return 0
end catch
end
GO
/****** Object:  StoredProcedure [TeamA].[GetAddressByRetailerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creation of a stored procedure AddAddress which adds addresses to the Addesses Table.
Create Procedure [TeamA].[GetAddressByRetailerID](@RetailerID uniqueidentifier)
as 
begin
	--Exception handling
	begin try
		--Select all the addresses of the retailer
		select * from TeamA.Addresses a inner join TeamA.Retailers r on a.RetailerID = r.RetailerID
	end try
	begin catch
		PRINT @@ERROR;
		throw 5000,'Invalid values fetched',1
		return 0
	end catch
end
GO
/****** Object:  StoredProcedure [TeamA].[GetAllAddresses]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creation of a stored procedure GetAllAddress which gets all the addresses' data from the Addesses Table. 
Create Procedure [TeamA].[GetAllAddresses]
as
begin
	--Exception handling
	begin try
		--Selecting all the Address from Addresses table
		select * from TeamA.Addresses
	end try
	begin catch
		PRINT @@ERROR;
		throw 5000,'Invalid values fetched',1
		return 0
	end catch
end
GO
/****** Object:  StoredProcedure [TeamA].[GetAllOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[GetAllOrderDetails]
as
begin
Select OrderDetailID, OrderID, ProductID, Quantity, DiscountedUnitPrice, TotalPrice, GiftPacking, AddressID, CurrentStatus
 from TeamA.OrderDetails

end
GO
/****** Object:  StoredProcedure [TeamA].[GetAllOrders]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[GetAllOrders]
as
begin
Select OrderID, RetailerID, SalespersonID, TotalQuantity, TotalAmount, ChannelOfSale, OrderDateTime, ModifiedDateTime
from TeamA.Orders
end
GO
/****** Object:  StoredProcedure [TeamA].[GetAllProducts]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamA].[GetAllProducts] as
begin
	-- Returns products table from Products
	select ProductID,[Name],Category,Stock,Size,Colour,TechnicalSpecifications,
	CostPrice,SellingPrice,DiscountPercentage from TeamA.Products
end
GO
/****** Object:  StoredProcedure [TeamA].[GetAllReturnDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[GetAllReturnDetails](@returnID uniqueidentifier)
as
begin
begin try
Select * from TeamA.ReturnDetails
end try
begin catch
 PRINT @@ERROR;
 throw 5007,'Invalid values fetched.',1
 return 0
end catch
end
GO
/****** Object:  StoredProcedure [TeamA].[GetAllReturns]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [TeamA].[GetAllReturns]
 as 
begin
begin
select * from TeamA.ReturnTable
end
end
GO
/****** Object:  StoredProcedure [TeamA].[GetOrderDetailsByOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[GetOrderDetailsByOrderID](@orderID uniqueidentifier)
as
begin
if exists (Select OrderID from TeamA.OrderDetails where OrderID = @orderID)
 begin
 Select OrderDetailID, OrderID, ProductID, Quantity, DiscountedUnitPrice, TotalPrice, GiftPacking, AddressID, CurrentStatus
 from TeamA.OrderDetails where OrderID = @orderID
 end
else
 throw 50000,'Order Does Not Exist.',1

end
GO
/****** Object:  StoredProcedure [TeamA].[GetOrderDetailsByProductID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[GetOrderDetailsByProductID](@productID uniqueidentifier)
as
begin
if exists (Select ProductID from TeamA.OrderDetails where ProductID = @productID)
 begin
 Select OrderDetailID, OrderID, ProductID, Quantity, DiscountedUnitPrice, TotalPrice, GiftPacking, AddressID, CurrentStatus
 from TeamA.OrderDetails where ProductID = @productID
 end
else
 throw 50000,'Product Does Not Exist.',2
end
GO
/****** Object:  StoredProcedure [TeamA].[GetOrdersByOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[GetOrdersByOrderID](@orderID uniqueidentifier)
as
begin
if exists (Select OrderID from TeamA.Orders where OrderID = @orderID )
begin
Select OrderID, RetailerID, SalespersonID, TotalQuantity, TotalAmount,
ChannelOfSale, OrderDateTime, ModifiedDateTime from TeamA.Orders where OrderID = @orderID
end 
else
 throw 50005,'Invalid values fetched.',2
end
GO
/****** Object:  StoredProcedure [TeamA].[GetOrdersByRetailerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[GetOrdersByRetailerID](@retailerID uniqueidentifier)
as
begin
if exists (Select OrderID from TeamA.Orders where RetailerID = @retailerID )
begin
Select OrderID, RetailerID, SalespersonID, TotalQuantity, TotalAmount,
ChannelOfSale, OrderDateTime, ModifiedDateTime from TeamA.Orders where  RetailerID = @retailerID
end 
else
 throw 50005,'No order found against this retailerID',2
end
GO
/****** Object:  StoredProcedure [TeamA].[GetOrdersBySalespersonID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[GetOrdersBySalespersonID](@salespersonID uniqueidentifier)
as
begin
if exists (Select OrderID from TeamA.Orders where SalespersonID = @salespersonID)
begin
Select OrderID, RetailerID, SalespersonID, TotalQuantity, TotalAmount,
ChannelOfSale, OrderDateTime, ModifiedDateTime from TeamA.Orders where  SalespersonID = @salespersonID
end 
else
 throw 50005,'No order found against this salespersonID',3
end
GO
/****** Object:  StoredProcedure [TeamA].[GetProductByName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamA].[GetProductByName](@prodname varchar(50)) as
begin
    	--Returns products from the Products table with the given product name
		select ProductID,[Name],Category,Stock,Size,Colour,TechnicalSpecifications,
	CostPrice,SellingPrice,DiscountPercentage from TeamA.Products where [Name] = @prodname 
end
GO
/****** Object:  StoredProcedure [TeamA].[GetProductByProductID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamA].[GetProductByProductID](@prodid uniqueidentifier) as
begin
 select ProductID,[Name],Category,Stock,Size,Colour,TechnicalSpecifications,
	CostPrice,SellingPrice,DiscountPercentage from TeamA.Products where ProductID = @prodid
end
GO
/****** Object:  StoredProcedure [TeamA].[GetProductsByCategory]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamA].[GetProductsByCategory](@category varchar(30)) as
begin
    	-- Returns products which belong to the given category
		select ProductID,[Name],Category,Stock,Size,Colour,TechnicalSpecifications,
	CostPrice,SellingPrice,DiscountPercentage from TeamA.Products where Category = @category
end
GO
/****** Object:  StoredProcedure [TeamA].[GetReturnByOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [TeamA].[GetReturnByOrderID](@orderID uniqueidentifier)
as 
begin

begin try
Select * from TeamA.ReturnTable where OrderID = @orderID
end try
begin catch
 PRINT @@ERROR;
 throw 5005,'Invalid values fetched.',2
 return 0
end catch

end
GO
/****** Object:  StoredProcedure [TeamA].[GetReturnByReturnID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [TeamA].[GetReturnByReturnID](@returnID varchar(255))
as 
begin

begin try
Select * from TeamA.ReturnTable where ReturnID = @returnID
end try
begin catch
 PRINT @@ERROR;
 throw 5005,'Invalid values fetched.',2
 return 0
end catch

end
GO
/****** Object:  StoredProcedure [TeamA].[GetReturnDetailsByProductID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[GetReturnDetailsByProductID](@productID uniqueidentifier)
as
begin
begin try
Select * from TeamA.ReturnDetails where ProductID = @productID
end try
begin catch
 PRINT @@ERROR;
 throw 5000,'Invalid values fetched.',2
 return 0
end catch
end
GO
/****** Object:  StoredProcedure [TeamA].[GetReturnDetailsByReturnID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[GetReturnDetailsByReturnID](@returnID uniqueidentifier)
as
begin
begin try
Select * from TeamA.ReturnDetails where ReturnID = @returnID
end try
begin catch
 PRINT @@ERROR;
 throw 5007,'Invalid values fetched.',1
 return 0
end catch
end
GO
/****** Object:  StoredProcedure [TeamA].[UpdateAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Creation of a stored procedure UpdateAddress which updates addresses in the Addesses Table.
Create Procedure [TeamA].[UpdateAddress](@AddressID uniqueidentifier,@RetailerID uniqueidentifier,
	@Line1 varchar(100),@Line2 varchar(100),@City varchar(50),@Pincode char(6),@State varchar(20),@MobileNo char(10),
	@CreationDateTime DateTime,@LastModifiedDateTime DateTime)
as
begin
	--Validation of the parameters 
	if @AddressID is null OR @AddressID = ''
		throw 5001,'Invalid Address ID',1
	if @RetailerID is null OR @RetailerID = ''
		throw 5001,'Invalid Retailer ID',1
	if @Line1 is null OR @Line1 = ''
		throw 5001, 'Invalid Line1',1
	if @Line2 is null OR @Line2 = ''
		throw 5001, 'Invalid Line1',1
	if @City is null OR @City = ''
		throw 5001, 'Invalid City',1
	if @Pincode is null OR @Pincode = ''
		throw 5001,'Invalid Pincode',1
	if @State is null OR @State = ''
		throw 5001,'Invalid State',1
	if @MobileNo is null OR @MobileNo = ''
		throw 5001, 'Invalid Mobile Number',1
	if @CreationDateTime is null OR @CreationDateTime = ''
			throw 5001, 'Invalid Creation Date and Time',1
	if @LastModifiedDateTime is null OR @LastModifiedDateTime = ''
			throw 5001, 'Invalid Last Modified Date and Time',1
	--Exception handling
	begin try
		--Update details in the table
		update TeamA.Addresses
		set
		Line1=@Line1,
		Line2=@Line2,
		City=@City,
		Pincode=@Pincode,
		[State]=@State,
		MobileNo=@MobileNo
		where AddressID=@AddressID
	end try
	begin catch
		PRINT @@ERROR;
		throw 5000,'Values Not Updated',3
		return 0
	end catch
end
GO
/****** Object:  StoredProcedure [TeamA].[UpdateOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[UpdateOrder](@orderID uniqueidentifier, @totalQuantity int, @totalAmount decimal(15,2))
as
begin
if exists (Select OrderID from TeamA.Orders where OrderID = @orderID )
 begin
 Update TeamA.Orders
 SET TotalQuantity = @totalQuantity, TotalAmount = @totalAmount, ModifiedDateTime = sysdatetime()
 where OrderID = @orderID 
 end
else
throw 50000,'No such record exists.',3
end
GO
/****** Object:  StoredProcedure [TeamA].[UpdateOrderDetail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamA].[UpdateOrderDetail](@orderID uniqueidentifier, @currentStatus varchar(15))
as
begin
if exists (Select OrderID from TeamA.OrderDetails where OrderID = @orderID )
 begin
 Update TeamA.OrderDetails
 SET CurrentStatus = @currentStatus, ModifiedDateTime = sysdatetime()
 where OrderID = @orderID 
 end
else
throw 50000,'No such record exists.',3
end
GO
/****** Object:  StoredProcedure [TeamA].[UpdateProductDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamA].[UpdateProductDetails](@prodid uniqueidentifier,@prodname varchar(50),
@category varchar(30),@size varchar(4),@colour varchar(20),@techspecs varchar(1000),@costprice decimal(15,2),
@sellingprice decimal(15,2),@discountpercentage decimal(15,2)) as
begin
	-- updates products with the given details based on the productid
	update TeamA.Products 
	set [Name] = @prodname, Category = @category, Size =@size, Colour = @colour, 
	TechnicalSpecifications = @techspecs , CostPrice = @costprice, SellingPrice = @sellingprice, DiscountPercentage = @discountpercentage
	where 
	exists (select ProductID from TeamA.Products where ProductID=@prodid)
end
GO
/****** Object:  StoredProcedure [TeamA].[UpdateProductDiscount]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamA].[UpdateProductDiscount](@prodid uniqueidentifier,@discount decimal(15,2)) as
begin
	-- updates stock of product based on productid
	update TeamA.Products set DiscountPercentage = @discount where
	exists (select ProductID from TeamA.Products where ProductID=@prodid)

end
GO
/****** Object:  StoredProcedure [TeamA].[UpdateProductStock]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamA].[UpdateProductStock](@prodid uniqueidentifier,@stock int) as
begin
	-- updates stock of product based on productid
	update TeamA.Products set Stock = @stock where
	exists (select ProductID from TeamA.Products where ProductID=@prodid)

end
GO
/****** Object:  StoredProcedure [TeamB].[AddAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [TeamB].[AddAddress](@addressID uniqueidentifier, @addressLine1 varchar(30),@addressLine2 varchAR(50),
@landmark varchar(20), @city varchar(20),@state varchar(20), @pinCode varchar(20),@retailerID uniqueidentifier, @CreationDateTime datetime, @LastModifiedDateTime datetime)
AS 
  BEGIN
	begin try
		insert into TeamB.Addresses values(@addressID, @addressLine1,@addressLine2,@landmark,@city,@state,@pinCode,@retailerID,@CreationDateTime,@LastModifiedDateTime)
		select @@ROWCOUNT
	end try
	begin Catch
		throw 500000,'Address Not Added',1
	end catch	
  END
GO
/****** Object:  StoredProcedure [TeamB].[AddOfflineOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Developed by Abhishek
-- Date: 30/09/2019


--procedure for sales person to add offline orders

--Creating Procedures for Adding Offline Order
CREATE Procedure [TeamB].[AddOfflineOrder]( @offlineOrderID uniqueidentifier,@retailerID uniqueidentifier,@salesPersonID uniqueidentifier, @totalOrderAmount money, @totalQuantity int)

as
begin

if @retailerID is null 
   throw 50001, 'Invalid Retailer ID', 2

if @salesPersonID is null 
   throw 50002, 'Invalid SalesPerson ID', 3

if @totalOrderAmount < 1
   throw 50003, 'Total Order Amount cannot be negative', 4

if @totalQuantity < 1
   throw 50004, 'Total Quantity cannot be negative', 5

Declare @CreationDateTime DateTime , @LastModifiedDateTime DateTime

Set @CreationDateTime = SYSDATETIME()
Set @LastModifiedDateTime = SYSDATETIME()


Insert into  TeamB.OfflineOrders(OfflineOrderID, RetailerID, SalesPersonID, TotalOfflineOrderAmount,
   TotalQuantity,CreationDateTime,LastModifiedDateTime)
 
   values(@offlineOrderID, @retailerID, @salesPersonID, @totalOrderAmount,
   @totalQuantity,@CreationDateTime,@LastModifiedDateTime)

end
GO
/****** Object:  StoredProcedure [TeamB].[AddOfflineOrderDetail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [TeamB].[AddOfflineOrderDetail](@offlineOrderDetailID uniqueidentifier,@offlineOrderID uniqueidentifier,@productID uniqueidentifier,@productName varchar(30), @Quantity int, @unitPrice money,@totalPrice money)

as
begin

if @productID is null 
   throw 50001, 'Invalid product ID', 1

if @ProductName is null 
   throw 50002, 'Invalid Product Name', 2

if @Quantity < 1
   throw 50003, 'Total Order Amount cannot be negative', 3

if @unitPrice< 1
   throw 50004, 'Total Quantity cannot be negative', 4

if @totalPrice< 1
   throw 50005, 'Total Quantity cannot be negative', 5

if @offlineOrderID is null 
   throw 50006, 'Invalid OfflineOrder ID', 6

Declare  @CreationDateTime DateTime , @LastModifiedDateTime DateTime

Set @CreationDateTime = SYSDATETIME()
Set @LastModifiedDateTime = SYSDATETIME()
Set @totalPrice = @Quantity * @unitPrice


Insert into  TeamB.OfflineOrderDetails(OfflineOrderDetailID, ProductID, OfflineOrderID, TotalPrice,UnitPrice,
   Quantity,CreationDateTime,LastModifiedDateTime)
 
   values(@offlineOrderDetailID, @productID, @offlineOrderID, @totalPrice,@unitPrice,
   @Quantity,@CreationDateTime,@LastModifiedDateTime)

end

GO
/****** Object:  StoredProcedure [TeamB].[AddOnlineReturn]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE Procedure [TeamB].[AddOnlineReturn](@onlineReturnID uniqueidentifier,@orderID uniqueidentifier,@productID uniqueidentifier,
 @retailerID uniqueidentifier,@orderNumber int,@productNumber int, @totalAmount money, @productPrice money, 
@purpose varchar(40), @quantityOfReturn int,@lastModifiedDateTime datetime, @creationDateTime datetime)
as
Begin
   begin Try
    
   if @onlineReturnID is null 
   throw 50001, 'Invalid Online Return ID', 1
   if @orderNumber is null 
   throw 50001, 'Invalid Order Number', 2
   if @productNumber is null 
   throw 50001, 'Invalid Product Number', 3
   if @retailerID is null 
   throw 50001, 'Invalid Retailer ID', 4
  
   
   if @quantityOfReturn = 0
   throw 50001, 'Quantity Of Return is 0', 7
   if @purpose is null 
   throw 50001, 'Purpose Not Selected', 8
    if @orderID is null
   throw 50001, 'Invalid Order ID', 1
    if @productID is null 
   throw 50001, 'Invalid product ID', 1
     Insert into TeamB.OnlineReturns(OnlineReturnID, OrderID, ProductID, RetailerID, 
	 OrderNumber, ProductNumber,TotalAmount, ProductPrice, Purpose, 
   QuantityOfReturn, LastModifiedDateTime, CreationDateTime)
        values(@onlineReturnID,@orderID,@productID,@retailerID, @orderNumber, @productNumber,
		@totalAmount, @productPrice, @purpose, @quantityOfReturn, @lastModifiedDateTime, @creationDateTime)
		return @@ROWCOUNT
   end try
   begin catch 
      throw;
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[AddOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[AddOrder](@orderId uniqueidentifier, @retailerId uniqueidentifier, @dateOfOrder datetime, @totalQuantity int, @orderAmount money, @lastModifiedDate datetime)
as
 begin
	
	if @retailerID is null 
			   throw 50001, 'Invalid Retailer ID', 2

	if @orderAmount < 1
			   throw 50003, 'Total Order Amount cannot be negative', 4
	
	if @totalQuantity < 1
			   throw 50004, 'Total Quantity cannot be negative', 5

insert into TeamB.OrdersTable (OrderID, RetailerID, DateOfOrder, TotalQuantity, OrderAmount, LastModifiedDateTime) values (@orderId, @retailerId, @dateOfOrder, @totalQuantity, @orderAmount, @lastModifiedDate)			
 return @@ROWCOUNT
end
GO
/****** Object:  StoredProcedure [TeamB].[AddOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[AddOrderDetails](@orderId uniqueidentifier,@orderDetailID uniqueidentifier, @productId uniqueidentifier,  @productQuantityOrdered int, @productPrice money, @addressId uniqueidentifier, @totalAmount money, @dateOfOrder datetime, @lastModifiedDate datetime)
as
 begin
	if @productID is null 
	   throw 50001, 'Invalid product ID', 1

	if @productQuantityOrdered < 1
	   throw 50002, 'Total Order Amount cannot be negative', 3

	if @productPrice< 1
	   throw 50003, 'Total Quantity cannot be negative', 4

	if @totalAmount< 1
	   throw 50004, 'Total Quantity cannot be negative', 5

	if @orderDetailID is null 
	   throw 50005, 'Invalid OfflineOrder ID', 6

	if @addressId is null 
	   throw 50006, 'Invalid Address ID', 6

insert into TeamB.OrderDetailsTable (OrderID, OrderDetailID, ProductID, ProductQuantityOrdered, ProductPrice, AddressID, TotalAmount, DateOfOrder, LastModifiedDateTime ) values (@orderId, @orderDetailId, @productId, @productQuantityOrdered, @productPrice, @addressId, @totalAmount, @dateOfOrder, @lastModifiedDate)
	return @@ROWCOUNT
 end
GO
/****** Object:  StoredProcedure [TeamB].[AddProduct]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[AddProduct] (@ProductID uniqueidentifier,@ProductName varchar(15), @ProductCategory varchar(25),
 @ProductColor varchar(30), @ProductSize varchar(15), @ProductMaterial varchar(30),@ProductPrice money )

as
BEGIN

	begin try
		 declare @ProductNumber int
		set @ProductNumber= isnull((select max(ProductNumber) from TeamB.Product),0)+1
		insert into TeamB.Product values
		(@ProductID,@ProductName,@ProductNumber,@ProductCategory,@ProductColor,@ProductSize,@ProductMaterial,@ProductPrice,sysdatetime(),sysdatetime())

	end try

	begin catch 

		throw 500000, 'Product not added',1

	end catch

END
GO
/****** Object:  StoredProcedure [TeamB].[AddRetailer]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [TeamB].[AddRetailer](@retailerID uniqueidentifier, @retailerName varchar(30),@retailerEmail varchAR(50),
@password varchar(20), @retailerMobile varchar(50), @CreationDateTime datetime, @LastModifiedDateTime datetime)
AS 
  BEGIN
	begin try
		if @retailerName =''
		  throw 500010,'Retailer Name Is Must',1;
		if @retailerEmail =''
		  throw 500013,'Retailer Email Is Must',1;
		if @retailerMobile =''
		  throw 500014,'Retailer Mobile Is Must',1;
		if exists (select RetailerEmail from Retailers where RetailerEmail = @retailerEmail)
		  throw 500011,'Email Already Exist',1;
		if exists (select RetailerMobile from Retailers where RetailerMobile = @retailerMobile)
		  throw 500012,'Mobile No. Already Exist',1;
		insert into TeamB.Retailers values(@retailerID, @retailerName,@retailerEmail,@password,@retailerMobile,@CreationDateTime,@LastModifiedDateTime);
		select @@ROWCOUNT
	end try
	begin Catch
		throw; ---500000,'Retailer Not Added',1
	end catch	
  END
GO
/****** Object:  StoredProcedure [TeamB].[AddSalesPerson]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [TeamB].[AddSalesPerson](@salesPersonID uniqueidentifier, @salesPersonName varchar(30),@Email varchAR(50),
@password varchar(20), @salesPersonMobile varchar(50), @CreationDateTime datetime, @LastModifiedDateTime datetime )
AS 
  BEGIN
	begin try
		if @salesPersonName =''
		  throw 500010,'SalesPerson Name Is Must',1;
		if @Email =''
		  throw 500013,'SalesPerson Email Is Must',1;
		if @salesPersonMobile =''
		  throw 500014,'SalesPerson Mobile Is Must',1;
		if exists (select Email from SalesPersons where Email = @Email)
		  throw 500011,'Email Already Exist',1;
		if exists (select SalesPersonMobile from SalesPersons where SalesPersonMobile = @salesPersonMobile)
		  throw 500012,'Mobile No. Already Exist',1;
		insert into TeamB.SalesPersons values(@salesPersonID, @salesPersonName,@Email,@password,@salesPersonMobile,@CreationDateTime,@LastModifiedDateTime);
		select @@ROWCOUNT
	end try
	begin Catch
		throw; ---500000,'SalesPerson Not Added',1
	end catch	
  END
GO
/****** Object:  StoredProcedure [TeamB].[DeleteAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[DeleteAddress](@addressID uniqueidentifier)
AS
  BEGIN
	begin try
		Delete From TeamB.Addresses where AddressID = @addressID
	end try
	begin catch
		throw 500010,'Address Not Deleted',1
	end catch
  END
GO
/****** Object:  StoredProcedure [TeamB].[DeleteOfflineOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------------------
--Creating Procedures for Delete Offline Order

CREATE Procedure [TeamB].[DeleteOfflineOrder](@offlineOrderid uniqueidentifier)
AS
BEGIN
   begin try
 Delete from TeamB.OfflineOrders where OfflineOrderID = @offlineOrderid
   end try
   begin catch
 PRINT @@ERROR;
    throw 50000, 'Invalid Values fetched',5
    return 0
   end catch
end

GO
/****** Object:  StoredProcedure [TeamB].[DeleteOfflineOrderDetail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------------------

--Created procedure for deleting offline order detail

CREATE Procedure [TeamB].[DeleteOfflineOrderDetail](@offlineOrderDetailID uniqueidentifier)
AS
BEGIN
   begin try
 Delete from TeamB.OfflineOrderDetails where OfflineOrderDetailID = @offlineOrderDetailID
   end try
   begin catch
 PRINT @@ERROR;
    throw 50000, 'Invalid Values fetched',5
    return 0
   end catch
end

GO
/****** Object:  StoredProcedure [TeamB].[DeleteOnlineReturn]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamB].[DeleteOnlineReturn](@onlineReturnID uniqueidentifier)
AS
BEGIN
   begin try
   Delete from TeamB.OnlineReturns where OnlineReturnID = @onlineReturnID
   select @@ROWCOUNT
   end try
   begin catch
   PRINT @@ERROR;
	  throw 5000, 'Invalid Values fatched',5
   
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[DeleteOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[DeleteOrder](@orderId uniqueidentifier)
as
 begin
	begin try
		delete from TeamB.OrdersTable where OrderID=@orderId
		delete from TeamB.OrderDetailstable where OrderID=@orderId
	end try
	begin catch
		PRINT @@ERROR;
	    throw 50000, 'Invalid Values',5
	    return 0
	end catch
 end
 return @@ROWCOUNT
GO
/****** Object:  StoredProcedure [TeamB].[DeleteOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[DeleteOrderDetails](@orderdetailid uniqueidentifier)
as
 begin
	begin try
		delete from TeamB.OrderDetailsTable where OrderDetailID=@orderdetailid
	end try
	begin catch
		throw 500000,'Invalid Orderdetails Id',1
	end catch
 end
 return @@ROWCOUNT
GO
/****** Object:  StoredProcedure [TeamB].[DeleteProduct]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamB].[DeleteProduct](@ProductID uniqueidentifier)
as 
BEGIN
begin try
	if exists(select ProductID from TeamB.Product where ProductID = @ProductID) 
		delete from TeamB.Product where ProductID = @ProductID
	else
		throw 500002, 'Product does not exist',1 
end try
begin catch
	throw 500003, 'Unable to fetch product',1
end catch
END
GO
/****** Object:  StoredProcedure [TeamB].[DeleteRetailer]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[DeleteRetailer](@retailerID uniqueidentifier )
AS 
  BEGIN
	begin try 
		Delete from TeamB.Reailers where RetailerID= @retailerID
		select @@ROWCOUNT
	end try
	begin Catch
		throw 500000,'Retailer Not Deleted',1
	end catch	
END
GO
/****** Object:  StoredProcedure [TeamB].[DeleteSalesPerson]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create procedure [TeamB].[DeleteSalesPerson](@salesPersonID uniqueidentifier )
AS 
  BEGIN
	begin try 
		Delete from TeamB.SalesPerson where SalesPersonID= @salesPersonID
		select @@ROWCOUNT
	end try
	begin Catch
		throw 500000,'SalesPerson Not Deleted',1
	end catch	
END
GO
/****** Object:  StoredProcedure [TeamB].[GetAddressesByAddressID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[GetAddressesByAddressID](@addressID uniqueidentifier)
AS
  BEGIN
	begin try
		Select *From TeamB.Addresses where AddressID = @addressID
	end try
	begin catch
		throw 500010,'Address Id Does Not Exist',1
	end catch
  END
GO
/****** Object:  StoredProcedure [TeamB].[GetAddressesByRetailerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [TeamB].[GetAddressesByRetailerID](@retailerID uniqueidentifier)
AS
  BEGIN
	begin try
		Select *From TeamB.Addresses where RetailerID = @retailerID
	end try
	begin catch
		throw 500010,'Invalid Retailer ID',1
	end catch
  END
GO
/****** Object:  StoredProcedure [TeamB].[GetAdminbyEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamB].[GetAdminbyEmail](@Email varchar(30))
as 
 begin
	begin try
		SELECT* FROM TeamB.AdminTable where Email=@Email
	end try
	begin catch
		PRINT @@ERROR;
		throw 5001,'Invalid Values Fetched',6
		return 0
    end catch
 end
GO
/****** Object:  StoredProcedure [TeamB].[GetAdminbyEmailAndPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamB].[GetAdminbyEmailAndPassword](@Email varchar(30),@Password varchar(15))
as 
 begin
	begin try
		SELECT* FROM TeamB.AdminTable where Email=@Email and Password=@Password
	end try
	begin catch
		PRINT @@ERROR;
		throw 5001,'Invalid Values Fetched',6
		return 0
    end catch
 end
GO
/****** Object:  StoredProcedure [TeamB].[GetAllOfflineOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamB].[GetAllOfflineOrder]
AS
BEGIN
   begin try
   select * from TeamB.OfflineOrder 
   end try
   begin catch
      PRINT @@ERROR;
  throw 50000, 'Invalid Values fetched',2
  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[GetAllOfflineOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamB].[GetAllOfflineOrderDetails]
AS
BEGIN
   begin try
   select * from TeamB.OfflineOrderDetails 
   end try
   begin catch
      PRINT @@ERROR;
  throw 50000, 'Invalid Values fetched',2
  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[GetAllOnlineReturns]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamB].[GetAllOnlineReturns]
AS
BEGIN
   begin try
   select * from TeamB.OnlineReturns 
   end try
   begin catch
   PRINT @@ERROR;
	  throw 5000, 'Invalid Values fatched',7
	 
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[GetAllProducts]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamB].[GetAllProducts]

as
BEGIN

	Select * from TeamB.Product

END
GO
/****** Object:  StoredProcedure [TeamB].[GetAllSalesPerson]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [TeamB].[GetAllSalesPerson]
AS
  BEGIN
	begin try
        	select * from TeamB.SalesPersons 
	end try
	begin catch
         	throw 500021,'SalesPerson does not Exist',9
	end catch
  END
GO
/****** Object:  StoredProcedure [TeamB].[GetOfflineOrderByOfflineOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------------------
--Created procedure for getting offline order by orderid

CREATE Procedure [TeamB].[GetOfflineOrderByOfflineOrderID](@offlinerOrderid uniqueidentifier)
AS
BEGIN
   begin try
   select * from TeamB.OfflineOrders where OfflineOrderID = @offlinerOrderid
   end try
   begin catch
      PRINT @@ERROR;
  throw 50000, 'Invalid Values fetched',2
  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[GetOfflineOrderByRetailerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------------------
--Created procedure for getting offline order by retailerid

CREATE Procedure [TeamB].[GetOfflineOrderByRetailerID](@retailerID uniqueidentifier)
AS
BEGIN
   begin try
   select * from TeamB.OfflineOrders where RetailerID = @retailerID
   end try
   begin catch
      PRINT @@ERROR;
  throw 50000, 'Invalid Values fetched',2
  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[GetOfflineOrderBySalesPersonID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------------------
--Created procedure for getting offline order by salespersonid

CREATE Procedure [TeamB].[GetOfflineOrderBySalesPersonID](@salesPersonID uniqueidentifier)
AS
BEGIN
   begin try
   select * from TeamB.OfflineOrders where SalesPersonID = @salesPersonID
   end try
   begin catch
      PRINT @@ERROR;
  throw 50000, 'Invalid Values fetched',2
  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[GetOfflineOrderDetailByOfflineOrderDetailID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------------------
--Created procedure for getting offline order detail by offline order id

CREATE Procedure [TeamB].[GetOfflineOrderDetailByOfflineOrderDetailID](@offlinerOrderDetailID uniqueidentifier)
AS
BEGIN
   begin try
   select * from TeamB.OfflineOrderDetails where OfflineOrderDetailID = @offlinerOrderDetailID
   end try
   begin catch
      PRINT @@ERROR;
  throw 50000, 'Invalid Values fetched',2
  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[GetOfflineOrderDetailByOfflineOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------------------
--Created procedure for getting offline order detail by offline order id

CREATE Procedure [TeamB].[GetOfflineOrderDetailByOfflineOrderID](@offlinerOrderID uniqueidentifier)
AS
BEGIN
   begin try
   select * from TeamB.OfflineOrderDetails where OfflineOrderID = @offlinerOrderID
   end try
   begin catch
      PRINT @@ERROR;
  throw 50000, 'Invalid Values fetched',2
  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[GetOnlineReturnByOnlineReturnID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamB].[GetOnlineReturnByOnlineReturnID](@onlineReturnID uniqueidentifier)
AS
BEGIN
   begin try
   select * from TeamB.OnlineReturns where OnlineReturnID = @onlineReturnID
   end try
   begin catch
   PRINT @@ERROR;
	  throw 5000, 'Invalid Values fatched',2
	  
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[GetOnlineReturnByRetailerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamB].[GetOnlineReturnByRetailerID](@retailerID uniqueidentifier)
AS
BEGIN
   begin try
   select * from TeamB.OnlineReturns where RetailerID = @retailerID
   end try
   begin catch
   PRINT @@ERROR;
	  throw 5000, 'Invalid Values fatched',4  
  
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[GetOnlineReturnsByPurpose]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamB].[GetOnlineReturnsByPurpose](@purpose VARCHAR(40))
AS
BEGIN
   begin try
   select * from TeamB.OnlineReturns where Purpose = @purpose
   end try
   begin catch
   PRINT @@ERROR;
	  throw 5000, 'Invalid Values fatched',3

   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[GetProductByProductID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[GetProductByProductID](@ProductID uniqueidentifier)
as 
BEGIN
begin try
	if exists(select ProductID from TeamB.Product where ProductID = @ProductID) 
		select * from TeamB.Product where ProductID = @ProductID
	else
		throw 500002, 'Product does not exist',1 
end try
begin catch
	throw 500003, 'Unable to fetch product',1
end catch
END
GO
/****** Object:  StoredProcedure [TeamB].[GetProductByProductNumber]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[GetProductByProductNumber](@ProductNumber int)
as 
BEGIN
begin try
	if exists(select ProductNumber from TeamB.Product where ProductNumber = @ProductNumber) 
		select * from TeamB.Product where ProductNumber = @ProductNumber
	else
		throw 500002, 'Product does not exist',1 
end try
begin catch
	throw 500003, 'Unable to fetch product',1
end catch
END
GO
/****** Object:  StoredProcedure [TeamB].[GetProductsByProductCategory]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[GetProductsByProductCategory](@ProductCategory varchar(25))
as 
BEGIN
begin try
	select * from TeamB.Product where ProductCategory = @ProductCategory
end try
begin catch
	throw 500003, 'Unable to fetch products',1
end catch
END
GO
/****** Object:  StoredProcedure [TeamB].[GetProductsByProductName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamB].[GetProductsByProductName]( @ProductName varchar(15))
as 
BEGIN
begin try
	select * from TeamB.Product where ProductName = @ProductName
end try
begin catch
	throw 500003, 'Unable to fetch products',1
end catch
END
GO
/****** Object:  StoredProcedure [TeamB].[GetReatilerByEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [TeamB].[GetReatilerByEmail](@retailerEmail varchar(30))
AS
  BEGIN
	begin try
		select * from TeamB.Retailers where RetailerEmail=@retailerEmail
	end try
	begin catch
		throw 500021,'Retailer Email does not Exist',1
	end catch
  END
GO
/****** Object:  StoredProcedure [TeamB].[GetReatilerByEmailAndPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [TeamB].[GetReatilerByEmailAndPassword](@retailerEmail varchar(30), @password varchar(30))
AS
  BEGIN
	begin try
		select * from TeamB.Retailers where RetailerEmail=@retailerEmail and Password = @password
	end try
	begin catch
		throw 500021,'Retailer Email and Password Invalid',1
	end catch
  END
GO
/****** Object:  StoredProcedure [TeamB].[GetReatilerByName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [TeamB].[GetReatilerByName](@retailerName varchar(30))
AS
  BEGIN
	begin try
		select * from TeamB.Retailers where RetailerName=@retailerName
	end try
	begin catch
		throw 500021,'RetailerID does not Exist',1
	end catch
  END
GO
/****** Object:  StoredProcedure [TeamB].[GetReatilerByReatilerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [TeamB].[GetReatilerByReatilerID](@retailerID uniqueidentifier)
AS
  BEGIN
	begin try
		select * from TeamB.Retailers where RetailerID=@retailerID
	end try
	begin catch
		throw 500021,'RetailerID does not Exist',1
	end catch
  END
GO
/****** Object:  StoredProcedure [TeamB].[GetSalesPersonByEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [TeamB].[GetSalesPersonByEmail](@Email varchar(30))
AS
  BEGIN
	begin try
		select * from TeamB.SalesPersons where Email=@Email
	end try
	begin catch
		throw 500021,'SalesPerson Email does not Exist',1
	end catch
  END
GO
/****** Object:  StoredProcedure [TeamB].[GetSalesPersonByEmailAndPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  Create procedure [TeamB].[GetSalesPersonByEmailAndPassword](@Email varchar(30), @password varchar(30))
AS
  BEGIN
	begin try
		select * from TeamB.SalesPersons where Email=@Email and Password = @password
	end try
	begin catch
		throw 500021,'SalesPerson Email and Password Invalid',1
	end catch
  END
GO
/****** Object:  StoredProcedure [TeamB].[GetSalesPersonByName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE  procedure [TeamB].[GetSalesPersonByName](@salesPersonName varchar(30))
AS
  BEGIN
	begin try
		select * from TeamB.SalesPersons where SalesPersonName=@salesPersonName
	end try
	begin catch
		throw 500021,'SalesPersonID does not Exist',1
	end catch
  End
GO
/****** Object:  StoredProcedure [TeamB].[GetSalesPersonBySalesPersonID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[GetSalesPersonBySalesPersonID](@salesPersonID uniqueidentifier)
AS
  BEGIN
	begin try
		select * from TeamB.SalesPersons where SalesPersonID=@salesPersonID
	end try
	begin catch
		throw 500021,'SalesPersonID does not Exist',1
	end catch
  END
GO
/****** Object:  StoredProcedure [TeamB].[UpdateAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[UpdateAddress](@addressID uniqueidentifier, @addressLine1 varchar(30),@addressLine2 varchAR(50),
@landmark varchar(20), @city varchar(20),@state varchar(20), @pinCode varchar(20),@retailerID uniqueidentifier, @CreationDateTime datetime, @LastModifiedDateTime datetime)
AS 
  BEGIN
	begin try
		    update TeamB.Addresses set AddressLine1=@addressLine1,AddressLine2=@addressLine2,LandMark=@landmark,City=@city,State =@state,PinCode=@pinCode,RetailerID= @retailerID, LastModifiedDateTime=@LastModifiedDateTime where AddressID = @addressID
			select @@ROWCOUNT
	end try
	begin Catch
		throw 500000,'Address Not Updated',1
	end catch	
  END
GO
/****** Object:  StoredProcedure [TeamB].[UpdateAdmin]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [TeamB].[UpdateAdmin](@AdminID uniqueIdentifier, @AdminName varchar(30),@Email varchAR(30))​
AS ​
BEGIN​
	begin try​
		update TeamB.AdminTable set AdminName= @AdminName,Email=@Email,LastModifiedDateTime =getdate()
		where AdminID= @AdminID​
	end try​
	begin Catch​
		throw 500000,'Admin Not Updated',1​
	end catch ​
 END
GO
/****** Object:  StoredProcedure [TeamB].[UpdateAdminPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [TeamB].[UpdateAdminPassword](@Email varchar(30),@NewPassword varchar(15))​
AS ​
 BEGIN​
	begin try​
		
		   update TeamB.AdminTable set Password=@NewPassword​,LastModifiedDateTime=getdate()
		   where Email=@Email
		
	end try​
	begin Catch​
		throw 500000,'Admin password Not Updated',1​
	end catch ​
 END
GO
/****** Object:  StoredProcedure [TeamB].[UpdateOfflineOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------------------
--Created Procedure for updating offline order

CREATE Procedure [TeamB].[UpdateOfflineOrder](@offlineOrderid uniqueidentifier, @totalOrderAmount money, @totalQuantity int,@LastModifiedDateTime date)
AS
BEGIN
   begin try
   Update TeamB.OfflineOrders set TotalOfflineOrderAmount =@totalOrderAmount,@LastModifiedDateTime = SYSDATETIME(),
TotalQuantity = @totalQuantity  Where   OfflineOrderID = @offlineOrderid
   end try
   begin catch
      PRINT @@ERROR;
  throw 50000, 'Invalid Values fetched',6
  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[UpdateOfflineOrderDetail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------------------
--created Update offline order detail Procedure

CREATE Procedure [TeamB].[UpdateOfflineOrderDetail](@offlineOrderDetailID uniqueidentifier, @totalPrice money, @quantity int)
AS
BEGIN
   begin try
   Declare @lastmodifiedDate DateTime
   set    @lastmodifiedDate= SYSDATETIME()
   Update OfflineOrder.OfflineOrderDetails set Quantity =@Quantity, TotalPrice = @totalprice, LastModifiedDateTime =@lastmodifiedDate
     Where   OfflineOrderDetailID = @OfflineOrderdetailid
   end try
   begin catch
      PRINT @@ERROR;
  throw 50000, 'Invalid Values fetched',1
  return 0
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[UpdateOnlineReturn]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamB].[UpdateOnlineReturn](@onlineReturnID uniqueidentifier,@orderID uniqueidentifier,@productID uniqueidentifier,
 @retailerID uniqueidentifier,@orderNumber int,@productNumber int, @totalAmount money, @productPrice money, 
@purpose varchar(40), @quantityOfReturn int,@lastModifiedDateTime datetime, @creationDateTime datetime)
AS
BEGIN
   begin try
   if @onlineReturnID is null 
   throw 50001, 'Invalid Online Return ID', 1
   if @orderNumber is null 
   throw 50001, 'Invalid Order Number', 2
   if @productNumber is null 
   throw 50001, 'Invalid Product Number', 3
   if @retailerID is null 
   throw 50001, 'Invalid Retailer ID', 4
   if @quantityOfReturn = 0
   throw 50001, 'Quantity Of Return is 0', 7
   if @purpose is null 
   throw 50001, 'Purpose Not Selected', 8
    if @orderID is null
   throw 50001, 'Invalid Order ID', 1
    if @productID is null 
   throw 50001, 'Invalid product ID', 1
   Update TeamB.OnlineReturns set QuantityOfReturn =@quantityOfReturn,Purpose=@purpose  Where   OnlineReturnID = @onlineReturnID
   select @@ROWCOUNT
   end try
   begin catch
   PRINT @@ERROR;
	  throw 5000, 'Invalid Values fatched',6
	
   end catch
end
GO
/****** Object:  StoredProcedure [TeamB].[UpdateOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[UpdateOrder](@orderId uniqueidentifier, @totalQuantity int, @orderAmount money, @lastModifiedDate datetime)
as
 begin
	begin try
		 update TeamB.OrdersTable
 		set
 			TotalQuantity=@totalQuantity,
  			OrderAmount=@orderAmount,
  			LastModifiedDateTime=@lastModifiedDate 		
  		where OrderID=@orderId
	end try
	begin catch
      PRINT @@ERROR;
	  throw 50000, 'Invalid Values',6
	  return 0
   end catch
	return @@ROWCOUNT
end
GO
/****** Object:  StoredProcedure [TeamB].[UpdateOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[UpdateOrderDetails](@orderDetailid uniqueidentifier, @productQuantityOrdered int, @addressId uniqueidentifier, @totalAmount money, @lastModifiedDate datetime)
as
 begin
 if @addressId is null 
	   throw 50006, 'Invalid Address ID', 6
if @orderDetailid is null 
	   throw 50007, 'Invalid OrderDetail ID', 7
 		update TeamB.OrderDetailsTable
 		set
 		 ProductQuantityOrdered=@productQuantityOrdered,
 		 AddressId=@addressId,
  		 TotalAmount=@totalAmount,
  		 LastModifiedDateTime = @lastModifiedDate
		where OrderDetailID=@orderDetailid	
end
return @@ROWCOUNT
GO
/****** Object:  StoredProcedure [TeamB].[UpdateProductDescription]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamB].[UpdateProductDescription] (@ProductID uniqueidentifier,@ProductName varchar(15), @ProductNumber int,@ProductCategory varchar(25), 
  @ProductColor varchar(30), @ProductSize varchar(15), @ProductMaterial varchar(30),@ProductPrice money )

as 
BEGIN

	begin try

		if exists(select ProductID from TeamB.Product where ProductID = @ProductID) 
		update TeamB.Product set  ProductColor = @ProductColor,ProductSize = @ProductSize,ProductMaterial = @ProductMaterial,LastModifiedDateTime=sysdatetime() 
		where ProductID = @ProductID;
		else
		throw 500002, 'Product does not exist',1 

	end try

	begin catch

		throw 500000, 'Product description not updated',1

	end catch

END
GO
/****** Object:  StoredProcedure [TeamB].[UpdateProductPrice]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamB].[UpdateProductPrice] (@ProductID uniqueidentifier,@ProductName varchar(15), @ProductNumber int, @ProductCategory varchar(25),
  @ProductColor varchar(30), @ProductSize varchar(15), @ProductMaterial varchar(30),@ProductPrice money )

as
BEGIN

	begin try

		if exists(select ProductID from TeamB.Product where ProductID = @ProductID) 
		update TeamB.Product set  ProductPrice = @ProductPrice, LastModifiedDateTime=sysdatetime() where ProductID = @ProductID;
		else
		throw 500002, 'Product does not exist',1 

	end try

	begin catch

		throw 500000, 'Product price not updated',1

	end catch

END
GO
/****** Object:  StoredProcedure [TeamB].[UpdateRetailer]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[UpdateRetailer](@retailerID uniqueidentifier, @retailerName varchar(30),@retailerEmail varchAR(50),
@password varchar(20), @retailerMobile varchar(50), @CreationDateTime datetime, @LastModifiedDateTime datetime)
AS 
  BEGIN
	begin try
		if exists (select RetailerEmail from Retailers where RetailerEmail = @retailerEmail)
		    throw 500011,'Email Already Exist',1;
		if @retailerName =''
		    throw 500010,'Retailer Name Is Must',1;
		if @retailerEmail =''
		    throw 500013,'Retailer Email Is Must',1;
		if @retailerMobile =''
		    throw 500014,'Retailer Mobile Is Must',1;
		if exists (select RetailerEmail from Retailers where RetailerEmail = @retailerEmail)
		    throw 500012,'Mobile No. Already Exist',1;
		update TeamB.Retailers set RetailerName= @retailerName,RetailerEmail=@retailerEmail,Password= @password, RetailerMobile =@retailerMobile,LastModifiedDateTime =@LastModifiedDateTime
		where RetailerID= @retailerID
		Select @@ROWCOUNT
	end try
	begin Catch
		throw 500000,'Retailer Not Updated',1
	end catch	
  END
GO
/****** Object:  StoredProcedure [TeamB].[UpdateRetailerPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE procedure [TeamB].[UpdateRetailerPassword](@retailerID varchar(30), @retailerName varchar(30),@retailerEmail varchAR(30),
@password varchar(20), @retailerMobile varchar(50), @CreationDateTime datetime, @LastModifiedDateTime datetime)
AS 
  BEGIN
	begin try
		update TeamB.Retailers set password= @password,LastModifiedDateTime =@LastModifiedDateTime
		where RetailerID= @retailerID
	end try
	begin Catch
		throw 500000,'Retailer Not Updated',1
	end catch	
  END
GO
/****** Object:  StoredProcedure [TeamB].[UpdateSalesPerson]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[UpdateSalesPerson](@salesPersonID uniqueidentifier, @salesPersonName varchar(30),@Email varchAR(50),
@password varchar(20), @salesPersonMobile varchar(50), @CreationDateTime datetime, @LastModifiedDateTime datetime)
AS 
  BEGIN
	begin try
		if exists (select Email from SalesPersons where Email = @Email)
		    throw 500011,'Email Already Exist',1;
		if @salesPersonName =''
		    throw 500010,'SalesPerson Name Is Must',1;
		if @Email =''
		    throw 500013,'SalesPerson Email Is Must',1;
		if @salesPersonMobile =''
		    throw 500014,'SalesPerson Mobile Is Must',1;
		if exists (select Email from SalesPersons where Email = @Email)
		    throw 500011,'Email Already Exist',1;
		
		update TeamB.SalesPersons set SalesPersonName= @salesPersonName,Email=@Email,Password= @password, SalesPersonMobile =@salesPersonMobile,LastModifiedDateTime =@LastModifiedDateTime
		where SalesPersonID= @salesPersonID
		Select @@ROWCOUNT
	end try
	begin Catch
		throw 500000,'SalesPerson Not Updated',1
	end catch	
  END
GO
/****** Object:  StoredProcedure [TeamB].[UpdateSalesPersonPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [TeamB].[UpdateSalesPersonPassword](@salesPersonID varchar(30), @salesPersonName varchar(30),@Email varchAR(30),
@password varchar(20), @salesPersonMobile varchar(50), @CreationDateTime datetime, @LastModifiedDateTime datetime)
AS 
  BEGIN
	begin try
		update TeamB.SalesPersons set password= @password,LastModifiedDateTime =@LastModifiedDateTime
		where SalesPersonID= @salesPersonID
	end try
	begin Catch
		throw 500000,'SalesPerson Not Updated',1
	end catch	
  END
GO
/****** Object:  StoredProcedure [TeamB].[ViewOrderByOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[ViewOrderByOrderID](@orderId uniqueidentifier)
as
 begin
	begin try
		select * from TeamB.OrdersTable where OrderID= @orderId
	end try
	begin catch
		  PRINT @@ERROR;
		  throw 50000, 'Invalid OrderID',2
		  return 0
	end catch
return @@ROWCOUNT
 end
GO
/****** Object:  StoredProcedure [TeamB].[ViewOrderByOrderNumber]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamB].[ViewOrderByOrderNumber](@orderNumber int)
as
 begin
	begin try
		select * from TeamB.OrdersTable where OrderNumber= @orderNumber
	end try
	begin catch
		  PRINT @@ERROR;
		  throw 50000, 'Invalid OrderNumber',2
		  return 0
	end catch
return @@ROWCOUNT
 end
GO
/****** Object:  StoredProcedure [TeamB].[ViewOrderDetailByOrderDetailID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[ViewOrderDetailByOrderDetailID](@orderDetailsId uniqueidentifier)
as
 begin
	begin try
		select * from TeamB.OrderDetailsTable where OrderDetailID= @orderDetailsId
	end try
	begin catch
		throw 50000,'Invalid Orderdetails Id',1
	end catch
 end
 return @@ROWCOUNT
GO
/****** Object:  StoredProcedure [TeamB].[ViewOrderDetailsByOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[ViewOrderDetailsByOrderID](@orderId uniqueidentifier)
as
 begin
	begin try
		select * from TeamB.OrderDetailsTable where OrderID= @orderId
	end try
	begin catch
		throw 50000,'Invalid Order Id',1
	end catch
 end
 return @@ROWCOUNT
GO
/****** Object:  StoredProcedure [TeamB].[ViewRetailerOrders]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamB].[ViewRetailerOrders](@retailerId uniqueidentifier)
as
begin
	begin try
		select * from TeamB.OrderDetailsTable where OrderID=(select OrderID from TableB.OrdersTable where RetailerID= @retailerId)
	end try
	begin catch
      PRINT @@ERROR;
	  throw 50000, 'Invalid Retailer ID',2
	  return 0
    end catch
	return @@ROWCOUNT
end
GO
/****** Object:  StoredProcedure [TeamB].[ViewsalesReportsproc]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [TeamB].[ViewsalesReportsproc]
 as
 begin
	begin try
	SELECT sp.SalesPersonID,sp.SalesPersonName ,offl.mycount,offl.myitems,offl.totalamount
	FROM TeamB.SalesPersons sp
	INNER JOIN (
	SELECT SalesPersonID,COUNT(*) AS mycount,sum(TotalQuantity) as myitems,
	sum(TotalOfflineOrderAmount) AS totalamount
	FROM TeamB.OfflineOrders
	GROUP BY SalesPersonID) offl
	ON offl.SalesPersonID=sp.SalesPersonID;

 end try
 begin catch
 throw 500000,'View Sales reports Not Updated',1​
 end catch
 end
GO
/****** Object:  StoredProcedure [TeamC].[AddDistributor]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamC].[AddDistributor](@distName varchar(40), @distMob char(10),@distEmail varchar(50) ,@distPass varchar(15))
as 
begin
declare @distID uniqueidentifier
set @distID = newid()
declare @createdOn datetime
set @createdOn = SYSDATETIME()
declare @lastModifiedOn datetime
set @lastModifiedOn = sysdatetime()

if @distName IS NULL OR @distName=''
throw 50001,'Invalid Distributor name',2

if @distMob IS NULL OR @distMob=''
throw 50001,'Invalid Mobile number',3

if @distEmail IS NULL OR @distEmail=''
throw 50001,'Invalid Distributor Email',4

if @distPass IS NULL OR @distPass=''
throw 50001,'Invalid Distributor password',5

insert into TeamC.Distributors(Distributor_ID,Distributor_Name,Distributor_Mobile,Distributor_Email,Distributor_Password,Created_On,Last_Modified_On)
values (@distID,@distName,@distMob,@distEmail,@distPass,@createdOn,@lastModifiedOn)

	select @@rowcount,@distID
end
GO
/****** Object:  StoredProcedure [TeamC].[AddProduct]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamC].[AddProduct] ( @ProductName varchar(100) ,
@ProductType varchar(100) ,
@UnitPrice money)
as
begin
--Created by Sagar
--purpose: adding the products
declare @ProductID uniqueidentifier
set @ProductID= NEWID()

declare @CreationTime datetime
set @CreationTime= sysdatetime()

	if @ProductName=''
		throw 50000,'Empty product names are not allowed',1;
	if @UnitPrice <= 0.0
		throw 50000,'Empty and negative product price are not allowed',1;
	
	begin try
		insert into TeamC.ProductsInventory(ProductID,ProductName,ProductType,UnitPrice,CreationTime) 
		values(@ProductID,@ProductName,@ProductType, @UnitPrice, @CreationTime )
	end try
	begin catch
		throw;
	end catch
	return 9999;
end
GO
/****** Object:  StoredProcedure [TeamC].[AddRawMaterial]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [TeamC].[AddRawMaterial](
@name varchar(50), 
@unitPrice decimal, 
@minQuantity decimal, 
@availableQuantity decimal)
as 
begin
declare @rawMaterialID uniqueidentifier
set @rawMaterialID = NEWID()
declare @createdOn datetime
set @createdOn = SYSDATETIME()
declare @modifiedOn datetime
set @modifiedOn = SYSDATETIME()

	if @name IS NULL or @name=''
	throw 50001, 'Invalid Raw Material Name', 2
	if @unitPrice IS NULL or @unitPrice <= 0
	throw 50001, 'Invalid Raw Material Unit Price', 3
	if @minQuantity IS NULL or @minQuantity <= 0
	throw 50001, 'Invalid Raw Material Min Quantity', 4
	if @availableQuantity IS NULL or @availableQuantity <= 0
	throw 50001, 'Invalid Raw Material Available Quantity', 5

insert into TeamC.RawMaterialInventory(RawMaterialID, Name, UnitPrice, MinQuantity, AvailableQuantity, CreatedOn, ModifiedOn)
values(@rawMaterialID, @name, @unitPrice, @minQuantity, @availableQuantity, @createdOn, @modifiedOn)

select @@RowCount, @rawMaterialID
end
GO
/****** Object:  StoredProcedure [TeamC].[AddRawMaterialOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamC].[AddRawMaterialOrder](
@orderInvoiceCode int, 
@supplierID uniqueidentifier)
as 
begin

declare @orderID uniqueidentifier
set @orderID = NEWID()
declare @createdOn datetime
set @createdOn = SYSDATETIME()
declare @modifiedOn datetime
set @modifiedOn = SYSDATETIME()

	if @orderInvoiceCode IS NULL or @orderInvoiceCode <= 0
	throw 50001, 'Invalid Order Invoice Code', 1
	if @supplierID IS NULL
	throw 50001, 'Invalid Supplier', 2

insert into TeamC.RawMaterialOrders(OrderID, OrderInvoiceCode, SupplierID, CreationTime, ModificationTime)
values(@orderID, @orderInvoiceCode, @supplierID, @createdOn, @modifiedOn)

select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[AddRawMaterialOrderDetail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamC].[AddRawMaterialOrderDetail](
@orderDetailID uniqueidentifier, 
@orderInvoiceCode int, 
@rawMaterialName varchar(50),
@quantity decimal, 
@unitPrice decimal)
as 
begin

declare @createdOn datetime
set @createdOn = SYSDATETIME()
declare @modifiedOn datetime
set @modifiedOn = SYSDATETIME()

	if @orderInvoiceCode IS NULL or @orderInvoiceCode <= 0
	throw 50001, 'Invalid Order Invoice Code', 1
	if @rawMaterialName IS NULL or @rawMaterialName=''
	throw 50001, 'Invalid Raw Material Name', 2
	if @quantity IS NULL or @quantity <= 0
	throw 50001, 'Invalid Raw Material Quantity', 3
	if @unitPrice IS NULL or @unitPrice <= 0
	throw 50001, 'Invalid Raw Material Unit Price', 4



insert into TeamC.RawMaterialOrderDetails(OrderDetailID, OrderInvoiceCode, RawMaterialName, Quantity, UnitPrice, CreationTime, ModificationTime)
values(@orderDetailID,@orderInvoiceCode, @orderInvoiceCode,  @quantity, @unitPrice, @createdOn, @modifiedOn)

select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[AddSupplier]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamC].[AddSupplier]( @supName varchar(50), @supMob char(10),@supEmail varchar(50) ,@supPass varchar(15))
as 
begin
Declare @supID uniqueidentifier
set @supID=newid()
DEclare @creatDate DateTime
set @creatDate = SYSDATETIME()
Declare @modifiedDate DateTime
set  @modifiedDate =sysdatetime()


if @supName IS NULL OR @supName=''
throw 50001,'Invalid Supplier name',2

if @supMob IS NULL OR @supMob=''
throw 50001,'Invalid Mobile number',3

if @supEmail IS NULL OR @supEmail=''
throw 50001,'Invalid Supplier Email',4

if @supPass IS NULL OR @supPass=''
throw 50001,'Invalid Supplier password',5

insert into TeamC.suppliers(supplierID,supplierName,supplierMobile,supplierEmail, supplierPassword,creationDate,lastModified)
values (@supID,@supName,@supMob,@supEmail,@supPass,sysdatetime(),sysdatetime())

 end
GO
/****** Object:  StoredProcedure [TeamC].[AddSupplierAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamC].[AddSupplierAddress]( @supID uniqueidentifier, @AdLine1 varchar(50),@AdLine2 varchar(50) ,@city varchar(50),@state varchar(50),@pcode char(6) )
as 
begin
Declare @supAdID uniqueidentifier
set @supAdID=newid()
 


if @AdLine1 IS NULL OR @AdLine1=''
throw 50001,'Invalid Adress line1',3
if @AdLine2 IS NULL OR @AdLine2=''
throw 50001,'Invalid Address line2',4

if @city IS NULL OR @city=''
throw 50001,'Invalid City name',5
if @State IS NULL OR @State=''
throw 50001,'Invalid State name',6
if @pcode IS NULL OR @pcode=''
throw 50001,'Invalid PinCode',7


insert into TeamC.supplierAddresses(SupplierAddressID,SupplierID,supplierAddressLine1,supplierAddressLine2,supplierCity,supplierState,supplierPinCode )
values (@supAdID,@supID,@AdLine1,@AdLine2,@city,@State,@pcode)
Select @@ROWCOUNT,@supAdID
end
GO
/****** Object:  StoredProcedure [TeamC].[AddSupplierPayment]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamC].[AddSupplierPayment](@supTrans nchar(6),@supName varchar(50), @rawName char(50),@supAmt decimal(18,0),@supMethod varchar(20) ,@supStatus varchar(20))
as
begin
  Declare @supID uniqueidentifier
  set @supID=(select TOP 1 supplierID from TeamC.suppliers ORDER BY NEWID())
  Declare @InvoiceCode int
  set @InvoiceCode=(select TOP 1 OrderInvoiceCode from TeamC.RawMaterialOrders ORDER BY NEWID())
  Declare @orderDate DateTime
  set @orderDate = (select TOP 1 CreationTime from TeamC.RawMaterialOrders ORDER BY NEWID())
  Declare @payDate DateTime
  set  @payDate =sysdatetime()

  if @supName IS NULL OR @supName=''
  throw 50001,'Invalid Supplier name',2

  if @rawName IS NULL OR @rawName=''
  throw 50001,'Invalid Raw Material Name',3

  insert into TeamC.SupPayment(SupOrderInvoiceCode,SupplierID,SupName,RawName,SupAmount,SupChequeNoTransNo,RawOrderCreationDate,SupPaymentDate,SupMethod,SupStatus)
  values (@InvoiceCode,@supID,@supName,@rawName,@supAmt,@supTrans,@orderDate,@payDate,@supMethod,@supStatus)
  SELECT  @@ROWCOUNT,@supID;
end
GO
/****** Object:  StoredProcedure [TeamC].[AddSystemUser]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to Add System User
Create procedure [TeamC].[AddSystemUser]( @sysName varchar(50),@sysEmail varchar(50) ,@sysPass varchar(15))
as
begin
Declare @sysID uniqueidentifier
set @sysID=newid()
DEclare @creatDate DateTime
set @creatDate = SYSDATETIME()
Declare @modifiedDate DateTime
set  @modifiedDate =sysdatetime()


if @sysName IS NULL OR @sysName=''
throw 50001,'Invalid SystemUser name',2

if @sysEmail IS NULL OR @sysEmail=''
throw 50001,'Invalid SystemUser Email',4

if @sysPass IS NULL OR @sysPass=''
throw 50001,'Invalid SystemUser password',5

insert into TeamC.SystemUser(SystemUserID,SystemUserName,Email,Password,CreationDateTime,LastModifiedDateTime)
values (@sysID,@sysName,@sysEmail,@sysPass,@creatDate,@modifiedDate)

    SELECT  @@ROWCOUNT,@sysID;
end
GO
/****** Object:  StoredProcedure [TeamC].[DeleteDistributor]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[DeleteDistributor](@distID uniqueidentifier)
as
begin
	begin try
		delete from TeamC.Distributors where Distributor_ID=@distID
	end try
	begin catch
		print @@error;
		throw 50001,'Invalid values fetched',3
		return 0
	end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[DeleteProduct]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[DeleteProduct](@productID uniqueidentifier, @productName varchar(100))
as
begin
delete TeamC.ProductsInventory where ProductID = @productID or ProductName = @productName
end
GO
/****** Object:  StoredProcedure [TeamC].[DeleteRawMaterial]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [TeamC].[DeleteRawMaterial](@rawMaterialID uniqueidentifier)
as 
begin
	begin try
		DELETE FROM TeamC.RawMaterialInventory where RawMaterialID = @rawMaterialID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',3
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[DeleteRawMaterialOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[DeleteRawMaterialOrder](@orderInvoiceCode int)
as 
begin
	begin try
		DELETE FROM TeamC.RawMaterialOrders where OrderInvoiceCode = @orderInvoiceCode
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',3
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[DeleteRawMaterialOrderDetail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[DeleteRawMaterialOrderDetail](@orderDetailID uniqueidentifier)
as 
begin
	begin try
		DELETE FROM TeamC.RawMaterialOrderDetails where OrderDetailID = @orderDetailID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',3
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[DeleteSupplier]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[DeleteSupplier](@supID uniqueidentifier)
as 
begin
	begin try
		DELETE FROM TeamC.suppliers where supplierID=@supID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',3
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[DeleteSupplierAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[DeleteSupplierAddress](@supAdID uniqueidentifier)
as 
begin
	begin try
		DELETE FROM TeamC.supplierAddresses where SupplierAddressID=@supAdID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',3
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[DeleteSystemUser]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Delete SystemUser Procedure
create procedure [TeamC].[DeleteSystemUser](@sysID uniqueidentifier)
as
begin
begin try
 DELETE FROM TeamC.SystemUser where SystemUserID=@sysID
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',3
 return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetAdminbyAdminEmailandPass]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get Admin by Email & Password
create procedure [TeamC].[GetAdminbyAdminEmailandPass](@adminEmail varchar(50) ,@adminPass varchar(30))
as
begin
begin try
 SELECT* FROM TeamC.Admin where AdminEmail=@adminEmail and AdminPassword=@adminPass
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',6
 return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetAdminByAdminID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get Admin By Admin ID
Create procedure [TeamC].[GetAdminByAdminID]( @adminID uniqueIdentifier)
as
begin
begin try
 SELECT* FROM TeamC.Admin where AdminID=@adminID
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',6
 return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetAllDistributors]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetAllDistributors]
as
begin
	begin try
		select * from TeamC.Distributors
	end try
	begin catch
		print @@error;
		throw 50001,'Invalid values Fetched',2
		return 0
	end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetAllProductbyProductName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetAllProductbyProductName] (@ProductName varchar(100))
as
begin
--get all products by name
--created by sagar
select *from TeamC.ProductsInventory
where ProductName= @ProductName
end
GO
/****** Object:  StoredProcedure [TeamC].[GetAllProductbyProductType]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetAllProductbyProductType] (@ProductType varchar(100))
as
begin
--get all products by type
--created by sagar
select *from ProductsInventory.Products
where ProductType= @ProductType
end
GO
/****** Object:  StoredProcedure [TeamC].[GetAllProducts]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetAllProducts]
as
begin
--get all products
--created by sagar
select *from TeamC.ProductsInventory
end
GO
/****** Object:  StoredProcedure [TeamC].[GetAllRawMaterialOrderDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetAllRawMaterialOrderDetails]
as 
begin 
	begin try 
	select * from TeamC.RawMaterialOrderDetails
	end try
	begin catch
		PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',2
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[GetAllRawMaterialOrders]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetAllRawMaterialOrders]
as 
begin 
	begin try 
	select*from TeamC.RawMaterialOrders
	end try
	begin catch
		PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',2
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[GetAllRawMaterials]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamC].[GetAllRawMaterials]
as 
begin 
	begin try 
	select*from TeamC.RawMaterialInventory
	end try
	begin catch
		PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',2
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[GetAllSupplier]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetAllSupplier]
as 
begin 
	begin try 
	select*from TeamC.suppliers
	end try
	begin catch
		PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',2
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetAllSupplierAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetAllSupplierAddress]
as 
begin 
	begin try 
	select*from TeamC.SupplierAddresses
	end try
	begin catch
		PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',2
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetAllSupplierPayment]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetAllSupplierPayment]
as
begin
	begin try
		select * from TeamC.SupPayment
	end try
	begin catch
		print @@error;
		throw 50001,'Invalid Values Fetched',2
		return 0
	end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetAllSystemUsers]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get All System Users
create procedure [TeamC].[GetAllSystemUsers]
as
begin
begin try
select*from TeamC.SystemUser
end try
begin catch
 PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',2
 return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetDistributorbyDistributorID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetDistributorbyDistributorID](@distID uniqueidentifier)
as
begin
begin try
 SELECT* FROM TeamC.Distributors where Distributor_ID=@distID
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',6
 return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetDistributorbyEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetDistributorbyEmail](@distEmail varchar(50))
as
begin
begin try
 SELECT* FROM TeamC.Distributors where Distributor_Email=@distEmail
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',7
 return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetDistributorByEmailAndPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetDistributorByEmailAndPassword](@distEmail varchar(50),@distPass varchar(15))
as
begin
	begin try
		select * from TeamC.Distributors 
		where Distributor_Email=@distEmail
		and Distributor_Password=@distPass;
	end try
	begin catch
		print @@error;
		throw 50001, 'Invalid Values Fetched',6
		return 0
	end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetDistributorByName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamC].[GetDistributorByName](@distName varchar(50))
as
begin
	begin try
		select * from TeamC.Distributors where Distributor_Name=@distName;
	end try
	begin catch
		print @@error;
		throw 50001, 'Invalid Values Fetched',6
		return 0
	end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetOrderbyOrderID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetOrderbyOrderID](@orderID uniqueidentifier)
as 
begin
	begin try
		SELECT* FROM TeamC.RawMaterialOrders where OrderID=@orderID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',6
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[GetOrderbyOrderInvoiceCode]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetOrderbyOrderInvoiceCode](@orderInvoiceCode int)
as 
begin
	begin try
		SELECT* FROM TeamC.RawMaterialOrders where OrderInvoiceCode=@orderInvoiceCode
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',6
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[GetOrderDetailbyOrderDetailID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetOrderDetailbyOrderDetailID](@orderDetailID uniqueidentifier)
as 
begin
	begin try
		SELECT* FROM TeamC.RawMaterialOrderDetails where OrderDetailID=@orderDetailID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',6
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[GetOrderDetailbyOrderInvoiceCode]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetOrderDetailbyOrderInvoiceCode](@orderInvoiceCode int)
as 
begin
	begin try
		SELECT* FROM TeamC.RawMaterialOrderDetails where OrderInvoiceCode=@orderInvoiceCode
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',6
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[GetRawMaterialbyName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetRawMaterialbyName](@rawmaterialName varchar(50))
as 
begin
	begin try
		SELECT* FROM TeamC.RawMaterialInventory where Name=@rawmaterialName
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',6
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetRawMaterialbyRawMaterialID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [TeamC].[GetRawMaterialbyRawMaterialID](@rawmaterialID uniqueidentifier)
as 
begin
	begin try
		SELECT* FROM TeamC.RawMaterialInventory where RawMaterialId=@rawmaterialID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',6
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[GetSupplierAddressbySupplierAddressID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetSupplierAddressbySupplierAddressID](@supAdID uniqueidentifier)
as 
begin
	begin try
		SELECT* FROM TeamC.supplierAddresses where supplierAddressID=@supAdID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',6
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetSupplierAddressbysupplierAddressLine1]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetSupplierAddressbysupplierAddressLine1](@AdLine1 varchar(50))
as 
begin
	begin try
		SELECT* FROM TeamC.supplierAddresses where supplierAddressLine1=@AdLine1
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',6
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetSupplierbyEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetSupplierbyEmail](@supEmail varchar(50))
as 
begin
	begin try
		SELECT* FROM TeamC.suppliers where supplierEmail=@supEmail
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',7
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetSupplierbySupplierEmailandPass]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetSupplierbySupplierEmailandPass](@supEmail varchar(50) ,@supPass varchar(15))
as 
begin
	begin try
		SELECT* FROM TeamC.suppliers where supplierEmail=@supEmail and supplierPassword=@supPass
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',6
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetSupplierbySupplierID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[GetSupplierbySupplierID](@supID uniqueidentifier)
as 
begin
	begin try
		SELECT* FROM TeamC.suppliers where supplierID=@supID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',6
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetSupplierbySupplierName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamC].[GetSupplierbySupplierName]( @supName varchar(50))
as 
begin
	begin try
		SELECT* FROM TeamC.suppliers where supplierName=@supName
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',6
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetSystemUserBySystemUserEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get supplier by Name
Create procedure [TeamC].[GetSystemUserBySystemUserEmail]( @sysEmail varchar(50))
as
begin
begin try
 SELECT* FROM TeamC.SystemUser where Email=@sysEmail
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',6
 return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetSystemUserbySystemUserEmailandPass]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get SystemUser by Email Password
create procedure [TeamC].[GetSystemUserbySystemUserEmailandPass](@sysEmail varchar(50) ,@sysPass varchar(30))
as
begin
begin try
 SELECT* FROM TeamC.SystemUser where Email=@sysEmail and Password=@sysPass
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',6
 return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetSystemUserBySystemUserID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get supplier by Name
Create procedure [TeamC].[GetSystemUserBySystemUserID]( @sysID uniqueIdentifier)
as
begin
begin try
 SELECT* FROM TeamC.SystemUser where SystemUserID=@sysID
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',6
 return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[GetSystemUserbySystemUserName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get System User by Name
Create procedure [TeamC].[GetSystemUserbySystemUserName](@sysName varchar(50))
as
begin
begin try
 SELECT* FROM TeamC.SystemUser where SystemUserName=@sysName
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',6
 return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[UpdateAdmin]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [TeamC].[UpdateAdmin](@adminID uniqueidentifier,@adminEmail varchar(50),@adminName varchar(50))
as
begin
Declare @modifiedDate DateTime
set  @modifiedDate =sysdatetime()
begin try
 UPDATE TeamC.Admin
 SET AdminEmail=@adminEmail ,AdminName=@adminName
 WHERE AdminID=@adminID
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',4
 return 0
    end catch
Select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[UpdateAdminPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--update Admin Password Procedure
CREATE procedure [TeamC].[UpdateAdminPassword](@adminID uniqueidentifier,@adminPass varchar(30) )
as
begin
Declare @modifiedDate DateTime
set  @modifiedDate =sysDatetime()
begin try
 UPDATE TeamC.Admin
 SET AdminPassword=@adminPass
 WHERE AdminID=@adminID
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',4
 return 0
    end catch
Select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[UpdateDistributor]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamC].[UpdateDistributor](@distID uniqueidentifier, @distName varchar(50), @distMobile char(10), @distEmail varchar(50))
as
begin
declare @lastModifiedOn datetime
set @lastModifiedOn = sysdatetime()
	begin try
		update TeamC.Distributors
		set Distributor_Name = @distName, Distributor_Mobile = @distMobile, Distributor_Email = @distEmail
		where Distributor_ID = @distID
	end try
	begin catch
	Print @@error;
	throw 50001, 'Invalid Values Fetched',4
	return 0
	end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[UpdateProduct]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[UpdateProduct] (@ProductID uniqueidentifier ,@ProductName varchar(100) ,
@ProductType varchar(100) ,
@UnitPrice money)
as
begin
--update product
--created by sagar
update TeamC.ProductsInventory set ProductName =@ProductName, ProductType = @ProductType where ProductID = @ProductID
end
GO
/****** Object:  StoredProcedure [TeamC].[UpdateRawMaterial]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [TeamC].[UpdateRawMaterial](
@rawMaterialID uniqueidentifier,
@name varchar(50), 
@unitPrice decimal, 
@minQuantity decimal, 
@availableQuantity decimal)
as 
begin
declare @modifiedOn datetime
set @modifiedOn = SYSDATETIME()
	begin try
		UPDATE TeamC.RawMaterialInventory
		SET Name=@name, UnitPrice=@unitPrice, MinQuantity=@minQuantity, AvailableQuantity = @availableQuantity, ModifiedOn=@modifiedOn
		WHERE RawMaterialID=@rawMaterialID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',4
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[UpdateRawMaterialOrder]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamC].[UpdateRawMaterialOrder](
@orderInvoiceCode int,
@supplierId uniqueidentifier)
as 
begin
declare @modifiedOn datetime
set @modifiedOn = SYSDATETIME()

	begin try
		UPDATE TeamC.RawMaterialOrders
		SET SupplierID=@supplierId, ModificationTime=@modifiedOn
		WHERE OrderInvoiceCode =@orderInvoiceCode
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',4
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[UpdateRawMaterialOrderDetail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[UpdateRawMaterialOrderDetail](
@orderDetailID uniqueidentifier,  
@rawMaterialName varchar(50),
@quantity decimal, 
@unitPrice decimal)
as 
begin
declare @modifiedOn datetime
set @modifiedOn = SYSDATETIME()
	begin try
		UPDATE TeamC.RawMaterialOrderDetails
		SET RawMaterialName=@rawMaterialName, UnitPrice=@unitPrice, Quantity=@quantity, ModificationTime=@modifiedOn
		WHERE OrderDetailID=@orderDetailID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',4
		return 0
    end catch
	select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[UpdateSupplier]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamC].[UpdateSupplier](@supID uniqueidentifier, @supName varchar(50), @supMob char(10),@supEmail varchar(50) )
as 
begin
Declare @modifiedDate DateTime
set  @modifiedDate =sysdatetime()
	begin try
		UPDATE TeamC.suppliers
		SET supplierName=@supName ,supplierMobile=@supMob, supplierEmail=@supEmail
		WHERE supplierID=@supID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',4
		return 0
    end catch

end
GO
/****** Object:  StoredProcedure [TeamC].[UpdateSupplierAddress]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[UpdateSupplierAddress](@supAdID uniqueidentifier,@supID uniqueidentifier,@AdLine1 varchar(50),@AdLine2 varchar(50),@city varchar(50),@state varchar(50),@pcode char(6))
as 
begin
	begin try
		UPDATE TeamC.supplierAddresses
		SET SupplierID=@supID, supplierAddressLine1=@AdLine1,supplierAddressLine2=@AdLine2,supplierCity=@city,supplierState=@state,supplierPinCode=@pcode
		WHERE SupplierAddressID=@supAdID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',4
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[UpdateSupplierPass]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamC].[UpdateSupplierPass](@supID uniqueidentifier, @supName varchar(50),@supPass varchar(15))
as 
begin
	begin try
		UPDATE TeamC.suppliers
		SET supplierPassword=@supPass
		WHERE supplierID=@supID
	end try
	begin catch
	PRINT @@ERROR;
		throw 50001,'Invalid Values Fetched',4
		return 0
    end catch
end
GO
/****** Object:  StoredProcedure [TeamC].[UpdateSupplierPayment]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamC].[UpdateSupplierPayment](@supMethod varchar(20),@supStatus varchar(20),@supInvoice int,@paymentDate dateTime,@supAmt decimal(18,0))
as
begin
begin try
 UPDATE TeamC.SupPayment
 SET SupMethod = @supMethod, SupStatus = @supStatus, SupPaymentDate = @paymentDate, SupAmount = @supAmt
 WHERE SupOrderInvoiceCode = @supInvoice
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',4
 return 0
    end catch
Select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[UpdateSystemUser]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--update System User Details Procedure
CREATE procedure [TeamC].[UpdateSystemUser](@sysID uniqueidentifier,@sysName varchar(50),@sysEmail varchar(50))
as
begin
Declare @modifiedDate DateTime
set  @modifiedDate =sysdatetime()
begin try
 UPDATE TeamC.SystemUser
 SET Email=@sysEmail,SystemUserName=@sysName
 WHERE SystemUserID=@sysID
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',4
 return 0
    end catch
Select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamC].[UpdateSystemUserPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--update System User Password Procedure
Create procedure [TeamC].[UpdateSystemUserPassword](@sysID uniqueidentifier,@sysPass varchar(30) )
as
begin
Declare @modifiedDate DateTime
set  @modifiedDate =sysdatetime()
begin try
 UPDATE TeamC.SystemUser
 SET Password=@sysPass
 WHERE SystemUserID=@sysID
end try
begin catch
PRINT @@ERROR;
 throw 50001,'Invalid Values Fetched',4
 return 0
    end catch
Select @@RowCount
end
GO
/****** Object:  StoredProcedure [TeamE].[AddChequeBook]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[AddChequeBook]
 (@accountID uniqueidentifier,@accountNo char(10),@seriesStart decimal,@numberOfLeaves int,@chequeBookStatus varchar(12),@chequeBookRequestDate  DateTime,
		@lastModifiedDate Datetime)
 as
 begin
 DECLARE @chequeBookID uniqueidentifier
set @chequeBookID=NEWID();
 begin try
 
 
--throws error if number of leaves is not multiple of five
if(@numberOfLeaves%5!=0)
	throw 3000,'Number of leaves should me multiple of 5',1;
--throws error if cheque book status is not one among requested or approved
if(@chequeBookStatus!='Requested' and @chequeBookStatus!='Approved')
	throw 3000,'Status of cheque book should be either requested or approved',2;
insert into TeamE.ChequeBook(ChequeBookID ,AccountID,AccountNo,SeriesStart,NumberOfLeaves,ChequeBookStatus,ChequeBookRequestDate,
		LastModifiedDate ) values (@chequeBookID ,@accountID,@accountNo,@seriesStart,@numberOfLeaves,@chequeBookStatus,@chequeBookRequestDate,
		@lastModifiedDate )
		select @@RowCount,@chequeBookID
	end try
begin catch
	throw;
end catch
end 
GO
/****** Object:  StoredProcedure [TeamE].[AddCreditCard]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[AddCreditCard]
( @custID uniqueidentifier, @custName varchar(50),@creditLimit decimal(18,0),@expiry varchar(7),@cardType varchar(20),@cardStatus varchar(12),@cardIssueDate DateTime,@lastModifiedDate Datetime)
as
begin
	declare @creditCardID uniqueidentifier,@cardNumber char(12),@cn int
	set @creditCardID=NEWID();
	
	set @cn=(Select count(*) from TeamE.CreditCard);
	set @cardNumber=(select convert(char(12),(100010001000+@cn)));
	
	
	begin try

		--throws error if customer does not exist


		--throws error if length of customer name is less than 2 or greater than 40
		if ((len(@custName)<=2) or (len(@custName)>=40))
			throw 50100,'Customer name should be beween 2 and 40 characters',1;

		--throws error if length of card number is not equal to 12
		if(len(@cardNumber)!=12)
			 throw 53000,'InvalID card number',1;

		--throws error if credit limit is negative
		

		--throws error if card type is not one among Platinum plus or Visa signature or Infinia
		if(@cardType!='Platinum Plus' and @cardType!='Visa Signature' and @cardType!='Infinia')
			 throw 53000,'Card Type should be Platinum Plus  or Visa Signature or Infinia',1;

		--throws error if card type is not either active or blokced
		if(@cardStatus!='Active' and @cardStatus!='Blocked')
		throw 53000,'Card status should be Active or blocked',1;


		insert into TeamE.CreditCard(CreditCardID,CustomerID,CustomerNameAsPerCard,CardNumber,CreditLimit,ExpiryMMYYYY,
		CardType,CardStatus,CardIssueDate, LastModifiedDate) 
		values(@creditCardID,@custID,@custName,@cardNumber,@creditLimit,
			@expiry,@cardType,@cardStatus,@cardIssueDate,@lastModifiedDate)
		select @@RowCount as Column1,@cardNumber as Column2,@creditCardID as Column3
	end try
	begin catch
		throw;
	end catch
end
GO
/****** Object:  StoredProcedure [TeamE].[AddDebitCard]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[AddDebitCard]
( @accountID uniqueidentifier,@custName varchar(50),@expiry varchar(7),@cardType varchar(20),@cardStatus varchar(12),@cardIssueDate DateTime,
        @lastModifiedDate Datetime)
as
begin
DECLARE @debitCardID uniqueidentifier,@cardNumber char(12),@cn int
set @debitCardID=NEWID();
set @cn=(Select count(*) from TeamE.DebitCard);
	set @cardNumber=(select convert(char(12),(100010001000+@cn)));

begin try

--throws error if length of customer name is less than 12 or greater than 40
if (2>=len(@custName) or len(@custName)>=40)
	throw 100,'Customer name should be beween 2 and 40 characters',1;

--throws error if length of card number is not equal to 12
if(len(@cardNumber)!=12)
     throw 3000,'Invalid card number',1;

--throws error if card type is not one among below mentioned card types
if(@cardType!='Rupay' and @cardType!='VISA' and @cardType!='Maestro' and @cardType!='MasterCard')
throw 3000,'Card Type should be Rupay or VISA or maestro or mastercard ',1;

--throws error if card type is not either active or blokced
if(@cardStatus!='Active' and @cardStatus!='Blocked')
throw 3000,'Card status should be active or blocked',1;

insert into TeamE.DebitCard(DebitCardID,AccountID,CustomerNameAsPerCard,CardNumber,ExpiryMMYYYY,CardType,CardStatus,CardIssueDate,
        LastModifiedDate) values(@debitCardID,@accountID,@custName,@cardNumber,@expiry,@cardType,@cardStatus,@cardIssueDate,
        @lastModifiedDate)
select @@RowCount,@cardNumber,@debitCardID
end try
begin catch
	throw;
end catch
end 
GO
/****** Object:  StoredProcedure [TeamE].[AddEmployee]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[AddEmployee] (@empID uniqueidentifier, @empName varchar(50), @email varchar(20), @password varchar(15),@creationTime DateTime, @modifiedTime DateTime)
as

begin

begin try
if(len(@empName)<2 or len(@empName)>40)
	throw 100, 'Employee Name should be between 2 and 40 characters', 1;

if(exists(select * from TeamE.Employees where Email= @email))
	throw 5000,'Email Id Alraedy Exists',1;

Insert Into TeamE.Employees(EmployeeID, EmployeeName, Email,EmployeePassword, CreationDateTime, LastModifiedDatetime) values(@empID,@empName, @email,@password,@creationTime,@modifiedTime)
end try

begin catch
	throw
end catch
select  @@ROWCOUNT
end
GO
/****** Object:  StoredProcedure [TeamE].[AddsCustomer]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE procedure 
  [TeamE].[AddsCustomer](@CustomerName varchar(40) ,@CustomerMobile char(10) ,@CustomerAddress varchar(200),@CustomerAadharNumber char(12) ,@CustomerPANNumber char(10),@CustomerGender varchar(12) , @CustomerDOB DateTime ,@Email varchar(50),@WorkExperience decimal,@AnnualIncome decimal)
  as
begin 
declare @CustomerID uniqueidentifier , @CustomerNumber char(6) , @cn int ,@CreationDateTime datetime ,@LastModified datetime 
set @CustomerID = NewID()
set @cn = (Select Count(*) from TeamE.Customer)
set @CustomerNumber = (SELECT CONVERT(char(6), (100000 + @cn))) 
set @CreationDateTime = SYSDATETIME()
set @LastModified = SYSDATETIME()
   

	insert into TeamE.Customer(CustomerID,CustomerNumber,CustomerName,CustomerMobile,CustomerAddress,CustomerAadharNumber,CustomerPANNumber,CustomerGender,CustomerDOB,Email,WorkExperience,AnnualIncome,CreationDateTime,LastModified)
		values (@CustomerID,@CustomerNumber,@CustomerName,@CustomerMobile,@CustomerAddress,@CustomerAadharNumber,@CustomerPANNumber,@CustomerGender,@CustomerDOB,@Email,@WorkExperience,@AnnualIncome,@CreationDateTime,@LastModified)
SELECT @@RowCount as Column1 ,@CustomerNumber as Column2
end
GO
/****** Object:  StoredProcedure [TeamE].[ChangeFixedAccountBranch]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[ChangeFixedAccountBranch](@AccountNo char(10),@Branch varchar(30))

as 
begin

		
		---THROWING EXCEPTION IF THE ACCOUNT DOESN'T EXISTS
		if NOT EXISTS(SELECT * from TeamE.FixedAccount WHERE AccountNo = @AccountNo) AND (len(@AccountNo) = 10) AND (@AccountNo LIKE '2%')
			throw 50001,'Account does not exists',1

		---THROWING EXCEPTION IF ACCOUNT No IS NULL OR INVALID
		if @AccountNo is null OR (len(@AccountNo) <> 10) 
			throw 50001,'Invalid Account No',1


		---THROWING EXCEPTION IF THE HOME BRANCH ENTERED IS NOT VALID
		if @Branch NOT IN ('Mumbai','Delhi','Chennai','Bengaluru')
			throw 50001,'Home branch entered is invalid',1

		---CHANGING THE HOME BRANCH IF ACCOUNT NO MATCHES
		update TeamE.FixedAccount
		set Branch = @Branch where ((AccountNo = @AccountNo)AND(Branch IN ('Mumbai','Delhi','Chennai','Bengaluru')))

		update TeamE.FixedAccount
		set LastModifiedDateTime = SYSDATETIME() where AccountNo = @AccountNo;

end

GO
/****** Object:  StoredProcedure [TeamE].[ChangeRegularAccountBranch]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[ChangeRegularAccountBranch](@AccountNo char(10),@Branch varchar(30))

as 
begin

		
		---THROWING EXCEPTION IF THE ACCOUNT DOESN'T EXISTS
		if NOT EXISTS(SELECT * from TeamE.RegularAccount WHERE AccountNo = @AccountNo) AND (len(@AccountNo) = 10) AND (@AccountNo LIKE '1%')
			throw 50001,'Account does not exists',1

		---THROWING EXCEPTION IF ACCOUNT No IS NULL OR INVALID
		if @AccountNo is null OR (len(@AccountNo) <> 10) 
			throw 50001,'Invalid Account No',1


		---THROWING EXCEPTION IF THE HOME BRANCH ENTERED IS NOT VALID
		if @Branch NOT IN ('Mumbai','Delhi','Chennai','Bengaluru')
			throw 50001,'Home branch entered is invalid',1

		---CHANGING THE HOME BRANCH IF ACCOUNT NO MATCHES
		update TeamE.RegularAccount
		set Branch = @Branch where ((AccountNo = @AccountNo)AND(Branch IN ('Mumbai','Delhi','Chennai','Bengaluru')))

		update TeamE.RegularAccount
		set LastModifiedDateTime = SYSDATETIME() where AccountNo = @AccountNo;

end

GO
/****** Object:  StoredProcedure [TeamE].[ChangeRegularAccountType]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[ChangeRegularAccountType](@AccountNo char(10),@AccountType varchar(10))

as 
begin
		
		---THROWING EXCEPTION IF THE ACCOUNT NO ENTERED BELONGS TO FIXED ACCOUNT TABLE
		if EXISTS(SELECT * from TeamE.FixedAccount WHERE AccountNo = @AccountNo) 
			throw 50001,'Fixed accounts cannot be modified into other account types',1

		
		---THROWING EXCEPTION IF THE ACCOUNT DOESN'T EXISTS
		if NOT EXISTS(SELECT * from TeamE.RegularAccount WHERE AccountNo = @AccountNo) AND (len(@AccountNo) = 10) AND (@AccountNo LIKE '1%')
			throw 50001,'Account does not exists',1

		---THROWING EXCEPTION IF ACCOUNT No IS NULL OR INVALID
		if @AccountNo is null OR (len(@AccountNo) <> 10) 
			throw 50001,'Invalid Account No',1


		---THROWING EXCEPTION IF THE ACCOUNT TYPE ENTERED IS NOT VALID
		if @AccountType NOT IN ('SAVINGS','CURRENT')
			throw 50001,'Account Type entered is invalid',1

		---CHANGING THE ACCOUNT TYPE IF ACCOUNT NO MATCHES
		update TeamE.RegularAccount
		set AccountType = @AccountType where ((AccountNo = @AccountNo)AND(AccountType IN ('Savings','Current')))


		update TeamE.RegularAccount
		set LastModifiedDateTime = SYSDATETIME() where AccountNo = @AccountNo;

end

GO
/****** Object:  StoredProcedure [TeamE].[CreateCarLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[CreateCarLoan]
( @CustomerID uniqueidentifier,  @LoanAmount money,
	@LoanDuration decimal,@License char(15))
as
begin
	---THROWING EXCEPTION IF  Customer Number IS NULL OR INVALID
	if @CustomerID is null 
		throw 50001, 'Invalid Customer No',3

	---THROWING EXCEPTION IF Amount of Loan IS NULL OR LESS THAN 0
	if @LoanAmount < 0 
	throw 50002, 'Invalid Amount of Loan',5
		
   ---THROWING EXCEPTION IF LoanDuration IS INVALID 
	if @LoanDuration < 0 
	throw 50003, 'Invalid Tenure',5

   ---THROWING EXCEPTION IF License IS NULL OR INVALID---
	if ISNULL(@License,'')= ''-- OR @License LIKE '[a-zA-Z][a-
	throw 50004, 'Invalid License',5

	---Declaring Auto Genrated Values like ID Date Time---
declare @Creationdate date,@Modificationdate date , @LoanStatus varchar(10) , @LoanType varchar(20 ) , @CarLoanNumber char(4) , @cn int ,@LoanID uniqueidentifier
 set @LoanID = NewID()
set @cn = (Select Count(*) from TeamE.CarLoan)
set @CarLoanNumber = (select convert(char(4) , (6000 +  @cn)))
set @Creationdate = SysDateTime()
set @Modificationdate = SysDateTime()
set @LoanStatus = 'Pending'   
set @LoanType = 'Car'
 ---Inserting Into Values---
Insert Into CarLoan(CarLoanNumber, CarLoanID , CustomerID  , LoanAmount , LoanStatus , LoanDuration , License , CreationDateTime, LastModifiedTime, LoanType) Values (@CarLoanNumber, @LoanId , @CustomerID  , @LoanAmount , @LoanStatus , @LoanDuration , @License , @Creationdate, @Modificationdate , @LoanType)
Select @@RowCount as Column1 ,  @CarLoanNumber as Column2 
end
GO
/****** Object:  StoredProcedure [TeamE].[CreateEducationLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [TeamE].[CreateEducationLoan]
( @CustomerID uniqueidentifier,@LoanID uniqueidentifier,  @LoanAmount money,
	@LoanDuration decimal,@Collateral money , @CollegeName varchar(20), @AdmissionID varchar(20) ,@Sponseror varchar(20))
as
begin
	---THROWING EXCEPTION IF  Customer Number IS NULL OR INVALID
	if @CustomerID is null 
		throw 50001, 'Invalid Customer No',3

	---THROWING EXCEPTION IF Amount of Loan IS NULL OR LESS THAN 0
	if @LoanAmount < 0 
	throw 50002, 'Invalid Amount of Loan',5
		
   ---THROWING EXCEPTION IF LoanDuration IS INVALID 
	if @LoanDuration < 0 
	throw 50003, 'Invalid Tenure',5

   ---THROWING EXCEPTION IF License IS NULL OR INVALID---
	if @Collateral < 0
	throw 50004, 'Collateral Cannot be less than 0',5

   ---THROWING EXCEPTION IF  College Name IS NULL OR INVALID
	if @CollegeName is null or @CollegeName = ' ' 
		throw 50005, 'Invalid Customer No',3

	---THROWING EXCEPTION IF Admission ID IS NULL OR INVALID
	if @AdmissionID is null or @AdmissionID = ' ' 
		throw 50006, 'Invalid Customer No',3

	---THROWING EXCEPTION IF  Sponseror IS NULL OR INVALID
	if @Sponseror is null or @Sponseror = ' ' 
		throw 50007, 'Invalid Customer No',3
	
	---Declaring Auto Genrated Values like ID Date Time---
declare @Creationdate date,@Modificationdate date , @LoanStatus varchar(10) , @LoanType varchar(20 ) , @EducationLoanNumber int , @cn int
 
set @cn = (Select Count(*) from TeamE.EducationLoan)
set @EducationLoanNumber = 8000 +  @cn
set @Creationdate = SysDateTime()
set @Modificationdate = SysDateTime()
set @LoanStatus = 'Pending'   
set @LoanType = 'Education'
 ---Inserting Into Values---
Insert Into TeamE.EducationLoan(EducationLoanNumber, EducationLoanID , CustomerID  , LoanAmount , LoanStatus , LoanDuration , Collateral , CreationDateTime, LastModifiedTime, LoanType ,CollegeName , AdmissionID , Sponseror) Values (@EducationLoanNumber, @LoanId , @CustomerID  , @LoanAmount , @LoanStatus , @LoanDuration , @Collateral , @Creationdate, @Modificationdate , @LoanType , @CollegeName , @AdmissionID , @Sponseror)
Select @@RowCount  , @EducationLoanNumber 
end
GO
/****** Object:  StoredProcedure [TeamE].[CreateFixedAccount]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[CreateFixedAccount]
(@CustomerID uniqueidentifier,@Branch varchar(30),@Tenure decimal,@FDDeposit money,@MinimumBalance money,@InterestRate decimal)
as
begin

		---THROWING EXCEPTION IF CUSTOMER ID IS NULL
		if @CustomerID IS null
			throw 50001,'Invalid Customer ID',1

		---GENERATING ACCOUNT ID
		declare @AccountID uniqueidentifier
			set @AccountID = NEWID()
		
		---GENERATING ACCOUNT NO
		declare @acount int,@AccountNo char(10)
			set @acount = (select count(*) from TeamE.FixedAccount)
			set @AccountNo = (SELECT CONVERT(char(10),(2000000001 + @acount)))

		---THROWING EXCEPTION IF HOME BRANCH IS INVALID OR NULL
		if @Branch NOT IN('Mumbai','Delhi','Chennai','Bengaluru')
			throw 50001,'Invalid Branch',7

		---THROWING EXCEPTION IF TENURE IS INVALID 
		if @Tenure <= 0 
			throw 50001, 'Invalid Tenure',5

		---THROWING EXCEPTION IF FDDEPOSIT AMOUNT IS INVALID 
		if @FDDeposit <= 0 
			throw 50001, 'Invalid FDDeposit Amount',5

			INSERT INTO TeamE.FixedAccount(AccountID, CustomerID, AccountNo,Branch,Tenure,FDDeposit,MinimumBalance,InterestRate)VALUES(@AccountID, @CustomerID, @AccountNo,
	@Branch,@Tenure,@FDDeposit,@MinimumBalance,@InterestRate)

	SELECT @@ROWCOUNT,@AccountNo
end


GO
/****** Object:  StoredProcedure [TeamE].[CreateHomeLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[CreateHomeLoan]
( @CustomerID uniqueidentifier,@LoanID uniqueidentifier,  @LoanAmount money,
	@LoanDuration decimal,@Collateral money)
as
begin
	---THROWING EXCEPTION IF  Customer Number IS NULL OR INVALID
	if @CustomerID is null 
		throw 50001, 'Invalid Customer No',3

	---THROWING EXCEPTION IF Amount of Loan IS NULL OR LESS THAN 0
	if @LoanAmount < 0 
	throw 50002, 'Invalid Amount of Loan',5
		
   ---THROWING EXCEPTION IF LoanDuration IS INVALID 
	if @LoanDuration < 0 
	throw 50003, 'Invalid Tenure',5

   ---THROWING EXCEPTION IF License IS NULL OR INVALID---
	if @Collateral < 0
	throw 50004, 'Collateral Cannot be less than 0',5

	---Declaring Auto Genrated Values like ID Date Time---
declare @Creationdate date,@Modificationdate date , @LoanStatus varchar(10) , @LoanType varchar(20 ) , @HomeLoanNumber int , @cn int
 
set @cn = (Select Count(*) from TeamE.HomeLoan)
set @HomeLoanNumber = 7000 +  @cn
set @Creationdate = SysDateTime()
set @Modificationdate = SysDateTime()
set @LoanStatus = 'Pending'   
set @LoanType = 'Home'
 ---Inserting Into Values---
Insert Into TeamE.HomeLoan(HomeLoanNumber, HomeLoanID , CustomerID  , LoanAmount , LoanStatus , LoanDuration , Collateral , CreationDateTime, LastModifiedTime, LoanType) Values (@HomeLoanNumber, @LoanId , @CustomerID  , @LoanAmount , @LoanStatus , @LoanDuration , @Collateral , @Creationdate, @Modificationdate , @LoanType)
Select @@RowCount  , @HomeLoanNumber 
end
GO
/****** Object:  StoredProcedure [TeamE].[CreatePersonalLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	Create procedure [TeamE].[CreatePersonalLoan]
( @CustomerID uniqueidentifier,@LoanID uniqueidentifier,  @LoanAmount money,
	@LoanDuration decimal,@Collateral money)
as
begin
	---THROWING EXCEPTION IF  Customer Number IS NULL OR INVALID
	if @CustomerID is null 
		throw 50001, 'Invalid Customer No',3

	---THROWING EXCEPTION IF Amount of Loan IS NULL OR LESS THAN 0
	if @LoanAmount < 0 
	throw 50002, 'Invalid Amount of Loan',5
		
   ---THROWING EXCEPTION IF LoanDuration IS INVALID 
	if @LoanDuration < 0 
	throw 50003, 'Invalid Tenure',5

   ---THROWING EXCEPTION IF License IS NULL OR INVALID---
	if @Collateral < 0
	throw 50004, 'Invalid License',5

	---Declaring Auto Genrated Values like ID Date Time---
declare @Creationdate date,@Modificationdate date , @LoanStatus varchar(10) , @LoanType varchar(20 ) , @PersonalLoanNumber int , @cn int
 
set @cn = (Select Count(*) from TeamE.PersonalLoan)
set @PersonalLoanNumber = 9000 +  @cn
set @Creationdate = SysDateTime()
set @Modificationdate = SysDateTime()
set @LoanStatus = 'Pending'   
set @LoanType = 'Personal'
 ---Inserting Into Values---
Insert Into TeamE.PersonalLoan(PersonalLoanNumber, PersonalLoanID , CustomerID  , LoanAmount , LoanStatus , LoanDuration , Collateral , CreationDateTime, LastModifiedTime, LoanType) Values (@PersonalLoanNumber, @LoanId , @CustomerID  , @LoanAmount , @LoanStatus , @LoanDuration , @Collateral , @Creationdate, @Modificationdate , @LoanType)
Select @@RowCount  , @PersonalLoanNumber 
end
GO
/****** Object:  StoredProcedure [TeamE].[CreateRegularAccount]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [TeamE].[CreateRegularAccount]
(@CustomerID uniqueidentifier,@AccountType varchar(10),@Branch varchar(30),@MinimumBalance money,@InterestRate decimal)
as
begin

		---THROWING EXCEPTION IF CUSTOMER ID IS NULL
		if @CustomerID IS null
			throw 50001,'Invalid Customer ID',1
		
		---GENERATING ACCOUNT ID
		declare @AccountID uniqueidentifier
			set @AccountID = NEWID()
		
		---GENERATING ACCOUNT NO
		declare @acount int,@AccountNo char(10)
			set @acount = (select count(*) from TeamE.RegularAccount)
			set @AccountNo = (SELECT CONVERT(char(10),(1000000001 + @acount)))

		---THROWING EXCEPTION IF ACCOUNT TYPE IS NOT SAVINGS OR CURRENT
		if @AccountType NOT IN('Savings','Current')
			throw 50001,'Invalid Account Type',6

		---THROWING EXCEPTION IF HOME BRANCH IS INVALID OR NULL
		if @Branch NOT IN('Mumbai','Delhi','Chennai','Bengaluru')
			throw 50001,'Invalid Branch',7

			INSERT INTO TeamE.RegularAccount(AccountID, CustomerID, AccountNo,
	AccountType ,Branch,MinimumBalance,InterestRate)VALUES(@AccountID, @CustomerID, @AccountNo,
	@AccountType ,@Branch,@MinimumBalance,@InterestRate)

	SELECT @@ROWCOUNT as Column1,@AccountNo as Column2
end
GO
/****** Object:  StoredProcedure [TeamE].[DeleteEducationLoanByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---To Delete Car Loan By Loan ID 
Create Procedure [TeamE].[DeleteEducationLoanByCustomerID](@CustomerID uniqueidentifier)
as begin 

   ---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if @CustomerID is null 
		throw 500006,'Invalid Status',8

Delete from TeamE.EducationLoan
Where CustomerID = @CustomerID
end
GO
/****** Object:  StoredProcedure [TeamE].[DeleteFixedAccount]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[DeleteFixedAccount](@AccountNo char(10))

as 
begin

		
		---THROWING EXCEPTION IF THE ACCOUNT DOESN'T EXISTS
		if NOT EXISTS(SELECT * from TeamE.FixedAccount WHERE AccountNo = @AccountNo) AND (len(@AccountNo) = 10) AND (@AccountNo LIKE '2%')
			throw 50001,'Account does not exists',1

		---THROWING EXCEPTION IF ACCOUNT No IS NULL OR INVALID
		if @AccountNo is null OR (len(@AccountNo) <> 10) 
			throw 50001,'Invalid Account No',1

		---SETTING THE VALUE OF STATUS FROM "ACTIVE" TO "CLOSED"
		update TeamE.FixedAccount
		set Status = 'Closed' where AccountNo = @AccountNo;

		update TeamE.FixedAccount
		set LastModifiedDateTime = SYSDATETIME() where AccountNo = @AccountNo;

end

GO
/****** Object:  StoredProcedure [TeamE].[DeleteHomeLoanByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamE].[DeleteHomeLoanByCustomerID](@CustomerID uniqueidentifier)
as begin 

   ---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if @CustomerID is null 
		throw 500006,'Invalid Status',8

Delete from TeamE.HomeLoan
Where CustomerID = @CustomerID
end

GO
/****** Object:  StoredProcedure [TeamE].[DeleteLoanByLoanID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamE].[DeleteLoanByLoanID](@LoanID1 uniqueidentifier)
as begin 

   ---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if @LoanID1 = null 
		throw 500006,'Invalid Status',8

Delete from TeamE.CarLoan
Where CarLoanID = @LoanID1
end
GO
/****** Object:  StoredProcedure [TeamE].[DeletePersonalLoanByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---To Delete Car Loan By Loan ID 
CREATE Procedure [TeamE].[DeletePersonalLoanByCustomerID](@CustomerID uniqueidentifier)
as begin 

   ---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if @CustomerID is null OR @CustomerID NOT IN(Select CustomerID from TeamE.PersonalLoan)
		throw 500006,'Invalid Status',8

Delete from TeamE.PersonalLoan
Where CustomerID = @CustomerID
end
GO
/****** Object:  StoredProcedure [TeamE].[DeleteRegularAccount]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[DeleteRegularAccount](@AccountNo char(10))

as 
begin

		
		---THROWING EXCEPTION IF THE ACCOUNT DOESN'T EXISTS
		if NOT EXISTS(SELECT * from TeamE.RegularAccount WHERE AccountNo = @AccountNo) AND (len(@AccountNo) = 10) AND (@AccountNo LIKE '1%')
			throw 50001,'Account does not exists',1

		---THROWING EXCEPTION IF ACCOUNT No IS NULL OR INVALID
		if @AccountNo is null OR (len(@AccountNo) <> 10) 
			throw 50001,'Invalid Account No',1

		---SETTING THE VALUE OF STATUS FROM "ACTIVE" TO "CLOSED"
		update TeamE.RegularAccount
		set Status = 'Closed' where AccountNo = @AccountNo;

		update TeamE.RegularAccount
		set LastModifiedDateTime = SYSDATETIME() where AccountNo = @AccountNo;

end

GO
/****** Object:  StoredProcedure [TeamE].[GetAllChequeBooks]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetAllChequeBooks]
as
begin
select * from TeamE.ChequeBook 
end
GO
/****** Object:  StoredProcedure [TeamE].[GetAllCreditCards]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetAllCreditCards]
as
begin
	select * from TeamE.CreditCard 
end
GO
/****** Object:  StoredProcedure [TeamE].[GetAllDebitCards]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetAllDebitCards]
as
begin
select * from TeamE.DebitCard 
end
GO
/****** Object:  StoredProcedure [TeamE].[GetAllFixedAccounts]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[GetAllFixedAccounts]
as
begin

		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.FixedAccount a, TeamE.Customer c WHERE (c.CustomerID = a.CustomerID) 

end
GO
/****** Object:  StoredProcedure [TeamE].[GetAllRegularAccounts]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[GetAllRegularAccounts]
as
begin

		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.RegularAccount a, TeamE.Customer c WHERE (c.CustomerID = a.CustomerID) 
	
end

GO
/****** Object:  StoredProcedure [TeamE].[GetChequeBookByChequeBookID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetChequeBookByChequeBookID](@chequeBookID uniqueIdentifier)
 as
 begin
 select * from TeamE.ChequeBook 
 where ChequeBookID=@chequeBookID
 end
GO
/****** Object:  StoredProcedure [TeamE].[GetChequeBookBySeriesStart]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 create procedure [TeamE].[GetChequeBookBySeriesStart](@seriesStart decimal)
 as
 begin
 select  * from TeamE.ChequeBook 
 where SeriesStart=@seriesStart
 end
GO
/****** Object:  StoredProcedure [TeamE].[GetChequeBooksByAccountID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetChequeBooksByAccountID](@accountID uniqueidentifier)
 as
 begin
select * from TeamE.ChequeBook 
 where AccountID=@accountID
 end
GO
/****** Object:  StoredProcedure [TeamE].[GetChequeBooksByAccountIDAndStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetChequeBooksByAccountIDAndStatus](@accountID uniqueidentifier,@chequeBookStatus varchar(12))
 as
 begin
select * from TeamE.ChequeBook 
 where AccountID=@accountID and ChequeBookStatus=@chequeBookStatus
 end
GO
/****** Object:  StoredProcedure [TeamE].[GetCreditCardByCreditCardNumber]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetCreditCardByCreditCardNumber](@cardNumber char(12))
 as
 begin
	 select * from TeamE.CreditCard 
 where CardNumber=@cardNumber
 end
GO
/****** Object:  StoredProcedure [TeamE].[GetCreditCardsByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetCreditCardsByCustomerID](@custID uniqueIdentifier)
as
begin
	select *from TeamE.CreditCard 
 where CustomerID=@custID
 end
GO
/****** Object:  StoredProcedure [TeamE].[GetCreditCardsByCustomerIDAndStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetCreditCardsByCustomerIDAndStatus](@custID uniqueIdentifier,@cardStatus varchar(12))
as
begin
	select *from TeamE.CreditCard 
 where CustomerID=@custID and CardStatus=@cardStatus
 end
GO
/****** Object:  StoredProcedure [TeamE].[GetDebitCardByDebitCardNumber]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetDebitCardByDebitCardNumber](@cardNumber char(12))
 as
 begin
 select * from TeamE.DebitCard 
 where CardNumber=@cardNumber
 end
GO
/****** Object:  StoredProcedure [TeamE].[GetDebitCardsByAccountID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetDebitCardsByAccountID](@accountID uniqueidentifier)
as
begin
select * from TeamE.DebitCard 
 where AccountID=@accountID
 end
GO
/****** Object:  StoredProcedure [TeamE].[GetDebitCardsByAccountIDAndStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetDebitCardsByAccountIDAndStatus](@accountID uniqueIdentifier,@cardStatus varchar(12))
as
begin
	select *from TeamE.DebitCard 
 where AccountID=@accountID and CardStatus=@cardStatus
 end
GO
/****** Object:  StoredProcedure [TeamE].[GetFixedAccountByAccountNo]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[GetFixedAccountByAccountNo](@AccountNo char(10)) 
as
begin

		
		---THROWING EXCEPTION IF THE ACCOUNT DOESN'T EXISTS
		if NOT EXISTS(SELECT * from TeamE.FixedAccount WHERE AccountNo = @AccountNo) AND (len(@AccountNo) = 10) AND (@AccountNo LIKE '2%')
			throw 50001,'Account does not exists',1


		---THROWING EXCEPTION IF ACCOUNT No IS NULL OR INVALID
		if @AccountNo is null OR (len(@AccountNo) <> 10) 
			throw 50001,'Invalid Account No',1



		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.FixedAccount a, TeamE.Customer c WHERE (AccountNo = @AccountNo) 
		AND (c.CustomerID = a.CustomerID )

end


GO
/****** Object:  StoredProcedure [TeamE].[GetFixedAccountByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [TeamE].[GetFixedAccountByCustomerID](@CustomerID uniqueIdentifier)
as
begin

		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.FixedAccount a INNER JOIN TeamE.Customer c ON ((c.CustomerID = a.CustomerID)AND(@CustomerID = a.CustomerID ))
end

GO
/****** Object:  StoredProcedure [TeamE].[GetFixedAccountsByAccountOpeningDate]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [TeamE].[GetFixedAccountsByAccountOpeningDate](@StartDate datetime,@EndDate datetime)
as
begin
		
		---THROWING EXCEPTION IF END DATE IS LATER THAN TODAY
		if (@EndDate > = GETDATE())
			throw 50001,'End date cannot be later than today',1

		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.FixedAccount a, TeamE.Customer c WHERE ((a.CreationDateTime >= @StartDate) 
		AND (a.CreationDateTime <= @EndDate))

end

GO
/****** Object:  StoredProcedure [TeamE].[GetFixedAccountsByBranch]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetFixedAccountsByBranch](@Branch varchar(10)) 
as
begin


		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.FixedAccount a, TeamE.Customer c WHERE (Branch = @Branch) 
		

end
GO
/****** Object:  StoredProcedure [TeamE].[GetFixedAccountsByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[GetFixedAccountsByCustomerID](@CustomerID uniqueIdentifier)
as
begin

		---THROWING EXCEPTION IF THE CUSTOMER ID ENTERED IS NOT VALID
	    if @CustomerID NOT IN (SELECT CustomerID from TeamE.Customer where CustomerID = @CustomerID)
					throw 50001,'Customer does not exists',1


		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.FixedAccount a INNER JOIN TeamE.Customer c ON ((c.CustomerID = a.CustomerID)AND(@CustomerID = a.CustomerID ))
end

GO
/****** Object:  StoredProcedure [TeamE].[GetRegularAccountByAccountNo]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[GetRegularAccountByAccountNo](@AccountNo char(10))
as
begin

		
		---THROWING EXCEPTION IF THE ACCOUNT DOESN'T EXISTS
		if NOT EXISTS(SELECT * from TeamE.RegularAccount WHERE AccountNo = @AccountNo) AND (len(@AccountNo) = 10) AND (@AccountNo LIKE '1%')
			throw 50001,'Account does not exists',1

		---THROWING EXCEPTION IF ACCOUNT No IS NULL OR INVALID
		if @AccountNo is null OR (len(@AccountNo) <> 10) 
			throw 50001,'Invalid Account No',1

		
		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.RegularAccount a, TeamE.Customer c WHERE (AccountNo = @AccountNo) 
		AND (c.CustomerID = a.CustomerID )

end
GO
/****** Object:  StoredProcedure [TeamE].[GetRegularAccountsByAccountOpeningDate]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [TeamE].[GetRegularAccountsByAccountOpeningDate](@StartDate datetime,@EndDate datetime)
as
begin
		
		---THROWING EXCEPTION IF END DATE IS LATER THAN TODAY
		if (@EndDate > = GETDATE())
			throw 50001,'End date cannot be later than today',1

		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.RegularAccount a, TeamE.Customer c WHERE ((a.CreationDateTime >= @StartDate) 
		AND (a.CreationDateTime <= @EndDate))

end

GO
/****** Object:  StoredProcedure [TeamE].[GetRegularAccountsByAccountType]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[GetRegularAccountsByAccountType](@AccountType varchar(10))
as
begin

		---THROWING EXCEPTION IF THE ACCOUNT TYPE ENTERED IS NOT VALID
				if @AccountType NOT IN ('SAVINGS','CURRENT')
					throw 50001,'Account Type entered is invalid',1

		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.RegularAccount a, TeamE.Customer c WHERE (AccountType = @AccountType) 
		AND (c.CustomerID = a.CustomerID )

end

GO
/****** Object:  StoredProcedure [TeamE].[GetRegularAccountsByBranch]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[GetRegularAccountsByBranch](@Branch varchar(30))
as
begin

		
		
		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.RegularAccount a, TeamE.Customer c WHERE (Branch = @Branch) 
		AND (c.CustomerID = a.CustomerID )

end

GO
/****** Object:  StoredProcedure [TeamE].[GetRegularAccountsByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[GetRegularAccountsByCustomerID](@CustomerID uniqueIdentifier)
as
begin
		
		---THROWING EXCEPTION IF THE CUSTOMER ID ENTERED IS NOT VALID
	    if @CustomerID NOT IN (SELECT CustomerID from TeamE.Customer where CustomerID = @CustomerID)
					throw 50001,'Customer does not exists',1


		SELECT c.CustomerName,c.CustomerNumber,a.* from TeamE.RegularAccount a INNER JOIN TeamE.Customer c ON ((c.CustomerID = a.CustomerID)AND(@CustomerID = a.CustomerID ))

end
GO
/****** Object:  StoredProcedure [TeamE].[GetsAllCustomer]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Created by Asmita Chandrakar
--Procedure to View all customer
Create Procedure [TeamE].[GetsAllCustomer]
  AS
  BEGIN
  Select * From TeamE.Customer
  End

GO
/****** Object:  StoredProcedure [TeamE].[ShowAllEducationLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---To Show All Car Loan data
Create Procedure [TeamE].[ShowAllEducationLoan]
as begin 
Select * from TeamE.EducationLoan
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowAllHomeLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---To Show All Car Loan data
Create Procedure [TeamE].[ShowAllHomeLoan]
as begin 
Select * from TeamE.HomeLoan
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowAllLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---To Show All Car Loan data
Create Procedure [TeamE].[ShowAllLoan]
as begin 
Select * from TeamE.CarLoan
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowAllPersonalLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---To Show All Car Loan data
Create Procedure [TeamE].[ShowAllPersonalLoan]
as begin 
Select * from TeamE.PersonalLoan
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowCarLoanByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamE].[ShowCarLoanByCustomerID](@LoanID uniqueidentifier)
as begin
   ---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if @LoanID is null 
		throw 500006,'Invalid Status',8
 
--- Selecting Value Based on Loan ID---
Select * from TeamE.CarLoan
Where CustomerID = @LoanID
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowCustomerByCustomerNumber]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[ShowCustomerByCustomerNumber](@CustomerNumber char(6)) 
as
begin 
	select * from TeamE.Customer where CustomerNumber= @CustomerNumber
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowEducationLoanByLoanID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamE].[ShowEducationLoanByLoanID](@CustomerID uniqueidentifier)
as begin
   ---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if  @CustomerID is null
		throw 500006,'Invalid Status',8
 
--- Selecting Value Based on Loan ID---
Select * from TeamE.EduactioLoan
Where CustomerID = @CustomerID
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowEducationLoanByLoanStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamE].[ShowEducationLoanByLoanStatus](@LoanStatus varchar(10))
as begin 

		---THROWING EXCEPTION IF Loan Status IS INVALID OR NULL
		if @LoanStatus = null OR @LoanStatus = ''OR @LoanStatus NOT IN('Pending','Approved','Rejected')
			throw 500005,'Invalid Status',7

Select * from TeamE.EducationLoan
Where LoanStatus = @LoanStatus
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowHomeLoanByLoanID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamE].[ShowHomeLoanByLoanID](@CustomerID uniqueidentifier)
as begin
   ---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if  @CustomerID NOT IN(Select CustomerID from TeamE.HomeLoan)
		throw 500006,'Invalid Status',8
 
--- Selecting Value Based on Loan ID---
Select * from TeamE.HomeLoan
Where CustomerID = @CustomerID
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowHomeLoanByLoanStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamE].[ShowHomeLoanByLoanStatus](@LoanStatus varchar(10))
as begin 

		---THROWING EXCEPTION IF Loan Status IS INVALID OR NULL
		if @LoanStatus is null OR @LoanStatus = ''OR @LoanStatus NOT IN('Pending','Approved','Rejected')
			throw 500005,'Invalid Status',7

Select * from TeamE.HomeLoan
Where LoanStatus = @LoanStatus
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowLoanByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [TeamE].[ShowLoanByCustomerID](@LoanID uniqueidentifier)
as begin
   ---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if @LoanID is null 
		throw 500006,'Invalid Status',8
 
--- Selecting Value Based on Loan ID---
Select * from TeamE.CarLoan
Where CustomerID = @LoanID
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowLoanByLoanID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamE].[ShowLoanByLoanID](@LoanID uniqueidentifier)
as begin
   ---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if @LoanID is null OR @LoanID NOT IN(Select CarLoanID from TeamE.CarLoan)
		throw 500006,'Invalid Status',8
 
--- Selecting Value Based on Loan ID---
Select * from TeamE.CarLoan
Where CarLoanID = @LoanID
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowLoanByLoanStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamE].[ShowLoanByLoanStatus](@LoanStatus varchar(10))
as begin 

		---THROWING EXCEPTION IF Loan Status IS INVALID OR NULL
		if @LoanStatus is null OR @LoanStatus = ''OR @LoanStatus NOT IN('Pending','Approved','Rejected')
			throw 500005,'Invalid Status',7

Select * from TeamE.CarLoan
Where LoanStatus = @LoanStatus
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowPersonalLoanByLoanID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---To Show Loan By Car Loan ID---
CREATE Procedure [TeamE].[ShowPersonalLoanByLoanID](@CustomerID uniqueidentifier)
as begin
   ---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if  @CustomerID is null
		throw 500006,'Invalid Status',8
 
--- Selecting Value Based on Loan ID---
Select * from TeamE.PersonalLoan
Where CustomerID = @CustomerID
end
GO
/****** Object:  StoredProcedure [TeamE].[ShowPersonalLoanByLoanStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamE].[ShowPersonalLoanByLoanStatus](@LoanStatus varchar(10))
as begin 

		---THROWING EXCEPTION IF Loan Status IS INVALID OR NULL
		if @LoanStatus is null OR @LoanStatus = ''OR @LoanStatus NOT IN('Pending','Approved','Rejected')
			throw 500005,'Invalid Status',7

Select * from TeamE.PersonalLoan
Where LoanStatus = @LoanStatus
end
GO
/****** Object:  StoredProcedure [TeamE].[UpdateCarLoanByLoanID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [TeamE].[UpdateCarLoanByLoanID] (@LoanNumber char(4),  @LoanAmount money,
	@LoanDuration decimal,@License char(15))
	as begin
	

	---THROWING EXCEPTION IF Amount of Loan IS NULL OR LESS THAN 0
	 if @LoanAmount < 0 
		throw 50002, 'Invalid Amount of Loan',5

	---THROWING EXCEPTION IF LoanDuration IS INVALID 
	 if @LoanDuration < 0 
		throw 50003, 'Invalid Tenure',5

	---THROWING EXCEPTION IF License IS NULL OR INVALID---
	 if @License = null OR @License = ' ' OR @License LIKE '[a-zA-Z][a-zA-Z]%'
		throw 50004, 'Invalid License',5

	---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if @LoanNumber is null 
		throw 500006,'Invalid Status',8

	---Updating Values---

	
Update Loans.CarLoan

Set LoanAmount = @LoanAmount,
    LoanDuration = @LoanDuration,
	License = @License
Where CarLoanNumber = @LoanNumber
end
GO
/****** Object:  StoredProcedure [TeamE].[UpdateChequeBookStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[UpdateChequeBookStatus](@seriesStart decimal,@chequeBookStatus varchar(12),@lastModifiedDate datetime)
as
begin
update TeamE.ChequeBook
set
ChequeBookStatus=@chequeBookStatus,
LastModifiedDate=@lastModifiedDate
where SeriesStart=@seriesStart
end
GO
/****** Object:  StoredProcedure [TeamE].[UpdateCreditCard]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[UpdateCreditCard](@cardNumber char(12) ,@cardStatus varchar(12),@lastModifiedDate datetime)
as
begin
update TeamE.CreditCard
set
CardStatus=@cardStatus,
LastModifiedDate=@lastModifiedDate
where CardNumber=@cardNumber
end
GO
/****** Object:  StoredProcedure [TeamE].[UpdateCreditCardStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[UpdateCreditCardStatus](@cardNumber char(12) ,@cardStatus varchar(12),@lastModifiedDate datetime)
as
begin
update TeamE.CreditCard
set
CardStatus=@cardStatus
where CardNumber=@cardNumber
end
GO
/****** Object:  StoredProcedure [TeamE].[UpdateDebitCardStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamE].[UpdateDebitCardStatus](@cardNumber char(12),@cardStatus varchar(12),@lastModifiedDate datetime)
as
begin
update TeamE.DebitCard
set
CardStatus=@cardStatus,
LastModifiedDate=@lastModifiedDate
where CardNumber=@cardNumber
end
GO
/****** Object:  StoredProcedure [TeamE].[UpdateEducationLoanBycustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---To Update Car Loan By using Loan ID
Create Procedure [TeamE].[UpdateEducationLoanBycustomerID] (@CustomerID uniqueidentifier,  @LoanAmount money,
	@LoanDuration decimal,@Collateral money , @CollegeName varchar(20), @AdmissionID varchar(20) ,@Sponseror varchar(20))
	as begin
	

	---THROWING EXCEPTION IF Amount of Loan IS NULL OR LESS THAN 0
	 if @LoanAmount < 0 
		throw 50002, 'Invalid Amount of Loan',5

	---THROWING EXCEPTION IF LoanDuration IS INVALID 
	 if @LoanDuration < 0 
		throw 50003, 'Invalid Tenure',5

	---THROWING EXCEPTION IF License IS NULL OR INVALID---
	 if @Collateral < 0
		throw 50004, 'Collateral Cannot be less than 0',5

	---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if @CustomerID is null 
		throw 500006,'Invalid Status',8

		---THROWING EXCEPTION IF  College Name IS NULL OR INVALID
	if @CollegeName is null or @CollegeName = ' ' 
		throw 50005, 'Invalid Customer No',3

	---THROWING EXCEPTION IF Admission ID IS NULL OR INVALID
	if @AdmissionID is null or @AdmissionID = ' ' 
		throw 50006, 'Invalid Customer No',3

	---THROWING EXCEPTION IF  Sponseror IS NULL OR INVALID
	if @Sponseror is null or @Sponseror = ' ' 
		throw 50007, 'Invalid Customer No',3
	

	---Updating Values---

	
Update TeamE.EducationLoan

Set LoanAmount = @LoanAmount,
    LoanDuration = @LoanDuration,
	Collateral = @Collateral,
	CollegeName = @CollegeName,
	AdmissionID = @AdmissionID,
	Sponseror = @Sponseror
Where CustomerID = @CustomerID
end
GO
/****** Object:  StoredProcedure [TeamE].[UpdateEmployee]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[UpdateEmployee]( @empID uniqueidentifier, @empName varchar(40), @email varchar(20), @password varchar(15), @modifiedTime DateTime)
as
begin
if(not exists(select * from TeamE.Employees where EmployeeID= @empID))
	throw 5000, 'Employee not found', 1;
if(len(@empName)<2 or len(@empName)>40)
	throw 100, 'Customer Name should be between 2 and 40 characters', 1;


update TeamE.Employees
	set
		EmployeeName=@empName,
		Email=@email,
		EmployeePassword=@password,
		LastModifiedDateTime=@modifiedTime

		where EmployeeID = @empID
select @@ROWCOUNT
end

GO
/****** Object:  StoredProcedure [TeamE].[UpdateHomeLoanBycustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---To Update Car Loan By using Loan ID
CREATE Procedure [TeamE].[UpdateHomeLoanBycustomerID] (@CustomerID uniqueidentifier,  @LoanAmount money,
	@LoanDuration decimal,@Collateral money)
	as begin
	

	---THROWING EXCEPTION IF Amount of Loan IS NULL OR LESS THAN 0
	 if @LoanAmount < 0 
		throw 50002, 'Invalid Amount of Loan',5

	---THROWING EXCEPTION IF LoanDuration IS INVALID 
	 if @LoanDuration < 0 
		throw 50003, 'Invalid Tenure',5

	---THROWING EXCEPTION IF License IS NULL OR INVALID---
	 if @Collateral < 0
		throw 50004, 'Collateral Cannot be less than 0',5

	---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if @CustomerID is null 
		throw 500006,'Invalid Status',8

	---Updating Values---

	
Update TeamE.HomeLoan

Set LoanAmount = @LoanAmount,
    LoanDuration = @LoanDuration,
	Collateral = @Collateral
Where CustomerID = @CustomerID
end
GO
/****** Object:  StoredProcedure [TeamE].[UpdateLoanByLoanID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamE].[UpdateLoanByLoanID] (@LoanNumber char(4),  @LoanAmount money,
	@LoanDuration decimal,@License char(15))
	as begin
	

	---THROWING EXCEPTION IF Amount of Loan IS NULL OR LESS THAN 0
	 if @LoanAmount < 0 
		throw 50002, 'Invalid Amount of Loan',5

	---THROWING EXCEPTION IF LoanDuration IS INVALID 
	 if @LoanDuration < 0 
		throw 50003, 'Invalid Tenure',5

	---THROWING EXCEPTION IF License IS NULL OR INVALID---
	 if @License = null OR @License = ' ' OR @License LIKE '[a-zA-Z][a-zA-Z]%'
		throw 50004, 'Invalid License',5

	---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if @LoanNumber is null 
		throw 500006,'Invalid Status',8

	---Updating Values---

	
Update Loans.CarLoan

Set LoanAmount = @LoanAmount,
    LoanDuration = @LoanDuration,
	License = @License
Where CarLoanNumber = @LoanNumber
end
GO
/****** Object:  StoredProcedure [TeamE].[UpdatePersonalLoanByLoanID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---To Update Car Loan By using Loan ID
CREATE Procedure [TeamE].[UpdatePersonalLoanByLoanID] (@CustomerID uniqueidentifier,  @LoanAmount money,
	@LoanDuration decimal,@Collateral money)
	as begin
	

	---THROWING EXCEPTION IF Amount of Loan IS NULL OR LESS THAN 0
	 if @LoanAmount < 0 
		throw 50002, 'Invalid Amount of Loan',5

	---THROWING EXCEPTION IF LoanDuration IS INVALID 
	 if @LoanDuration < 0 
		throw 50003, 'Invalid Tenure',5

	---THROWING EXCEPTION IF License IS NULL OR INVALID---
	 if @Collateral < 0
		throw 50004, 'Invalid License',5

	---THROWING EXCEPTION IF Loan ID IS INVALID OR NULL
	if @CustomerID = null OR  @CustomerID NOT IN(Select CustomerID from TeamE.PersonalLoan)
		throw 500006,'Invalid Status',8

	---Updating Values---

	
Update TeamE.PersonalLoan

Set LoanAmount = @LoanAmount,
    LoanDuration = @LoanDuration,
	Collateral = @Collateral
Where CustomerID = @CustomerID
end
GO
/****** Object:  StoredProcedure [TeamE].[UpdatesCustomer]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamE].[UpdatesCustomer](@CustomerNumber char(6),@CustomerName varchar(40),@CustomerMobile char(10) ,@Email varchar(50),@CustomerAddress varchar(200) ) 
as
begin 

	 update TeamE.Customer
		set

		CustomerName=@CustomerName,
		CustomerMobile=@CustomerMobile,
		Email=@Email,
		CustomerAddress=@CustomerAddress,
		LastModified=sysdatetime()
		

        where CustomerNumber=@CustomerNumber
end
GO
/****** Object:  StoredProcedure [TeamF].[AddAccountDAL]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamF].[AddAccountDAL](@AccountType varchar(7),@AccountNumber bigint,@AccountID uniqueidentifier
,@CustomerID uniqueidentifier,@HomeBranch varchar(20),
@IsActive bit)	

as 
begin
declare @Feedback varchar(100);
declare @DateOfCreation dateTime,@AccountBalance money;
set @DateOfCreation = SysDatetime(); 
set @Feedback = '';
set @AccountBalance = 0;

--Validating if Account Type is of 7 characters
if (len(@AccountType) <>7)
throw 50000,'Account Type length is not equal to 7 ',1

if(exists(select 1 from TeamF.Account where AccountID = @AccountID))
throw 50000,'AccountID Already Exists ',1


--Validating Account ID so that it is not blank
if(@AccountID = '')
throw 50000,'AccountID cannot be blank',1


insert  into TeamF.Account (AccountID,AccountNumber,HomeBranch,AccountType
,CustomerID,DateOfCreation,Feedback,IsActive,AccountBalance) values(@AccountID,@AccountNumber,@HomeBranch,@AccountType,@CustomerID,
@DateOfCreation,@FeedBack,@IsActive,@AccountBalance)

end
GO
/****** Object:  StoredProcedure [TeamF].[AddCustomerDAL]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamF].[AddCustomerDAL](@CustomerID uniqueidentifier, @CustomerName varchar(40),@CustomerAddress varchar(100),@CustomerMobile char(10),@CustomerEmail varchar(40),@CustomerPan char(10),@CustomerAadhaarNumber char(12),@DOB datetime,@CustomerGender varchar(12)) 
As
Begin
     
	if(len(@CustomerName) <2 OR len(@CustomerName)>40)
	throw 50000 ,'Customer Name not in correct format',1;

	if (@CustomerName is null)
	throw 50000 ,'Customer Name invalid ',1;


   
   if(len(@CustomerPan) <>10)
   throw 50000 ,'CustomerPan not in correct format',1;

   if (@CustomerPan is null)
   throw 50000 ,'Customer Pan invalid ',1;
   
   

   Insert into TeamF.Customers( CustomerID, CustomerName ,CustomerAddress,CustomerMobile,CustomerEmail,CustomerPan,CustomerAadhaarNumber,DOB,CustomerGender)
   Values(@CustomerID , @CustomerName ,@CustomerAddress,@CustomerMobile,@CustomerEmail,@CustomerPan,@CustomerAadhaarNumber,@DOB,@CustomerGender)
END
GO
/****** Object:  StoredProcedure [TeamF].[AddEmployees]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamF].[AddEmployees](@empid uniqueidentifier,@empname varchar(40), @empemail Email, @emppassword Password, @empmobile char(10))
as
begin
DECLARE @creationDate datetime = SYSDATETIME();
DECLARE @lastModifiedDateTime datetime = SYSDATETIME();
DECLARE @isActive bit = 1;
	--if exists (select EmployeeID from TeamF.Employees where EmployeeID = @empid)
	--throw 50001, 'Employee ID already exists', 1
	if @empname = ''
	throw 50001, 'Name cannot be blank', 1
	if @empemail is null 
	throw 50001, 'Email cannot be blank', 1
	if exists (select EmployeeEmail from TeamF.Employees where EmployeeEmail = @empemail)
	throw 50001, 'Email already exists', 1
	if @emppassword is null
	throw 50001, 'Password cannot be blank', 1
	if @empmobile is null
	throw 50001, 'Mobile cannot be blank', 1
	if 	exists (select Mobile from TeamF.Employees where Mobile = @empmobile)
	throw 50001, 'Mobile number already exists', 1
	else
	insert into TeamF.Employees(EmployeeID, EmployeeName, EmployeeEmail, EmployeePassword, Mobile, CreationDateTime, LastModifiedDateTime, isActive) 
	values (@empid, @empname, @empemail, @emppassword, @empmobile, @creationDate, @lastModifiedDateTime, @isActive) 
end
GO
/****** Object:  StoredProcedure [TeamF].[AddFixedDepositDAL]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamF].[AddFixedDepositDAL](@AccountNumber bigint,@AccountID uniqueidentifier
,@CustomerID uniqueidentifier,@HomeBranch varchar(20),
@IsActive bit,@FdDeposit money,@InterestRate money,@Tenure int)

As

begin
--Givinng inital Feedback as Null and giving system Date and Time
declare @DateOfCreation dateTime;
set @DateOfCreation = SysDatetime();  
 declare @Feedback varchar(100);
 set @Feedback='';

 --Throw exception if  deposit is less than 20000
if(@FdDeposit < 20000)
throw 50000,'Minimum FD Deposit is 20000',1;

if(exists(select 1 from Accounts.FixedDeposit where AccountID = @AccountID))
throw 50000,'AccountID Already Exists add new Account ',1

--If account ID is Blank then throw exception
if(@AccountID = '')
throw 50000,'AccountID cannot be blank',1

--inserting into Table
insert  into Accounts.FixedDeposit (AccountID,FdDeposit ,InterestRate ,Tenure  ,AccountNumber ,
HomeBranch ,CustomerID ,Feedback ,IsActive ,DateOfCreation) values(@AccountID,@FdDeposit,@InterestRate ,@Tenure,@AccountNumber,
@HomeBranch ,@CustomerID ,@Feedback ,@IsActive ,@DateOfCreation)

end
GO
/****** Object:  StoredProcedure [TeamF].[applyCarLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[applyCarLoan] (	@LoanID uniqueidentifier,
								@CustomerID uniqueidentifier,
								@AmountApplied money,
								@InterestRate money,
								@EMI_amount money,
								@RepaymentPeriod tinyint,
								@DateOfApplication datetime,
								@LoanStatus varchar(15),
								
								@Occupation varchar(15),
								@GrossIncome money,
								@SalaryDeduction money,
								@VehicleType varchar(15))
as 
begin
	
	if(@AmountApplied > 2000000)
		throw 50000, 'Maximum allowed amount is Rs. 20 lakh', 1

	if(@RepaymentPeriod > 120)
		throw 50000, 'Maximum allowed repayment period is 120 months', 1

	if(@SalaryDeduction > @GrossIncome)
		throw 50000, 'Salary deductions must not be greater than gross income', 1

	insert into TeamF.CarLoan
	values( @LoanID,
			@CustomerID,
			@AmountApplied,
			@InterestRate,
			@EMI_amount,
			@RepaymentPeriod,
			@DateOfApplication,
			@LoanStatus,
			
			@Occupation,
			@GrossIncome,
			@SalaryDeduction,
			@VehicleType)
end



GO
/****** Object:  StoredProcedure [TeamF].[applyEduLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[applyEduLoan] (	@LoanID uniqueidentifier,
								@CustomerID uniqueidentifier,
								@AmountApplied money,
								@InterestRate money,
								@EMI_amount money,
								@RepaymentPeriod tinyint,
								@DateOfApplication datetime,
								@LoanStatus varchar(15),
								
								@Course varchar(15),
								@InstituteName varchar(50),
								@StudentID varchar(20),
								@RepaymentHoliday tinyint)
as 
begin
	
	if(@AmountApplied > 2000000)
		throw 50000, 'Maximum allowed amount is Rs. 20 lakh', 1

	if(@RepaymentPeriod > 96)
		throw 50000, 'Maximum allowed repayment period is 96 months', 1

	insert into TeamF.EduLoan
	values( @LoanID,
			@CustomerID,
			@AmountApplied,
			@InterestRate,
			@EMI_amount,
			@RepaymentPeriod,
			@DateOfApplication,
			@LoanStatus,

			@Course,
			@InstituteName,
			@StudentID,
			@RepaymentHoliday)
end



GO
/****** Object:  StoredProcedure [TeamF].[applyHomeLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[applyHomeLoan] (	@LoanID uniqueidentifier,
								@CustomerID uniqueidentifier,
								@AmountApplied money,
								@InterestRate money,
								@EMI_amount money,
								@RepaymentPeriod tinyint,
								@DateOfApplication datetime,
								@LoanStatus varchar(15),
							
								@Occupation varchar(15),
								@ServiceYears tinyint,
								@GrossIncome money,
								@SalaryDeduction money)
as 
begin

	if(@AmountApplied > 2000000 and @AmountApplied>0)
		throw 50000, 'Maximum allowed amount is Rs. 20 lakh and figure must be positive', 1

	if(@RepaymentPeriod > 120 and @RepaymentPeriod>0)
		throw 50000, 'Maximum allowed repayment period is 120 months and figure must be positive', 1

	if(@SalaryDeduction > @GrossIncome)
		throw 50000, 'Salary deductions must not be greater than gross income', 1

	if(@ServiceYears < 5 and @ServiceYears>0)
		throw 50000, 'Must have a minimum service experience of 5 years and figure must be positive', 1

	if(@SalaryDeduction<0 or @GrossIncome<=0)
		throw 50000, 'salary and deduction figures must be positive', 1

	insert into TeamF.HomeLoan
	values( @LoanID,
			@CustomerID,
			@AmountApplied,
			@InterestRate,
			@EMI_amount,
			@RepaymentPeriod,
			@DateOfApplication,
			@LoanStatus,

			@Occupation,
			@ServiceYears,
			@GrossIncome,
			@SalaryDeduction)
end



GO
/****** Object:  StoredProcedure [TeamF].[approveCarLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[approveCarLoan] (@LoanID uniqueidentifier, @updatedStatus varchar(15))
as
begin
	if(exists (select * from TeamF.CarLoan where LoanID=@LoanID) )
		begin
			if(@updatedStatus = (select LoanStatus from TeamF.CarLoan where LoanID=@LoanID))		
				throw 50000, 'Status cant be updated to existing status', 1

			update TeamF.CarLoan set LoanStatus=@updatedStatus
			where LoanID=@LoanID
		end
	else
		throw 50000, 'LoanID not found',1
end
GO
/****** Object:  StoredProcedure [TeamF].[approveEduLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[approveEduLoan] (@LoanID uniqueidentifier, @updatedStatus varchar(15))
as
begin
	if(exists (select * from TeamF.EduLoan where LoanID=@LoanID) )
		begin
			if(@updatedStatus = (select LoanStatus from TeamF.EduLoan where LoanID=@LoanID))		
				throw 50000, 'Status cant be updated to existing status', 1

			update TeamF.EduLoan set LoanStatus=@updatedStatus
			where LoanID=@LoanID
		end
	else
		throw 50000, 'LoanID not found',1
end
GO
/****** Object:  StoredProcedure [TeamF].[approveHomeLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[approveHomeLoan] (@LoanID uniqueidentifier, @updatedStatus varchar(15))
as
begin
	if(exists (select * from TeamF.HomeLoan where LoanID=@LoanID) )
		begin
			if(@updatedStatus = (select LoanStatus from TeamF.HomeLoan where LoanID=@LoanID))		
				throw 50000, 'Status cant be updated to existing status', 1

			update TeamF.HomeLoan set LoanStatus=@updatedStatus
			where LoanID=@LoanID
		end
	else
		throw 50000, 'LoanID not found',1
end
GO
/****** Object:  StoredProcedure [TeamF].[cancelCarLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[cancelCarLoan](@loanID uniqueidentifier)
as
begin
	delete from TeamF.CarLoan where LoanID = @loanID;
end
GO
/****** Object:  StoredProcedure [TeamF].[cancelEduLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[cancelEduLoan](@loanID uniqueidentifier)
as
begin
	delete from TeamF.EduLoan where LoanID = @loanID;
end
GO
/****** Object:  StoredProcedure [TeamF].[cancelHomeLoan]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[cancelHomeLoan](@loanID uniqueidentifier)
as
begin
	delete from TeamF.HomeLoan where LoanID = @loanID;
end
GO
/****** Object:  StoredProcedure [TeamF].[ChangeBranchofAccount]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[ChangeBranchofAccount](@AccountID uniqueidentifier,@HomeBranch varchar(20))
as 
begin

--If Home Branch is Null then throw exception
if(@HomeBranch = '')
throw 50000,'HomeBranch cannot be Null',1


--If AccountID Null then throw exception
if(@AccountID = '')
throw 50000,'AccountID cannot be Null',1

--Change Home Branch if AccountID matches
update TeamF.Account 
set HomeBranch = @HomeBranch where AccountID =  @AccountID

end
GO
/****** Object:  StoredProcedure [TeamF].[ChangeBranchofFixedDeposit]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[ChangeBranchofFixedDeposit](@AccountID uniqueidentifier,@HomeBranch varchar(20))
as 
begin

--If Home Branch is Null then throw exception
if(@HomeBranch = '')
throw 50000,'HomeBranch cannot be Null',1


--If AccountID Null then throw exception
if(@AccountID = '')
throw 50000,'AccountID cannot be Null',1

--Change Home Branch if AccountID matches
update TeamF.FixedDeposit 
set HomeBranch = @HomeBranch where AccountID =  @AccountID

end
GO
/****** Object:  StoredProcedure [TeamF].[ChangeFDDeposit]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [TeamF].[ChangeFDDeposit](@AccountID uniqueidentifier,@FdDeposit money)
as
begin

--If AccountID Null then throw exception
if(@AccountID = '')
throw 50000,'AccountID cannot be Null',1

 --Throw exception if  deposit is less than 20000
if(@FdDeposit < 20000)
throw 50000,'Minimum FD Deposit is 20000',1;

--Update FixedDeposit if AccountID matches
Update TeamF.FixedDeposit 
set FdDeposit = @FdDeposit where AccountID = @AccountID;
end
GO
/****** Object:  StoredProcedure [TeamF].[CreditBalance]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[CreditBalance](@accountID uniqueidentifier, @amount money)
as
begin
update TeamF.Account
set AccountBalance = AccountBalance + @amount
where AccountID = @accountID
end
GO
/****** Object:  StoredProcedure [TeamF].[CreditTransactionByCheque]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamF].[CreditTransactionByCheque](@accountNumber bigint, @accountID uniqueidentifier, @typeOfTranscation varchar(6), @amount money, @modeOfTransaction varchar(14), @chequeNumber char(6))
as
begin
	declare @dateofTransaction datetime = SYSDATETIME()
	declare @transactionID uniqueidentifier = newid()
	
	if @accountID is null	
			throw 500000,'The ID is not in correct format',1;
	if @amount is null or @amount < 0 or @amount > 50000
			throw 500000,'Enter Correct amount',1;
	if len(ISNULL(@chequeNumber,''))<>6
			throw 500000,'Enter Correct cheque',1;
begin try
	insert into TeamF.Transactions(AccountNumber, AccountID, TypeOFTransaction, Amount, TransactionID, DateOfTransaction, ModeOfTransaction, ChequeNumber)
	values (@accountNumber, @accountID, @typeOfTranscation, @amount, @transactionID, @dateofTransaction ,
            @modeOfTransaction, @chequeNumber)
end try

begin catch
	throw;
end catch
end
GO
/****** Object:  StoredProcedure [TeamF].[CreditTransactionByDepositSlip]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[CreditTransactionByDepositSlip](@accountNumber bigint, @accountID uniqueidentifier, @typeOfTranscation varchar(6), @amount money, @modeOfTransaction varchar(14), @chequeNumber char(6))
as
begin
	declare @dateofTransaction datetime = SYSDATETIME()
	declare @transactionID uniqueidentifier = newid()
	
	if @accountNumber < 300000 or @amount > 599999
			throw 500000,'Enter Correct amount',1;
	if @amount is null or @amount < 0 or @amount > 50000
			throw 500000,'Enter Correct amount',1;
begin try
	insert into TeamF.Transactions(AccountNumber, AccountID, TypeOFTransaction, Amount, TransactionID, DateOfTransaction, ModeOfTransaction, ChequeNumber)
	values (@accountNumber, @accountID, @typeOfTranscation, @amount, @transactionID, @dateofTransaction ,
            @modeOfTransaction, @chequeNumber)
end try

begin catch
	throw;
end catch
end
GO
/****** Object:  StoredProcedure [TeamF].[DebitBalance]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[DebitBalance](@accountID uniqueidentifier, @amount money)
as
begin
update TeamF.Account
set AccountBalance = AccountBalance - @amount
where AccountID = @accountID
end
GO
/****** Object:  StoredProcedure [TeamF].[DebitTransactionByCheque]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[DebitTransactionByCheque](@accountNumber bigint,@accountID uniqueidentifier, @typeOfTranscation varchar(6), @amount money, @modeOfTransaction varchar(14), @chequeNumber char(6))
as
begin
	declare @dateofTransaction datetime = SYSDATETIME()
	declare @transactionID uniqueidentifier = newid()
	
	if @accountNumber < 300000 or @amount > 599999
			throw 500000,'Enter Correct amount',1;
	if @amount is null or @amount < 0 or @amount > 50000
			throw 500000,'Enter Correct amount',1;
	if len(ISNULL(@chequeNumber,''))<>6
			throw 500000,'Enter Correct cheque',1;
begin try
	insert into TeamF.Transactions(AccountNumber, AccountID, TypeOFTransaction, Amount, TransactionID, DateOfTransaction, ModeOfTransaction, ChequeNumber)
	values (@accountNumber, @accountID, @typeOfTranscation, @amount, @transactionID, @dateofTransaction ,
            @modeOfTransaction, @chequeNumber)
end try

begin catch
	throw;
end catch
end
GO
/****** Object:  StoredProcedure [TeamF].[DebitTransactionByWithdrawalSlip]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamF].[DebitTransactionByWithdrawalSlip](@accountID uniqueidentifier, @type varchar(6), @amount money, @mode varchar(14), @chequeNumber char(6))
as
begin
	declare @dateofTransaction datetime = SYSDATETIME()
	declare @transactionID uniqueidentifier = newid()
	
	
	if @amount is null or @amount < 0 or @amount > 50000
			throw 500000,'Enter Correct amount',1;
begin try
	insert into TeamF.Transactions( AccountID, Type, Amount, TransactionID, DateOfTransaction, Mode, ChequeNumber)
	values ( @accountID, @type, @amount, @transactionID, @dateofTransaction ,
            @mode, @chequeNumber)
end try

begin catch
	throw;
end catch
end
GO
/****** Object:  StoredProcedure [TeamF].[DeleteAccountDAL]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamF].[DeleteAccountDAL](@AccountID uniqueidentifier,@FeedBack varchar(100))

as 
begin
--If AccountID Null then throw exception
if(@AccountID = '' )
throw 50000,'AccountID cannot be Null',1

--Setting the IsActive STatus to 0 of the given AccountID.
update TeamF.Account 
set IsActive = 0, Feedback = @Feedback  where AccountID = @AccountID;
end
GO
/****** Object:  StoredProcedure [TeamF].[DeleteEmployee]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[DeleteEmployee](@empid uniqueidentifier)
as
begin
	if isnull(@empid,'')=''
	throw 50011, 'Employee ID is invalid', 1
	if not exists(select EmployeeID from TeamF.Employees where EmployeeID = @empid)
	throw 50011, 'Employee ID not found',1
	update TeamF.Employees set IsActive = 0 where EmployeeID = @empid
end
GO
/****** Object:  StoredProcedure [TeamF].[DeleteFixedDepositDAL]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamF].[DeleteFixedDepositDAL](@AccountID uniqueidentifier,@Feedback varchar(100))

as 
begin

--If AccountID Null then throw exception
if(@AccountID = '' )
throw 50000,'AccountID cannot be Null',1
 
--Setting the IsActive STatus to 0 of the given AccountID.
update TeamF.FixedDeposit
set IsActive = 0,Feedback = @Feedback where AccountID = @AccountID;

end
GO
/****** Object:  StoredProcedure [TeamF].[GetAccountByAccountID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[GetAccountByAccountID](@AccountID uniqueidentifier)
as 
begin

select * from TeamF.Account where AccountID = @AccountID;

end
GO
/****** Object:  StoredProcedure [TeamF].[GetAccountByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[GetAccountByCustomerID](@CustomerID uniqueidentifier)
as 
begin

select * from TeamF.Account where CustomerID = @CustomerID;

end
GO
/****** Object:  StoredProcedure [TeamF].[GetAdminByAdminID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[GetAdminByAdminID](@adminID uniqueidentifier)
as
begin
	if isnull(@adminID,'')=''
		throw 50015, 'Admin ID is invalid', 1
	if not exists(select AdminID from TeamF.Admins where AdminID = @adminID)
		throw 50012, 'Admin ID not found',1
	else
		select * from TeamF.Admins
end
GO
/****** Object:  StoredProcedure [TeamF].[GetAdminByEmailandPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[GetAdminByEmailandPassword](@adminEmail Email, @adminPassword Password)
as
begin
	if not exists(select AdminEmail,AdminPassword from TeamF.Admins where AdminEmail = @adminEmail and AdminPassword = @adminPassword)
	throw 50014, 'Email and Password not found',1
	else
	select * from TeamF.Admins
end
GO
/****** Object:  StoredProcedure [TeamF].[GetAllCustomersDAL]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create Procedure [TeamF].[GetAllCustomersDAL]
  AS
  BEGIN
  Select * From Customers.Customer
  End
GO
/****** Object:  StoredProcedure [TeamF].[GetAllEmployees]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [TeamF].[GetAllEmployees]
as 
begin
	select EmployeeID,
	EmployeeName ,
	EmployeeEmail,
	Mobile ,
	CreationDateTime ,
	LastModifiedDateTime 
	from TeamF.Employees
end
GO
/****** Object:  StoredProcedure [TeamF].[getCarLoanByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[getCarLoanByCustomerID] (@customerID uniqueidentifier,
											@loanID uniqueidentifier output,
											@loanStatus varchar(15) output,
											@amountApplied money output,
											@EMI money output,
											@repaymentPeriod tinyint output)
as			
begin
	if(exists (select * from TeamF.CarLoan where CustomerID=@customerID) )
		begin
			select  @loanID=LoanID,
					@loanStatus = LoanStatus,
					@amountApplied = AmountApplied,
					@EMI = EMI_amount,
					@repaymentPeriod = RepaymentPeriod
			from TeamF.CarLoan
			where CustomerID = @customerID
		end
	else
		throw 50000, 'Customer dont have a car loan',1
end
GO
/****** Object:  StoredProcedure [TeamF].[getCarLoanByLoanID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[getCarLoanByLoanID] (@loanID uniqueidentifier,
											@customerID uniqueidentifier output,
											@loanStatus varchar(15) output,
											@amountApplied money output,
											@EMI money output,
											@repaymentPeriod tinyint output)
as			
begin
	if(exists (select * from TeamF.CarLoan where LoanID=@loanID) )
		begin
			select  @customerID=CustomerID,
					@loanStatus = LoanStatus,
					@amountApplied = AmountApplied,
					@EMI = EMI_amount,
					@repaymentPeriod = RepaymentPeriod
			from TeamF.CarLoan
			where LoanID = @loanID
		end
	else
		throw 50000, 'Loan ID dont exist',1
end
GO
/****** Object:  StoredProcedure [TeamF].[getCarLoanStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[getCarLoanStatus](@loanID uniqueidentifier, @status varchar(15) output)
as
begin
	if(exists (select * from TeamF.CarLoan where LoanID=@loanID))
		select @status=LoanStatus from TeamF.CarLoan where LoanID=@loanID
	else
		throw 50000, 'LoanID dont exist', 1
end


GO
/****** Object:  StoredProcedure [TeamF].[GetCustomerByCustomerIDDAL]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamF].[GetCustomerByCustomerIDDAL](@CustomerID uniqueidentifier)
  AS
  BEGIN
  Select * From Customers.Customer
  Where CustomerID = @CustomerID
  END
GO
/****** Object:  StoredProcedure [TeamF].[getEduLoanByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[getEduLoanByCustomerID] (@customerID uniqueidentifier,
											@loanID uniqueidentifier output,
											@loanStatus varchar(15) output,
											@amountApplied money output,
											@EMI money output,
											@repaymentPeriod tinyint output)
as			
begin
	if(exists (select * from TeamF.EduLoan where CustomerID=@customerID) )
		begin
			select  @loanID=LoanID,
					@loanStatus = LoanStatus,
					@amountApplied = AmountApplied,
					@EMI = EMI_amount,
					@repaymentPeriod = RepaymentPeriod
			from TeamF.EduLoan
			where CustomerID = @customerID
		end
	else
		throw 50000, 'Customer dont have a car loan',1
end
GO
/****** Object:  StoredProcedure [TeamF].[getEduLoanByLoanID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[getEduLoanByLoanID] (@loanID uniqueidentifier,
											@customerID uniqueidentifier output,
											@loanStatus varchar(15) output,
											@amountApplied money output,
											@EMI money output,
											@repaymentPeriod tinyint output)
as			
begin
	if(exists (select * from TeamF.EduLoan where LoanID=@loanID) )
		begin
			select  @customerID=CustomerID,
					@loanStatus = LoanStatus,
					@amountApplied = AmountApplied,
					@EMI = EMI_amount,
					@repaymentPeriod = RepaymentPeriod
			from TeamF.EduLoan
			where LoanID = @loanID
		end
	else
		throw 50000, 'Loan ID dont exist',1
end
GO
/****** Object:  StoredProcedure [TeamF].[getEduLoanStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[getEduLoanStatus](@loanID uniqueidentifier, @status varchar(15) output)
as
begin
	if(exists (select * from TeamF.EduLoan where LoanID=@loanID))
		select @status=LoanStatus from TeamF.EduLoan where LoanID=@loanID
	else
		throw 50000, 'LoanID dont exist', 1
end
GO
/****** Object:  StoredProcedure [TeamF].[GetEmployeeByEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamF].[GetEmployeeByEmail](@empemail Email)
as
begin
	if @empemail =''
	throw 50004, 'Employee Email cannot be blank',1
	if not exists (select EmployeeEmail from TeamF.Employees where EmployeeEmail = @empemail)
	throw 50004, 'Employee Email not found',1
	else
	begin
	select * into TeamF.#temporary from TeamF.Employees
	alter table TeamF.#temporary drop column EmployeePassword
	select * from TeamF.#temporary where EmployeeEmail = @empemail
	drop table TeamF.#temporary
	end
end
GO
/****** Object:  StoredProcedure [TeamF].[GetEmployeeByEmailandPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamF].[GetEmployeeByEmailandPassword](@empemail Email, @emppassword Password)
as
begin
	if @empemail = '' or @emppassword = ''
	throw 50005, 'Employee Email and Password cannot be blank', 1
	if not exists (select EmployeeEmail, EmployeePassword from TeamF.Employees where EmployeeEmail = @empemail and EmployeePassword = @emppassword)
	throw 50005, 'Employee Email and Password not found',1
	else
	select EmployeeID, EmployeeName, EmployeeEmail, Mobile, CreationDateTime, LastModifiedDateTime,IsActive from TeamF.Employees where EmployeeEmail = @empemail and EmployeePassword = @emppassword
end
GO
/****** Object:  StoredProcedure [TeamF].[GetEmployeeByEmployeeID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamF].[GetEmployeeByEmployeeID](@empid uniqueidentifier)
as
begin
	if @empid = '' or @empid is null
	throw 50002, 'Employee ID cannot be null',1
	if not exists(select EmployeeID from TeamF.Employees where EmployeeID = @empid)
	throw 50002, 'Employee ID not found',1
	else
	begin
	select * into TeamF.#temporary from TeamF.Employees
	alter table TeamF.#temporary drop column EmployeePassword
	select * from TeamF.#temporary where EmployeeID = @empid
	drop table TeamF.#temporary
	end

	--select * from TeamF.Employees where EmployeeID = @empid  
end
GO
/****** Object:  StoredProcedure [TeamF].[GetEmployeeEmailandPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[GetEmployeeEmailandPassword](@empemail Email, @emppassword Password)
as
begin
	if @empemail = '' or @emppassword = ''
	throw 50005, 'Employee Email and Password cannot be blank', 1
	if not exists (select EmployeeEmail, EmployeePassword from TeamF.Employees where EmployeeEmail = @empemail and EmployeePassword = @emppassword)
	throw 50005, 'Employee Email and Password not found',1
	else
	select EmployeeEmail, EmployeePassword from TeamF.Employees where EmployeeEmail = @empemail and EmployeePassword = @emppassword
end
GO
/****** Object:  StoredProcedure [TeamF].[GetEmployeesByName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamF].[GetEmployeesByName](@empname varchar(40))
as
begin
	if @empname = ''
	throw 50003, 'Employee Name cannot be blank',1
	if not exists (select EmployeeName from TeamF.Employees where EmployeeName = @empname)
	throw 50003, 'Employee Name not found',1
	else
	begin
	select * into TeamF.#temporary from TeamF.Employees
	alter table TeamF.#temporary drop column EmployeePassword
	select * from TeamF.#temporary where EmployeeName = @empname
	drop table TeamF.#temporary
	end

end
GO
/****** Object:  StoredProcedure [TeamF].[GetFixedDepositByAccountID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[GetFixedDepositByAccountID](@AccountID uniqueidentifier)
as 
begin

select * from TeamF.FixedDeposit where AccountID = @AccountID;

end
GO
/****** Object:  StoredProcedure [TeamF].[GetFixedDepositByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[GetFixedDepositByCustomerID](@CustomerID uniqueidentifier)
as 
begin

select * from Accounts.FixedDeposit where CustomerID = @CustomerID;

end
GO
/****** Object:  StoredProcedure [TeamF].[getHomeLoanByCustomerID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[getHomeLoanByCustomerID] (@customerID uniqueidentifier,
											@loanID uniqueidentifier output,
											@loanStatus varchar(15) output,
											@amountApplied money output,
											@EMI money output,
											@repaymentPeriod tinyint output)
as			
begin
	if(exists (select * from TeamF.HomeLoan where CustomerID=@customerID) )
		begin
			select  @loanID=LoanID,
					@loanStatus = LoanStatus,
					@amountApplied = AmountApplied,
					@EMI = EMI_amount,
					@repaymentPeriod = RepaymentPeriod
			from TeamF.HomeLoan
			where CustomerID = @customerID
		end
	else
		throw 50000, 'Customer dont have a home loan',1
end
GO
/****** Object:  StoredProcedure [TeamF].[getHomeLoanByLoanID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [TeamF].[getHomeLoanByLoanID] (@loanID uniqueidentifier)
as			
begin
	if(exists (select * from TeamF.HomeLoan where LoanID=@loanID) )
		begin
			select CustomerID,
					LoanStatus,
					AmountApplied,
					EMI_amount,
					RepaymentPeriod
			from TeamF.HomeLoan
			where LoanID = @loanID
		end
	else
		throw 50000, 'Loan ID dont exist',1
end
GO
/****** Object:  StoredProcedure [TeamF].[getHomeLoanStatus]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [TeamF].[getHomeLoanStatus](@loanID uniqueidentifier, @status varchar(15) output)
as
begin
	if(exists (select * from TeamF.HomeLoan where LoanID=@loanID))
		select @status=LoanStatus from TeamF.HomeLoan where LoanID=@loanID
	else
		throw 50000, 'LoanID dont exist', 1
end
GO
/****** Object:  StoredProcedure [TeamF].[GetTransactionsByAccountID]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamF].[GetTransactionsByAccountID](@accountID uniqueidentifier)
as
begin
	if  @accountID = ''		
		throw 500000,'The ID is not in correct format',1;

	else
		select * from TeamF.Transactions where AccountID = @accountID
end
GO
/****** Object:  StoredProcedure [TeamF].[RemoveCustomerDAL]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure   [TeamF].[RemoveCustomerDAL](@CustomerID uniqueidentifier )
  AS
  Begin
  Delete Customer From Customers.Customer
  Where CustomerID = @CustomerID
  END
GO
/****** Object:  StoredProcedure [TeamF].[StoreTransactionRecords]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamF].[StoreTransactionRecords](@accountID uniqueidentifier, @type varchar(6), @amount money, @mode varchar(14), @chequeNumber char(6))
as
begin
	declare @dateofTransaction datetime = SYSDATETIME()
	declare @transactionID uniqueidentifier = newid()
	 
	
	if @amount < 0 or @amount > 50000
			throw 500000,'Enter Correct amount',1;
	if len(ISNULL(@chequeNumber,''))<>6
			throw 500000,'Enter Correct cheque',1;

 begin try
 insert into TeamF.Transactions( TransactionID, AccountID, TypeOfTransaction, Amount, DateOfTransaction,
  Mode, ChequeNumber)
 
 values (@transactionID, @accountID, @type, @amount,  @dateofTransaction ,
            @mode, @chequeNumber )
 end try
 begin catch
	throw;
 end catch
end
GO
/****** Object:  StoredProcedure [TeamF].[UpdateAdminEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[UpdateAdminEmail](@adminID uniqueidentifier, @adminEmail Email)
as
begin
	if isnull(@adminID,'')=''
	throw 50012, 'Admin ID is invalid', 1
	if not exists(select AdminID from TeamF.Admins where AdminID = @adminID)
	throw 50012, 'Admin ID not found',1
	if exists(select AdminEmail from TeamF.Admins where AdminEmail = @adminEmail)
	throw 50012, 'Email already exists', 1
	else
	update TeamF.Admins set AdminEmail = @adminEmail where AdminID = @adminID
end
GO
/****** Object:  StoredProcedure [TeamF].[UpdateAdminNameAndEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [TeamF].[UpdateAdminNameAndEmail](@adminID uniqueidentifier, @adminName varchar(40), @adminEmail Email)
as
begin
	if isnull(@adminID,'')=''
	throw 50012, 'Admin ID is invalid', 1
	if not exists(select AdminID from TeamF.Admins where AdminID = @adminID)
	throw 50012, 'Admin ID not found',1
	if exists(select AdminEmail from TeamF.Admins where AdminEmail = @adminEmail)
	throw 50012, 'Email already exists', 1
	else
	update TeamF.Admins set AdminEmail = @adminEmail,AdminName = @adminName,LastModifiedDateTime = GETDATE() where AdminID = @adminID
end
GO
/****** Object:  StoredProcedure [TeamF].[UpdateAdminPassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[UpdateAdminPassword](@adminID uniqueidentifier, @adminPassword Password)
as
begin
	if isnull(@adminID,'')=''
	throw 50013, 'Admin ID is invalid', 1
	if not exists(select AdminID from TeamF.Admins where AdminID = @adminID)
	throw 50013, 'Admin ID not found',1
	if exists(select AdminPassword from TeamF.Admins where AdminPassword = @adminPassword)
	throw 50012, 'Password already exists', 1
	else
	update TeamF.Admins set AdminPassword = @adminPassword where AdminID = @adminID
end
GO
/****** Object:  StoredProcedure [TeamF].[UpdateAllEmployeeDetails]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[UpdateAllEmployeeDetails](@empid uniqueidentifier, @empname varchar(40), @empemail Email, @emppassword Password, @empmobile char(10))
as
begin
	if isnull(@empid,'')=''
	throw 50006, 'Employee ID is invalid', 1
	if not exists(select EmployeeID from TeamF.Employees where EmployeeID = @empid)
	throw 50006, 'Employee ID not found',1
	if @empname = '' or @empemail ='' or  @emppassword ='' or @empmobile =''
	throw 50006, 'Employee Name, Email, Password and Mobile should be valid', 1
	if exists (select EmployeeEmail from TeamF.Employees where EmployeeEmail = @empemail)
	throw 50006, 'Email already exists',1
	if exists (select Mobile from TeamF.Employees where Mobile = @empmobile)
	throw 50006, 'Mobile number already exists',1
	else
	update TeamF.Employees set EmployeeName = @empname, EmployeeEmail = @empemail, EmployeePassword = @emppassword, Mobile = @empmobile, LastModifiedDateTime = SYSDATETIME() where EmployeeID = @empid
end
GO
/****** Object:  StoredProcedure [TeamF].[UpdateCustomerByCustomerIDDAL]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [TeamF].[UpdateCustomerByCustomerIDDAL](@CustomerID uniqueidentifier,@CustomerName varchar(40),@CustomerAddress varchar(100),@CustomerMobile char(10),@CustomerEmail varchar(40),@CustomerPan char(10),@CustomerAadhaarNumber char(12),@DOB datetime,@CustomerGender varchar(12))
  AS
  BEGIN
  Update TeamF.Customers
  Set CustomerName=@CustomerName,CustomerAddress=@CustomerAddress,CustomerMobile=@CustomerMobile,CustomerEmail=@CustomerEmail,CustomerPan=@CustomerPan,CustomerAadhaarNumber=@CustomerAadhaarNumber,DOB=@DOB,CustomerGender=@CustomerGender
  Where CustomerID =@CustomerID
  END
GO
/****** Object:  StoredProcedure [TeamF].[UpdateEmployeeEmail]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[UpdateEmployeeEmail](@empid uniqueidentifier, @empemail Email)
as
begin
	if isnull(@empid,'')=''
	throw 50008, 'Employee ID is invalid', 1
	if not exists(select EmployeeID from TeamF.Employees where EmployeeID = @empid)
	throw 50008, 'Employee ID not found',1
	if @empemail = '' or @empemail is null
	throw 50008, 'Employee Email cannot be null or blank', 1
	if exists(select EmployeeEmail from TeamF.Employees where EmployeeEmail = @empemail)
	throw 50008, 'Email already exists', 1
	else
	update TeamF.Employees set EmployeeEmail = @empemail, LastModifiedDateTime = SYSDATETIME() where EmployeeID = @empid
end
GO
/****** Object:  StoredProcedure [TeamF].[UpdateEmployeeMobile]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[UpdateEmployeeMobile](@empid uniqueidentifier, @empmobile char(10))
as
begin
	if isnull(@empid,'')=''
	throw 50010, 'Employee ID is invalid', 1
	if not exists(select EmployeeID from TeamF.Employees where EmployeeID = @empid)
	throw 50010, 'Employee ID not found',1
	if @empmobile is null or @empmobile = ''
	throw 50010, 'Employee Mobile cannot be null', 1
	if exists(select Mobile from TeamF.Employees where Mobile = @empmobile)
	throw 50010, 'Mobile Number already exists',1
	else
	update TeamF.Employees set Mobile = @empmobile, LastModifiedDateTime = SYSDATETIME() where EmployeeID = @empid
end
GO
/****** Object:  StoredProcedure [TeamF].[UpdateEmployeeName]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[UpdateEmployeeName](@empid uniqueidentifier, @empname varchar(40))
as
begin
	if isnull(@empid,'')=''
	throw 50007, 'Employee ID is invalid', 1
	if not exists(select EmployeeID from TeamF.Employees where EmployeeID = @empid)
	throw 50007, 'Employee ID not found',1
	if @empname = ''
	throw 50007, 'Employee Name cannot be blank', 1
	else
	update TeamF.Employees set EmployeeName = @empname, LastModifiedDateTime = SYSDATETIME() where EmployeeID = @empid
end
GO
/****** Object:  StoredProcedure [TeamF].[UpdateEmployeePassword]    Script Date: 19-10-2019 18:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [TeamF].[UpdateEmployeePassword](@empid uniqueidentifier, @emppassword Password)
as
begin
	if isnull(@empid,'')=''
	throw 50009, 'Employee ID is invalid', 1
	if not exists(select EmployeeID from TeamF.Employees where EmployeeID = @empid)
	throw 50009, 'Employee ID not found',1
	if @emppassword is null or @emppassword = '' 
	throw 50009, 'Employee Password cannot be null or blank', 1
	else
	if exists (select EmployeePassword from TeamF.Employees where EmployeePassword = @emppassword)
	throw 50009, 'Password already exists', 1
	update TeamF.Employees set EmployeePassword = @emppassword, LastModifiedDateTime = SYSDATETIME() where EmployeeID = @empid
end
GO
USE [master]
GO
ALTER DATABASE [13th Aug CLoud PT Immersive] SET  READ_WRITE 
GO
