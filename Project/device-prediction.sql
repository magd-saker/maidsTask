USE [master]
GO
/****** Object:  Database [device_prediction]    Script Date: 7/18/2024 1:50:42 PM ******/
CREATE DATABASE [device_prediction]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'device_prediction', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\device_prediction.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'device_prediction_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\device_prediction_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [device_prediction] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [device_prediction].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [device_prediction] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [device_prediction] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [device_prediction] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [device_prediction] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [device_prediction] SET ARITHABORT OFF 
GO
ALTER DATABASE [device_prediction] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [device_prediction] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [device_prediction] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [device_prediction] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [device_prediction] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [device_prediction] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [device_prediction] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [device_prediction] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [device_prediction] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [device_prediction] SET  DISABLE_BROKER 
GO
ALTER DATABASE [device_prediction] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [device_prediction] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [device_prediction] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [device_prediction] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [device_prediction] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [device_prediction] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [device_prediction] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [device_prediction] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [device_prediction] SET  MULTI_USER 
GO
ALTER DATABASE [device_prediction] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [device_prediction] SET DB_CHAINING OFF 
GO
ALTER DATABASE [device_prediction] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [device_prediction] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [device_prediction] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [device_prediction] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [device_prediction] SET QUERY_STORE = ON
GO
ALTER DATABASE [device_prediction] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [device_prediction]
GO
/****** Object:  Table [dbo].[device]    Script Date: 7/18/2024 1:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[device](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[brand] [nvarchar](255) NULL,
	[battery_power] [int] NULL,
	[blue] [bit] NULL,
	[clock_speed] [float] NULL,
	[dual_sim] [bit] NULL,
	[fc] [int] NULL,
	[four_g] [bit] NULL,
	[int_memory] [int] NULL,
	[m_dep] [float] NULL,
	[mobile_wt] [int] NULL,
	[n_cores] [int] NULL,
	[pc] [int] NULL,
	[px_height] [int] NULL,
	[px_width] [int] NULL,
	[ram] [int] NULL,
	[sc_h] [int] NULL,
	[sc_w] [int] NULL,
	[talk_time] [int] NULL,
	[three_g] [bit] NULL,
	[touch_screen] [bit] NULL,
	[wifi] [bit] NULL,
	[price_range] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[device] ON 

INSERT [dbo].[device] ([id], [name], [brand], [battery_power], [blue], [clock_speed], [dual_sim], [fc], [four_g], [int_memory], [m_dep], [mobile_wt], [n_cores], [pc], [px_height], [px_width], [ram], [sc_h], [sc_w], [talk_time], [three_g], [touch_screen], [wifi], [price_range]) VALUES (1, NULL, NULL, 1043, 1, 1.8, 1, 14, 0, 5, 0.1, 193, 3, 16, 226, 1412, 3476, 12, 7, 2, 0, 1, 0, 3)
INSERT [dbo].[device] ([id], [name], [brand], [battery_power], [blue], [clock_speed], [dual_sim], [fc], [four_g], [int_memory], [m_dep], [mobile_wt], [n_cores], [pc], [px_height], [px_width], [ram], [sc_h], [sc_w], [talk_time], [three_g], [touch_screen], [wifi], [price_range]) VALUES (2, NULL, NULL, 841, 1, 0.5, 1, 4, 1, 61, 0.8, 191, 5, 12, 746, 857, 3895, 6, 0, 7, 1, 0, 0, NULL)
INSERT [dbo].[device] ([id], [name], [brand], [battery_power], [blue], [clock_speed], [dual_sim], [fc], [four_g], [int_memory], [m_dep], [mobile_wt], [n_cores], [pc], [px_height], [px_width], [ram], [sc_h], [sc_w], [talk_time], [three_g], [touch_screen], [wifi], [price_range]) VALUES (3, NULL, NULL, 1807, 1, 2.8, 0, 1, 0, 27, 0.9, 186, 3, 4, 1270, 1366, 2396, 17, 10, 10, 0, 1, 1, NULL)
INSERT [dbo].[device] ([id], [name], [brand], [battery_power], [blue], [clock_speed], [dual_sim], [fc], [four_g], [int_memory], [m_dep], [mobile_wt], [n_cores], [pc], [px_height], [px_width], [ram], [sc_h], [sc_w], [talk_time], [three_g], [touch_screen], [wifi], [price_range]) VALUES (4, NULL, NULL, 1546, 0, 0.5, 1, 18, 1, 25, 0.5, 96, 8, 20, 295, 1752, 3893, 10, 0, 7, 1, 1, 0, NULL)
INSERT [dbo].[device] ([id], [name], [brand], [battery_power], [blue], [clock_speed], [dual_sim], [fc], [four_g], [int_memory], [m_dep], [mobile_wt], [n_cores], [pc], [px_height], [px_width], [ram], [sc_h], [sc_w], [talk_time], [three_g], [touch_screen], [wifi], [price_range]) VALUES (5, NULL, NULL, 1434, 0, 1.4, 0, 11, 1, 49, 0.5, 108, 6, 18, 749, 810, 1773, 15, 8, 7, 1, 0, 1, NULL)
INSERT [dbo].[device] ([id], [name], [brand], [battery_power], [blue], [clock_speed], [dual_sim], [fc], [four_g], [int_memory], [m_dep], [mobile_wt], [n_cores], [pc], [px_height], [px_width], [ram], [sc_h], [sc_w], [talk_time], [three_g], [touch_screen], [wifi], [price_range]) VALUES (6, NULL, NULL, 1464, 1, 2.9, 1, 5, 1, 50, 0.8, 198, 8, 9, 569, 939, 3506, 10, 7, 3, 1, 1, 1, NULL)
INSERT [dbo].[device] ([id], [name], [brand], [battery_power], [blue], [clock_speed], [dual_sim], [fc], [four_g], [int_memory], [m_dep], [mobile_wt], [n_cores], [pc], [px_height], [px_width], [ram], [sc_h], [sc_w], [talk_time], [three_g], [touch_screen], [wifi], [price_range]) VALUES (7, NULL, NULL, 1718, 0, 2.4, 0, 1, 0, 47, 1, 156, 2, 3, 1283, 1374, 3873, 14, 2, 10, 0, 0, 0, NULL)
INSERT [dbo].[device] ([id], [name], [brand], [battery_power], [blue], [clock_speed], [dual_sim], [fc], [four_g], [int_memory], [m_dep], [mobile_wt], [n_cores], [pc], [px_height], [px_width], [ram], [sc_h], [sc_w], [talk_time], [three_g], [touch_screen], [wifi], [price_range]) VALUES (8, NULL, NULL, 833, 0, 2.4, 1, 0, 0, 62, 0.8, 111, 1, 2, 1312, 1880, 1495, 7, 2, 18, 0, 1, 1, NULL)
INSERT [dbo].[device] ([id], [name], [brand], [battery_power], [blue], [clock_speed], [dual_sim], [fc], [four_g], [int_memory], [m_dep], [mobile_wt], [n_cores], [pc], [px_height], [px_width], [ram], [sc_h], [sc_w], [talk_time], [three_g], [touch_screen], [wifi], [price_range]) VALUES (9, NULL, NULL, 1111, 1, 2.9, 1, 9, 1, 25, 0.6, 101, 5, 19, 556, 876, 3485, 11, 9, 10, 1, 1, 0, NULL)
INSERT [dbo].[device] ([id], [name], [brand], [battery_power], [blue], [clock_speed], [dual_sim], [fc], [four_g], [int_memory], [m_dep], [mobile_wt], [n_cores], [pc], [px_height], [px_width], [ram], [sc_h], [sc_w], [talk_time], [three_g], [touch_screen], [wifi], [price_range]) VALUES (10, NULL, NULL, 1520, 0, 0.5, 0, 1, 0, 25, 0.5, 171, 3, 20, 52, 1009, 651, 6, 0, 5, 1, 0, 1, NULL)
INSERT [dbo].[device] ([id], [name], [brand], [battery_power], [blue], [clock_speed], [dual_sim], [fc], [four_g], [int_memory], [m_dep], [mobile_wt], [n_cores], [pc], [px_height], [px_width], [ram], [sc_h], [sc_w], [talk_time], [three_g], [touch_screen], [wifi], [price_range]) VALUES (11, NULL, NULL, 2000, 1, 2, 1, 8, 1, 64, 0, 150, 0, 12, 1920, 1080, 4096, 6, 4, 15, 1, 1, 1, 2)
INSERT [dbo].[device] ([id], [name], [brand], [battery_power], [blue], [clock_speed], [dual_sim], [fc], [four_g], [int_memory], [m_dep], [mobile_wt], [n_cores], [pc], [px_height], [px_width], [ram], [sc_h], [sc_w], [talk_time], [three_g], [touch_screen], [wifi], [price_range]) VALUES (12, NULL, NULL, 2100, 1, 2, 1, 8, 1, 64, 0, 150, 0, 12, 1920, 1080, 4096, 6, 4, 15, 1, 1, 1, 3)
SET IDENTITY_INSERT [dbo].[device] OFF
GO
USE [master]
GO
ALTER DATABASE [device_prediction] SET  READ_WRITE 
GO
