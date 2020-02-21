/******Start of Patching data******/
USE [master]
GO

/****** Object:  Database [SCCM_PBI_Reporting] ******/
CREATE DATABASE [SCCM_PBI_Reporting]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SCCM_PBI_Reporting', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SCCM_PBI_Reporting.mdf' , SIZE = 5242880KB , MAXSIZE = UNLIMITED, FILEGROWTH = 2%)
 LOG ON 
( NAME = N'SCCM_PBI_Reporting_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SCCM_PBI_Reporting_log.ldf' , SIZE = 532480KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SCCM_PBI_Reporting].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET ANSI_NULLS ON 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET ANSI_PADDING ON 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET ANSI_WARNINGS ON 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET ARITHABORT ON 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET CONCAT_NULL_YIELDS_NULL ON 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET QUOTED_IDENTIFIER ON 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET RECURSIVE_TRIGGERS ON 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET  ENABLE_BROKER 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET TRUSTWORTHY ON 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET READ_COMMITTED_SNAPSHOT ON 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET HONOR_BROKER_PRIORITY ON 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET  MULTI_USER 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET DB_CHAINING OFF 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET QUERY_STORE = OFF
GO

USE [SCCM_PBI_Reporting]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE [SCCM_PBI_Reporting] SET  READ_WRITE 
GO



/****** Object:  Table [dbo].[ust_UpdateReport_Servers] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_UpdateReport_Servers](
	[UpdateName] [nvarchar](513) NULL,
	[Status] [nvarchar](255) NOT NULL,
	[ResourceID] [int] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ust_UpdateReport_Workstations]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_UpdateReport_Workstations](
	[UpdateName] [nvarchar](513) NULL,
	[Status] [nvarchar](255) NOT NULL,
	[ResourceID] [int] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ust_UpdateReport_Other] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_UpdateReport_Other](
	[UpdateName] [nvarchar](513) NULL,
	[Status] [nvarchar](255) NOT NULL,
	[ResourceID] [int] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ust_WUStat_Servers] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_WUStat_Servers](
	[Collection_Name] [nvarchar](255) NOT NULL,
	[UpdateName] [nvarchar](513) NULL,
	[Total] [int] NULL,
	[Status] [nvarchar](255) NOT NULL,
	[SystemName] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ust_WUStat_Workstations]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_WUStat_Workstations](
	[Collection_Name] [nvarchar](255) NOT NULL,
	[UpdateName] [nvarchar](513) NULL,
	[Total] [int] NULL,
	[Status] [nvarchar](255) NOT NULL,
	[SystemName] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[ust_WUStat_Other]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_WUStat_Other](
	[Collection_Name] [nvarchar](255) NOT NULL,
	[UpdateName] [nvarchar](513) NULL,
	[Total] [int] NULL,
	[Status] [nvarchar](255) NOT NULL,
	[SystemName] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO

--Creates procedure for workstations
USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].usp_PBI_SoftwareUpdates_byCollections_Workstations AS
BEGIN

truncate table [SCCM_PBI_Reporting].dbo.ust_UpdateReport_Workstations
truncate table [SCCM_PBI_Reporting].dbo.ust_WUStat_Workstations

Insert into [SCCM_PBI_Reporting].dbo.ust_UpdateReport_Workstations
select distinct
       vui.Title UpdateName,
       vsn.StateName Status,
       vuc.ResourceID
from  [CM_Nov].dbo.v_UpdateState_Combined vuc
join [CM_Nov].dbo.v_CIAssignmentToCI vCIA
       on vCIA.CI_ID = vuc.CI_ID
join [CM_Nov].dbo.v_UpdateInfo vUI
       on vCIA.CI_ID = vUI.CI_ID
join [CM_Nov].dbo.v_StateNames vSN
       on vSN.StateID = vuc.StateID and vsn.TopicType =vuc.StateType
--This is where you would add the title of the update if you want them filtered.
where 
       vui.title like '%Windows 10%' and
	   vui.title not like '%Windows Server%'


Insert Into [SCCM_PBI_Reporting].dbo.ust_WUStat_Workstations
select
	vC.Name,
    uur.UpdateName,
    Count(uur.UpdateName) Total,
    uur.Status,
	vFCM.Name SystemName
from [CM_Nov].dbo.v_r_system vrs
join ust_UpdateReport_Workstations uur
	on vrs.ResourceID = uur.ResourceID
join [CM_Nov].dbo.v_FullCollectionMembership vFCM
	on vFCM.ResourceID = vrs.ResourceID
join [CM_Nov].dbo.v_Collection vC
	on vC.CollectionID = vFCM.CollectionID
where vrs.client0 = 1
       and vrs.Operating_System_Name_and0 like '%Workstation%'
	   and vFCM.CollectionID in ('NOV00015')
group by
	vC.Name,
    uur.UpdateName,
    uur.status,
	vfcm.name
order by
	vC.Name,
	UpdateName

Select * from [SCCM_PBI_Reporting].dbo.ust_WUStat_Workstations



	SET NOCOUNT ON;

END
GO

--Creates procedure for server collections
USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE dbo.usp_PBI_SoftwareUpdates_byCollections_Servers AS
BEGIN

truncate table [SCCM_PBI_Reporting].dbo.ust_UpdateReport_Servers
truncate table [SCCM_PBI_Reporting].dbo.ust_WUStat_Servers

Insert into [SCCM_PBI_Reporting].dbo.ust_UpdateReport_Servers
select distinct
       vui.Title UpdateName,
       vsn.StateName Status,
       vuc.ResourceID
from [CM_Nov].dbo.v_UpdateState_Combined vuc
join [CM_Nov].dbo.v_CIAssignmentToCI vCIA
       on vCIA.CI_ID = vuc.CI_ID
join [CM_Nov].dbo.v_UpdateInfo vUI
       on vCIA.CI_ID = vUI.CI_ID
join [CM_Nov].dbo.v_StateNames vSN
       on vSN.StateID = vuc.StateID and vsn.TopicType =vuc.StateType
--This is where you would add the title of the update if you want them filtered.
where 
       vui.title like '%Server%'

Insert Into [SCCM_PBI_Reporting].dbo.ust_WUStat_Servers
select
	vC.Name,
    uur.UpdateName,
    Count(uur.UpdateName) Total,
    uur.Status,
	vfcm.Name SystemName
from [CM_Nov].dbo.v_r_system vrs
join ust_UpdateReport_Servers uur
	on vrs.ResourceID = uur.ResourceID
join [CM_Nov].dbo.v_FullCollectionMembership vFCM
	on vFCM.ResourceID = vrs.ResourceID
join [CM_Nov].dbo.v_Collection vC
	on vC.CollectionID = vFCM.CollectionID
where vrs.client0 = 1
       and vrs.Operating_System_Name_and0 like '%Server%'
	   and vFCM.CollectionID in ('NOV00016')
group by
	vC.Name,
    uur.UpdateName,
    uur.status,
	vfcm.name
order by
	vC.Name,
	UpdateName

Select * from [SCCM_PBI_Reporting].dbo.ust_WUStat_Servers

	SET NOCOUNT ON;

END
GO

--Creates procedure for Other collections
USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE dbo.usp_PBI_SoftwareUpdates_byCollections_Other AS
BEGIN

truncate table [SCCM_PBI_Reporting].dbo.ust_UpdateReport_Other
truncate table [SCCM_PBI_Reporting].dbo.ust_WUStat_Other

Insert into ust_UpdateReport_Other
select distinct
       vui.Title UpdateName,
       vsn.StateName Status,
       vuc.ResourceID
from [CM_Nov].dbo.v_UpdateState_Combined vuc
join [CM_Nov].dbo.v_CIAssignmentToCI vCIA
       on vCIA.CI_ID = vuc.CI_ID
join [CM_Nov].dbo.v_UpdateInfo vUI
       on vCIA.CI_ID = vUI.CI_ID
join [CM_Nov].dbo.v_StateNames vSN
       on vSN.StateID = vuc.StateID and vsn.TopicType =vuc.StateType
--This is where you would add the title of the update if you want them filtered.
where 
       (vui.title not like '%Server%' and
	   vui.title not like '%Windows 10%') 

Insert Into [SCCM_PBI_Reporting].dbo.ust_WUStat_Other
select
	vC.Name,
    uur.UpdateName,
    Count(uur.UpdateName) Total,
    uur.Status,
	vfcm.Name SystemName
from [CM_Nov].dbo.v_r_system vrs
join ust_UpdateReport_Other uur
	on vrs.ResourceID = uur.ResourceID
join [CM_Nov].dbo.v_FullCollectionMembership vFCM
	on vFCM.ResourceID = vrs.ResourceID
join [CM_Nov].dbo.v_Collection vC
	on vC.CollectionID = vFCM.CollectionID
where vrs.client0 = 1
	   and vFCM.CollectionID in ('SMSDM003')
group by
	vC.Name,
    uur.UpdateName,
    uur.status,
	vfcm.name
order by
	vC.Name,
	UpdateName

Select * from [SCCM_PBI_Reporting].dbo.ust_WUStat_Other

	SET NOCOUNT ON;

END
GO

exec [SCCM_PBI_Reporting].dbo.usp_PBI_SoftwareUpdates_byCollections_Workstations
exec [SCCM_PBI_Reporting].dbo.usp_PBI_SoftwareUpdates_byCollections_Servers
exec [SCCM_PBI_Reporting].dbo.usp_PBI_SoftwareUpdates_byCollections_Other

/******End of Patching data******/


/******Start of Client Health******/
/****** Object:  Table [dbo].[ust_clientHealth]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_clientHealth]
(
	[Name0] [nvarchar](255) NULL,
	[Client_Version0] [nvarchar](255) NULL,
	[ClientActiveStatus] [int]  NULL,
	[LastEvaluationHealthy] [int] NULL,
	[LastPolicyRequest] [datetime] NULL,
	[LastPolicyRequestStatus] [nvarchar](255) NULL,
	[LastDDR] [datetime] NULL,
	[LastDDRStatus] [nvarchar](255) NULL,
	[LastActiveTime] [datetime] NULL,
	[LastActiveTimeStatus] [nvarchar](255) NULL,
	[LastHW] [datetime] NULL,
	[LastHWStatus] [nvarchar](255) NULL,
	[LastSW] [datetime] NULL,
	[LastSWStatus] [nvarchar](255) NULL,
	[LastHealthEvaluation] [datetime] NULL,
	[LastHealthEvaluationStatus] [nvarchar](255) NULL,
) ON [PRIMARY]
GO

USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creates Stored Procedure on PBI Reporting Database
CREATE PROCEDURE dbo.usp_clientHealth
AS
BEGIN

truncate table [SCCM_PBI_Reporting].dbo.[ust_clientHealth]

Insert into [SCCM_PBI_Reporting].dbo.[ust_clientHealth]
Select 
	vrs.Name0, 
	vrs.Client_Version0,
	vcc.ClientActiveStatus,
	vcc.LastEvaluationHealthy,
	max(vcc.LastPolicyRequest) as LastPolicyRequest,
	case
			when vcc.LastPolicyRequest > getdate()-110 then 'Healthy'
		else 'Unhealthy'
	end as LastPolicyRequestStatus,
	max(vcc.LastDDR) as LastDDR,
	case
			when vcc.LastDDR > getdate()-110 then 'Healthy'
		else 'Unhealthy'
	end as LastDDRStatus,
	max(vcc.LastActiveTime) as LastActiveTime,
	case
			when vcc.LastActiveTime > getdate()-110 then 'Healthy'
		else 'Unhealthy'
	end as LastActiveTimeStatus,
	max(vcc.LastHW) as LastHW,
	case
			when vcc.LastHW > getdate()-110 then 'Healthy'
		else 'Unhealthy'
	end as LastHWStatus,
	max(vcc.LastSW) as LastSW,
	case
			when vcc.LastSW > getdate()-110 then 'Healthy'
		else 'Unhealthy'
	end as LastSWStatus,
	max(vcc.LastHealthEvaluation) as LastHealthEvaluation,
	case
			when vcc.LastHealthEvaluation > getdate()-110 then 'Healthy'
		else 'Unhealthy'
	end as LastHealthEvaluationStatus
from [CM_NOV].dbo.[v_r_system] vrs
join [CM_Nov].dbo.[v_CH_ClientHealth] vcc
	on vrs.ResourceID = vcc.MachineID
where 
	vrs.Client0 = 1
group by
	vrs.name0,
	vrs.Active0,
	vrs.Client0,
	vrs.Client_Version0,
	vcc.ClientActiveStatus,
	vcc.LastEvaluationHealthy,
	vcc.LastPolicyRequest,
	vcc.LastDDR,
	vcc.LastActiveTime,
	vcc.LastHW,
	vcc.LastSW,
	vcc.LastHealthEvaluation

Select * from [SCCM_PBI_Reporting].dbo.[ust_clientHealth]

SET NOCOUNT ON;

END
GO

exec [SCCM_PBI_Reporting].dbo.usp_clientHealth
/******End of Client Health******/

/******Start of Installed Server Roles******/
/****** Object:  Table [dbo].[ust_installedserverroles]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_installedserverroles]
(
	[Server_Name] [nvarchar](255) NULL,
	[Server_Roles_Installed] [nvarchar](255) NULL,
) ON [PRIMARY]
GO

USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_installedserverroles
AS
BEGIN
truncate table [SCCM_PBI_Reporting].dbo.ust_installedserverroles

Insert into [SCCM_PBI_Reporting].dbo.ust_installedserverroles
select
	Netbios_Name0,
	ConfigurationItemName
from [CM_NOV].dbo.v_CIComplianceStatusDetail a
where ConfigurationItemName in(
	select distinct displayname
	from [CM_NOV].dbo.v_LocalizedCIProperties
	where displayname in ('Branchcache for Network Files',
		'Active Directory Certificate Services',
		'Active Directory Domain Services',
		'Active Directory Federation Services',
		'Active Directory Rights Management Services',
		'Data Deduplication',
		'Device Health Attestation',
		'DFS Namespaces',
		'DFS Replication',
		'DHCP Server',
		'DNS Server',
		'Fax Server',
		'File Server',
		'File Server Resource Manager',
		'File Server VSS Agent Service',
		'Host Guardian Service',
		'Hyper-V',
		'iSCSI Target Server',
		'iSCSI Target Storage Provider (VDS and VSS hardware providers)',
		'Network Controller',
		'Network Policy and Access Services',
		'Print and Document Services',
		'Remote Access',
		'Remote Desktop Services',
		'Server for NFS',
		'Storage Services',
		'Volume Activation Service',
		'Web Server (IIS)',
		'Windows Deployment Services',
		'Windows Server Update Services',
		'Work Folders')
	)
order by Netbios_Name0

Select * from [SCCM_PBI_Reporting].dbo.ust_installedserverroles

SET NOCOUNT ON;
END
GO

exec [SCCM_PBI_Reporting].dbo.usp_installedserverroles
/******End of Installed Server Roles******/

/******Start of Installed SCCM Roles******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_installedsccmroles]
(
	[SCCM_Server] [nvarchar](255) NULL,
	[SCCM_Roles_Installed] [nvarchar](255) NULL,
) ON [PRIMARY]
GO

USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_installedsccmroles
AS
BEGIN
truncate table [SCCM_PBI_Reporting].dbo.ust_installedsccmroles

Insert into [SCCM_PBI_Reporting].dbo.ust_installedsccmroles
select Distinct
Replace(Left(SiteSystem,CHARINDEX('\"]MSWNET:["SMS_SITE=NOV"]\\',SiteSystem)-1),'["Display=\\',''),
       Role
from [CM_NOV].dbo.V_sitesystemSummarizer


Select * from [SCCM_PBI_Reporting].dbo.ust_installedsccmroles

SET NOCOUNT ON;
END
GO

exec [SCCM_PBI_Reporting].dbo.usp_installedsccmroles
/******End of Installed SCCM Roles******/

--Uninstall SCCM PBI_Reporting database
/*
--Sets database to single user mode so it drops all other connections
USE [master]
GO
ALTER DATABASE [SCCM_PBI_Reporting] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO

--Deletes the database from SQL Server
Drop database [SCCM_PBI_Reporting]
*/