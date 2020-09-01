/******Start of Patching data******/
USE [master]
GO

/****** Object:  Database [MECM_PBI_Reporting] ******/
CREATE DATABASE [MECM_PBI_Reporting]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MECM_PBI_Reporting', FILENAME = N'C:\SQLData\DATA\MECM_PBI_Reporting.mdf' , SIZE = 5242880KB , MAXSIZE = UNLIMITED, FILEGROWTH = 2%)
 LOG ON 
( NAME = N'MECM_PBI_Reporting_log', FILENAME = N'C:\SQLData\LOG\MECM_PBI_Reporting_log.ldf' , SIZE = 532480KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [MECM_PBI_Reporting] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MECM_PBI_Reporting].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [MECM_PBI_Reporting] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET ANSI_NULLS ON 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET ANSI_PADDING ON 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET ANSI_WARNINGS ON 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET ARITHABORT ON 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET CONCAT_NULL_YIELDS_NULL ON 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET QUOTED_IDENTIFIER ON 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET RECURSIVE_TRIGGERS ON 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET  ENABLE_BROKER 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET TRUSTWORTHY ON 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET READ_COMMITTED_SNAPSHOT ON 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET HONOR_BROKER_PRIORITY ON 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET  MULTI_USER 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [MECM_PBI_Reporting] SET DB_CHAINING OFF 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [MECM_PBI_Reporting] SET QUERY_STORE = OFF
GO

USE [MECM_PBI_Reporting]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE [MECM_PBI_Reporting] SET  READ_WRITE 
GO



/****** Object:  Table [dbo].[ust_UpdateReport_Servers] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_UpdateReport_Servers](
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

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_UpdateReport_Workstations](
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

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_UpdateReport_Other](
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

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_WUStat_Servers](
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

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_WUStat_Workstations](
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

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_WUStat_Other](
	[Collection_Name] [nvarchar](255) NOT NULL,
	[UpdateName] [nvarchar](513) NULL,
	[Total] [int] NULL,
	[Status] [nvarchar](255) NOT NULL,
	[SystemName] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO

--Creates procedure for workstations
USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].usp_PBI_SoftwareUpdates_byCollections_Workstations AS
BEGIN

truncate table [MECM_PBI_Reporting].dbo.ust_UpdateReport_Workstations
truncate table [MECM_PBI_Reporting].dbo.ust_WUStat_Workstations

Insert into [MECM_PBI_Reporting].dbo.ust_UpdateReport_Workstations
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


Insert Into [MECM_PBI_Reporting].dbo.ust_WUStat_Workstations
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
	   and vFCM.CollectionID in ('NOV00017')
group by
	vC.Name,
    uur.UpdateName,
    uur.status,
	vfcm.name
order by
	vC.Name,
	UpdateName

Select * from [MECM_PBI_Reporting].dbo.ust_WUStat_Workstations



	SET NOCOUNT ON;

END
GO

--Creates procedure for server collections
USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE dbo.usp_PBI_SoftwareUpdates_byCollections_Servers AS
BEGIN

truncate table [MECM_PBI_Reporting].dbo.ust_UpdateReport_Servers
truncate table [MECM_PBI_Reporting].dbo.ust_WUStat_Servers

Insert into [MECM_PBI_Reporting].dbo.ust_UpdateReport_Servers
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

Insert Into [MECM_PBI_Reporting].dbo.ust_WUStat_Servers
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
	   and vFCM.CollectionID in ('NOV00015')
group by
	vC.Name,
    uur.UpdateName,
    uur.status,
	vfcm.name
order by
	vC.Name,
	UpdateName

Select * from [MECM_PBI_Reporting].dbo.ust_WUStat_Servers

	SET NOCOUNT ON;

END
GO

--Creates procedure for Other collections
USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE dbo.usp_PBI_SoftwareUpdates_byCollections_Other AS
BEGIN

truncate table [MECM_PBI_Reporting].dbo.ust_UpdateReport_Other
truncate table [MECM_PBI_Reporting].dbo.ust_WUStat_Other

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

Insert Into [MECM_PBI_Reporting].dbo.ust_WUStat_Other
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

Select * from [MECM_PBI_Reporting].dbo.ust_WUStat_Other

	SET NOCOUNT ON;

END
GO

exec [MECM_PBI_Reporting].dbo.usp_PBI_SoftwareUpdates_byCollections_Workstations
exec [MECM_PBI_Reporting].dbo.usp_PBI_SoftwareUpdates_byCollections_Servers
exec [MECM_PBI_Reporting].dbo.usp_PBI_SoftwareUpdates_byCollections_Other

/******End of Patching data******/

/******Start of Client Health******/
/****** Object:  Table [dbo].[ust_clientHealth]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_clientHealth]
(
	[Name0] [nvarchar](255) NULL,
	[Client_Version0] [nvarchar](255) NULL,
	[ClientActiveStatus] [int]  NULL,
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
	[LastHealthEvaluationStatus] [nvarchar](255) NULL
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creates Stored Procedure on PBI Reporting Database
CREATE PROCEDURE dbo.usp_clientHealth
AS
BEGIN

truncate table [MECM_PBI_Reporting].dbo.[ust_clientHealth]

Insert into [MECM_PBI_Reporting].dbo.[ust_clientHealth]
Select 
	vrs.Name0, 
	vrs.Client_Version0,
	vcc.ClientActiveStatus,
	max(vcc.LastPolicyRequest) as LastPolicyRequest,
	case
			when vcc.LastPolicyRequest > getdate()-7 then 'Healthy'
		else 'Unhealthy'
	end as LastPolicyRequestStatus,
	max(vcc.LastDDR) as LastDDR,
	case
			when vcc.LastDDR > getdate()-7 then 'Healthy'
		else 'Unhealthy'
	end as LastDDRStatus,
	max(vcc.LastActiveTime) as LastActiveTime,
	case
			when vcc.LastActiveTime > getdate()-7 then 'Healthy'
		else 'Unhealthy'
	end as LastActiveTimeStatus,
	max(vcc.LastHW) as LastHW,
	case
			when vcc.LastHW > getdate()-7 then 'Healthy'
		else 'Unhealthy'
	end as LastHWStatus,
	max(vcc.LastSW) as LastSW,
	case
			when vcc.LastSW > getdate()-7 then 'Healthy'
		else 'Unhealthy'
	end as LastSWStatus,
	case
			when vcc.LastEvaluationHealthy = 1 then 'Healthy'
		else 'Unhealthy'
	end as LastHealthEvaluationStatus
from [CM_Nov].dbo.[v_r_system] vrs
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
	vcc.LastSW

Select * from [MECM_PBI_Reporting].dbo.[ust_clientHealth]

SET NOCOUNT ON;

END
GO

exec [MECM_PBI_Reporting].dbo.usp_clientHealth
/******End of Client Health******/

/******Start of Installed Server Roles******/
/****** Object:  Table [dbo].[ust_installedserverroles]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_installedserverroles]
(
	[Server_Name] [nvarchar](255) NULL,
	[Server_Roles_Installed] [nvarchar](255) NULL,
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_installedserverroles
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_installedserverroles

Insert into [MECM_PBI_Reporting].dbo.ust_installedserverroles
select
	vrs.name0 as Endpoint,
	gsf.Name0 as ServerFeature
from [CM_Nov].dbo.v_GS_SERVER_FEATURE gsf
join [CM_Nov].dbo.v_r_system vrs
	on gsf.ResourceID = vrs.ResourceID
union
select 
	vrs.name0 as Endpoint,
	gs.DisplayName0 as ServerFeature
from [CM_Nov].dbo.v_GS_SERVICE gs
join [CM_Nov].dbo.v_r_system vrs
	on gs.ResourceID = vrs.ResourceID
where 
	gs.DisplayName0 like '%SQLSERVER%' or
	gs.DisplayName0 like '%Mcafee%' or
	gs.DisplayName0 like '%Defender%'
order by
	vrs.name0,
	[ServerFeature]

Select * from [MECM_PBI_Reporting].dbo.ust_installedserverroles

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_installedserverroles
/******End of Installed Server Roles******/

/******Start of Installed MECM Roles******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_installedMECMroles]
(
	[MECM_Server] [nvarchar](255) NULL,
	[MECM_Roles_Installed] [nvarchar](255) NULL,
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_installedMECMroles
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_installedMECMroles

Insert into [MECM_PBI_Reporting].dbo.ust_installedMECMroles
select Distinct
	Replace(Left(SiteSystem,CHARINDEX('\"]MSWNET:["SMS_SITE=',SiteSystem)-1),'["Display=\\','') as 'MECM_Server',
    Replace(
		Replace(Role,'SMS ',''), 'AI ', '') as 'MECM_Roles_Installed'
from [CM_Nov].dbo.V_sitesystemSummarizer


Select * from [MECM_PBI_Reporting].dbo.ust_installedMECMroles

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_installedMECMroles
/******End of Installed MECM Roles******/

/******Start of OS Versions******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_OSVersions]
(
	[Name] [nvarchar](255) NULL,
	[OSVersion] [nvarchar](255) NULL,
	[OSBuild] [nvarchar](255) NULL
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_OSVersions
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.[ust_OSVersions]

Insert into [MECM_PBI_Reporting].dbo.[ust_OSVersions]
select
	vrs.name0,
	gos.caption0,
	gos.BuildNumber0
from [CM_Nov].dbo.v_R_System vrs
join [CM_Nov].dbo.v_GS_OPERATING_SYSTEM gos
	on vrs.ResourceID = gos.ResourceID


Select * from [MECM_PBI_Reporting].dbo.[ust_OSVersions]

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_OSVersions
/******End of OS Versions******/

/******Start of  SystemSecurity******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_SystemSecurity]
(
	[System] [nvarchar](max) NULL,
	[Make] [nvarchar](max) NULL,
	[Model] [nvarchar](max) NULL,
	[TPM Version] [nvarchar](max) NULL,
	[TPM Enabled] [nvarchar](max) NULL,
	[UEFI Enabled] [nvarchar](max) NULL,
	[Secure Boot] [nvarchar](max) NULL,
	[VBS Status] [nvarchar](max) NULL,
	[Cred Guard Enabled] [nvarchar](max) NULL,
	[Cred Guard Running] [nvarchar](max) NULL,
	[BitLocker Enabled] [nvarchar](max) NULL,
	[LastHWScan] [nvarchar](max) NULL,
	[SHA256 Enabled] [nvarchar](max) NULL
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_SystemSecurity
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.[ust_SystemSecurity]

;with CCCSitemkey (itemkey, LastComplianceMessageTime) as (
	select Distinct itemkey,max(LastComplianceMessageTime)
			from [CM_Nov].dbo.vCICurrentComplianceStatus
			where CI_ID in (Select Distinct CI_ID 
						from [CM_Nov].dbo.v_LocalizedCIProperties 
						where Displayname = 'Dashboard Workstation Configuration Item - SHA256')
			group by itemkey,CI_ID) 


Insert into [MECM_PBI_Reporting].dbo.[ust_SystemSecurity]
SELECT DISTINCT
    Sys.Netbios_Name0 as 'System', 
    CASE
		When CS.Manufacturer0 = 'HP' THEN 'HP'
		When CS.Manufacturer0 = 'Hewlett-Packard' THEN 'HP'
		When CS.Manufacturer0 = 'Dell Inc.' Then 'Dell'
		When CS.Manufacturer0 = 'VMware, Inc.' Then 'VMware'
		When CS.Manufacturer0 = 'Microsoft Corporation' Then 'Microsoft'
		Else CS.Manufacturer0
    END as 'Make',
   CS.Model0 as 'Model', 
    CASE
		When tpm.SpecVersion0 like '1.2%' Then '1.2'
		When tpm.SpecVersion0 like '2.0%' Then '2.0'
		else 'Not Available'
    END as 'TPM Version',
    CASE
		When tpm.IsEnabled_InitialValue0 = '1' Then 'Yes'
		else 'No'
    END as 'TPM Enabled',
    CASE
		When frm.UEFI0 = '0' Then 'BIOS Legacy'
		When frm.UEFI0 = '1' Then 'UEFI'
		Else 'Not Available'
    END as 'UEFI Enabled',
    CASE
		When frm.SecureBoot0 = '0' Then 'Off'
		When frm.SecureBoot0 = '1' Then 'On'
		Else 'Not Available'
    END as 'Secure Boot',
    CASE
		When Cred.VirtualizationBasedSecurityS0 = '0' then 'VBS not enabled'
		When Cred.VirtualizationBasedSecurityS0 = '1' then 'VBS enabled but not running'
		When Cred.VirtualizationBasedSecurityS0 = '2' then 'VBS enabled and running'
        Else 'Not Available'
    END as 'VBS Status',
    CASE
		When Cred.SecurityServicesConfigured0 like '%0%' then 'No'
		When Cred.SecurityServicesConfigured0 like '%1%' then 'Yes'
		Else 'Not Available'
    END as 'Cred Guard Enabled',
    CASE
		When Cred.SecurityServicesRunning0 like '%0%' then 'No'
		When Cred.SecurityServicesRunning0 like '%1%' then 'Yes'
		Else 'Not Available'
    END as 'Cred Guard Running',
    CASE 
		When EV.[DriveLetter0] = 'C:' THEN 'Yes'
		Else 'No'
    END as 'BitLocker Enabled',
    hw.LastHWScan,
	Case
		When CCCS.CompliantRulesCount = 1 then 'Yes'
		Else 'No' 
	End as 'SHA256 Enabled'
FROM 
    [CM_Nov].dbo.v_GS_OPERATING_SYSTEM OS 
    join [CM_Nov].dbo.v_R_System_Valid Sys
		on Sys.resourceid = OS.ResourceID and Operating_System_Name_and0 like '%Workstation%'
    left join [CM_Nov].dbo.v_GS_TPM tpm
		on tpm.ResourceID = Sys.ResourceID
    left join [CM_Nov].dbo.v_GS_ENCRYPTABLE_VOLUME EV
		on EV.ResourceID = Sys.ResourceID and EV.DriveLetter0 = 'c:'
    left join [CM_Nov].dbo.v_GS_COMPUTER_SYSTEM CS
		on CS.ResourceID = Sys.ResourceID
    left join [CM_Nov].dbo.v_GS_FIRMWARE FRM
		on FRM.ResourceID = Sys.ResourceID
    left join [CM_Nov].dbo.v_GS_DEVICE_GUARD Cred	
		on Cred.ResourceID = Sys.ResourceID
    join [CM_Nov].dbo.v_FullCollectionMembership fcm
		on fcm.Resourceid=Sys.Resourceid
    left join [CM_Nov].dbo.v_GS_WORKSTATION_STATUS hw
		on hw.ResourceID=Sys.ResourceID
	join [CM_Nov].dbo.vCICurrentComplianceStatus CCCS
		on Sys.ResourceID=CCCS.ItemKey
	join CCCSitemkey CCCSIK
		on CCCSIK.itemkey = CCCS.ItemKey and CCCSIK.LastComplianceMessageTime = CCCS.LastComplianceMessageTime
where 
	CCCS.CIVersion = (select Distinct max(CIVersion) from [CM_Nov].dbo.vCICurrentComplianceStatus where CI_ID in (Select Distinct CI_ID from [CM_Nov].dbo.v_LocalizedCIProperties where Displayname = 'Dashboard Workstation Configuration Item - SHA256'))

Select * from [MECM_PBI_Reporting].dbo.[ust_SystemSecurity]

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_SystemSecurity

/******End of SystemSecurity******/

/******Start of  Bitlocker******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_BitlockerData]
(
	[System] [nvarchar](max) NULL,
	[Conversion_Status] [nvarchar](max) NULL,
	[Encryption_Method] [nvarchar](max) NULL,
	[Protection_Status] [nvarchar](max) NULL,
	[civersion1] int NULL,
	[civersion2] int NULL,
	[civersion3] int NULL
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_BitlockerData
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.[ust_BitlockerData]

Insert into [MECM_PBI_Reporting].dbo.[ust_BitlockerData]
select
	vrs.name0 as 'System',
	ccsd1.CurrentValue as 'Conversion_Status',
	ccsd2.CurrentValue as 'Encryption_Method',
	ccsd3.CurrentValue as 'Protection_Status',
	max(ccsd1.civersion) 'civersion1',
	max(ccsd2.civersion) 'civersion2',
	max(ccsd3.civersion) 'civersion3'
from [CM_Nov].dbo.v_r_system vrs
join [CM_Nov].dbo.v_CIComplianceStatusDetail ccsd1
	on ccsd1.ResourceID = vrs.ResourceID and ccsd1.ConfigurationItemName = 'Dashboard Workstation Configuration Item - Bitlocker Conversion Status'
join [CM_Nov].dbo.v_CIComplianceStatusDetail ccsd2
	on ccsd2.ResourceID = vrs.ResourceID and ccsd2.ConfigurationItemName = 'Dashboard Workstation Configuration Item - Bitlocker Encryption Method' 
join [CM_Nov].dbo.v_CIComplianceStatusDetail ccsd3
	on ccsd3.ResourceID = vrs.ResourceID and ccsd3.ConfigurationItemName = 'Dashboard Workstation Configuration Item - Bitlocker Protection Status'
group by 
	vrs.name0,
	ccsd1.CurrentValue,
	ccsd2.CurrentValue,
	ccsd3.CurrentValue

Select * from [MECM_PBI_Reporting].dbo.[ust_BitlockerData]

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_BitlockerData

/******End of Bitlocker******/

/****** Object:  Table [dbo].[ust_CollectionsSchedules]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_CollectionsSchedules]
(
	SiteCode [nvarchar](3),
	Name [nvarchar](255) NULL,
	MemberCount int NULL,
	refreshtype [nvarchar](255) NULL,
	LastChangeTime datetime Null,
	LastRefreshTime datetime Null,
	LastMemberChangeTime datetime Null

) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_CollectionsSchedules
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_CollectionsSchedules

Insert into [MECM_PBI_Reporting].dbo.ust_CollectionsSchedules
SELECT LEFT(CollectionID,3) 'SiteCode', 
       Name, 
       MemberCount, 
       CASE refreshtype 
         WHEN 1 THEN 'No Scheduled Update' 
         WHEN 2 THEN 'Full Scheduled Update' 
         WHEN 4 THEN 'Incremental Update (Only)' 
         WHEN 6 THEN 'Incremental and Full Scheduled Update' 
       END AS 'Refresh Type',
	   LastChangeTime,
	   LastRefreshTime,
	   LastMemberChangeTime
FROM   [CM_Nov].dbo.v_Collection
WHERE  CollectionID NOT LIKE 'SMS%'

Select * from [MECM_PBI_Reporting].dbo.ust_CollectionsSchedules

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_CollectionsSchedules
/******End of Collections Schedules******/

/****** Object:  Table [dbo].[ust_CollectionTopModifier]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_CollectionTopModifier]
(
	Total int null,
	Mod nvarchar(max) null

) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_CollectionTopModifier
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_CollectionTopModifier

Insert into [MECM_PBI_Reporting].dbo.ust_CollectionTopModifier
SELECT DISTINCT TOP (1) 
	Count(stat.RecordID) AS Total,
	UPPER(ins.InsStrValue) As Mod                       
FROM [CM_Nov].dbo.v_statusmessage AS stat 
LEFT JOIN [CM_Nov].dbo.v_statmsginsstrings AS ins 
	ON stat.recordid = ins.recordid 
LEFT JOIN [CM_Nov].dbo.v_statmsgattributes AS att1
	ON stat.recordid = att1.recordid 
WHERE
	stat.messagetype = 768 AND
	stat.messageid >= 30015 AND
	stat.messageid <= 30017 AND
	stat.time > DATEADD(DAY, -7, GETDATE()) AND
	ins.InsStrValue LIKE '%\%'
GROUP BY ins.InsStrValue

Select * from [MECM_PBI_Reporting].dbo.ust_CollectionTopModifier

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_CollectionTopModifier
/******End of Collections Top Modifier******/

/****** Object:  Table [dbo].[ust_Collectionsunder10seconds]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_Collectionsunder10seconds]
(
	CollectionID [int], 
	SiteID [nvarchar](8),
	CollectionName [nvarchar](max),
	MemberChanges [int],
	MemberCount [int],
	LastMemberChangeTime [datetime],
	WQL [nvarchar](max),
	SQL [nvarchar](max),
	Current_Status [nvarchar](max),
	Time_Spent_On_Eval [decimal],
	SiteCode [nvarchar](3)
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_Collectionsunder10seconds
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_Collectionsunder10seconds

Insert into [MECM_PBI_Reporting].dbo.ust_Collectionsunder10seconds
Select TOP 100 
	T1.CollectionID, 
	T2.SiteID,
	T2.CollectionName,
	T1.MemberChanges,
	vc.MemberCount,
	vc.LastMemberChangeTime,
	crs.WQL,
	crs.SQL,
	CASE t1.CurrentStatus
		WHEN 0 THEN 'NONE'
		WHEN 1 THEN 'READY'
		WHEN 2 THEN 'REFRESHING'
		WHEN 3 THEN 'SAVING'
		WHEN 4 THEN 'EVALUATING'
		WHEN 5 THEN 'AWAITING REFRESH'
		WHEN 6 THEN 'DELETING'
		WHEN 7 THEN 'APPENDING MEMBER'
		WHEN 8 THEN 'QUERYING'
	END 'Current_Status',
	(CAST(T1.EvaluationLength as float)/1000) as 'Time_Spent_On_Eval',
	SC.SiteCode
FROM [CM_Nov].dbo.Collections_L as T1
INNER JOIN [CM_Nov].dbo.Collections_G as T2
	ON T2.CollectionID = T1.CollectionID
INNER JOIN [CM_Nov].dbo.v_Collections AS vc
	ON vc.CollectionID = T1.CollectionID 
INNER JOIN [CM_Nov].dbo.Collection_Rules_SQL crs
	ON crs.CollectionID = T1.CollectionID
INNER JOIN [CM_Nov].dbo.v_SC_SiteDefinition AS SC
	ON SC.SiteNumber = T1.SiteNumber
WHERE 
	(CAST(T1.EvaluationLength as float)/1000) < 10


Select * from [MECM_PBI_Reporting].dbo.ust_Collectionsunder10seconds

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_Collectionsunder10seconds
/******End of Collections Under 10 Seconds******/


/****** Object:  Table [dbo].[ust_Collectionsbetween10and20seconds]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_Collectionsbetween10and20seconds]
(
	CollectionID [int], 
	SiteID [nvarchar](8),
	CollectionName [nvarchar](max),
	MemberChanges [int],
	MemberCount [int],
	LastMemberChangeTime [datetime],
	WQL [nvarchar](max),
	SQL [nvarchar](max),
	Current_Status [nvarchar](max),
	Time_Spent_On_Eval [decimal],
	SiteCode [nvarchar](3)
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_Collectionsbetween10and20seconds
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_Collectionsbetween10and20seconds

Insert into [MECM_PBI_Reporting].dbo.ust_Collectionsbetween10and20seconds
Select 
	T1.CollectionID, 
	T2.SiteID,
	T2.CollectionName,
	t1.MemberChanges,
	vc.MemberCount,
	vc.LastMemberChangeTime,
	crs.WQL,
	crs.SQL,
	CASE t1.CurrentStatus
		WHEN 0 THEN 'NONE'
		WHEN 1 THEN 'READY'
		WHEN 2 THEN 'REFRESHING'
		WHEN 3 THEN 'SAVING'
		WHEN 4 THEN 'EVALUATING'
		WHEN 5 THEN 'AWAITING REFRESH'
		WHEN 6 THEN 'DELETING'
		WHEN 7 THEN 'APPENDING MEMBER'
		WHEN 8 THEN 'QUERYING'
	END 'Current Status',
	(CAST(T1.EvaluationLength as float)/1000) as 'TimeSpentOnEval',
	SC.SiteCode
FROM [CM_Nov].dbo.Collections_L as T1
INNER JOIN [CM_Nov].dbo.Collections_G as T2 
	ON T2.CollectionID = T1.CollectionID
INNER JOIN [CM_Nov].dbo.v_Collections AS vc 
	ON vc.CollectionID = T1.CollectionID 
INNER JOIN [CM_Nov].dbo.Collection_Rules_SQL crs 
	ON crs.CollectionID = T1.CollectionID
INNER JOIN [CM_Nov].dbo.v_SC_SiteDefinition AS SC 
	ON SC.SiteNumber = T1.SiteNumber
WHERE 
	(CAST(T1.EvaluationLength as float)/1000) BETWEEN 10 AND 20


Select * from [MECM_PBI_Reporting].dbo.ust_Collectionsbetween10and20seconds

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_Collectionsbetween10and20seconds
/******End of Collectionsbetween10and20seconds******/

/****** Object:  Table [dbo].[ust_Collectionsover20seconds]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_Collectionsover20seconds]
(
	CollectionID [int], 
	SiteID [nvarchar](8),
	CollectionName [nvarchar](max),
	MemberChanges [int],
	MemberCount [int],
	LastMemberChangeTime [datetime],
	WQL [nvarchar](max),
	SQL [nvarchar](max),
	Current_Status [nvarchar](max),
	Time_Spent_On_Eval [decimal],
	SiteCode [nvarchar](3)
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_Collectionsover20seconds
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_Collectionsover20seconds

Insert into [MECM_PBI_Reporting].dbo.ust_Collectionsover20seconds
Select 
	T1.CollectionID, 
	T2.SiteID,
	T2.CollectionName,
	t1.MemberChanges,
	vc.MemberCount,
	vc.LastMemberChangeTime,
	crs.WQL,
	crs.SQL,
	CASE t1.CurrentStatus
		WHEN 0 THEN 'NONE'
		WHEN 1 THEN 'READY'
		WHEN 2 THEN 'REFRESHING'
		WHEN 3 THEN 'SAVING'
		WHEN 4 THEN 'EVALUATING'
		WHEN 5 THEN 'AWAITING REFRESH'
		WHEN 6 THEN 'DELETING'
		WHEN 7 THEN 'APPENDING MEMBER'
		WHEN 8 THEN 'QUERYING'
	END 'Current Status',
	(CAST(T1.EvaluationLength as float)/1000) as 'TimeSpentOnEval',
	SC.SiteCode
FROM [CM_Nov].dbo.Collections_L as T1
INNER JOIN [CM_Nov].dbo.Collections_G as T2 
	ON T2.CollectionID = T1.CollectionID
INNER JOIN [CM_Nov].dbo.v_Collections AS vc 
	ON vc.CollectionID = T1.CollectionID 
INNER JOIN [CM_Nov].dbo.Collection_Rules_SQL crs 
	ON crs.CollectionID = T1.CollectionID
INNER JOIN [CM_Nov].dbo.v_SC_SiteDefinition AS SC 
	ON SC.SiteNumber = T1.SiteNumber
WHERE 
	(CAST(T1.EvaluationLength as float)/1000) > 20

Select * from [MECM_PBI_Reporting].dbo.ust_Collectionsover20seconds

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_Collectionsover20seconds
/******End of Collectionsover20seconds******/

/****** Object:  Table [dbo].[ust_hardwareinventoryenabled]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_hardwareinventoryenabled]
(
	ClassName varchar(max),
	InvClassName varchar(max),
	InvHistoryClassName varchar(max)
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_hardwareinventoryenabled
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_hardwareinventoryenabled

Insert into [MECM_PBI_Reporting].dbo.ust_hardwareinventoryenabled
select  Distinct
	IRC.ClassName,
	GM.InvClassName,
	GM.InvHistoryClassName
from [CM_Nov].dbo.v_InventoryReportClass IRC
join [CM_Nov].dbo.v_InventoryClass IC
	on IRC.ClassName = IC.ClassName
join [CM_Nov].dbo.v_GroupMap GM
	on GM.DisplayName = IC.SMSGroupName

Select * from [MECM_PBI_Reporting].dbo.ust_hardwareinventoryenabled

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_hardwareinventoryenabled
/******End of hardwareinventoryenabled******/

/****** Object:  Table [dbo].[ust_customhardwareinventory]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_customhardwareinventory]
(
	Classname varchar(max),
	PropertyName varchar(max),
	SettingName varchar(max),
	CollectionName varchar(max)
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_customhardwareinventory
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_customhardwareinventory

Insert into [MECM_PBI_Reporting].dbo.ust_customhardwareinventory
select     
	IRC.Classname,
    IRC.PropertyName,
    CIR.SettingName,
    C.CollectionName
from [CM_Nov].dbo.v_InventoryReportClass IRC
join [CM_Nov].dbo.v_CustomInventoryReport CIR
    on IRC.InventoryReportID = CIR.InventoryReportID
join [CM_Nov].dbo.Collections C
	on c.SiteID = CIR.CollectionID

Select * from [MECM_PBI_Reporting].dbo.ust_customhardwareinventory

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_customhardwareinventory
/******End of customhardwareinventory******/

/****** Object:  Table [dbo].[ust_baselineanditems]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_baselineanditems]
(
	CollectionName varchar(max),
	[Configuration Baseline] varchar(max),
	[Configuration Item] varchar(max)
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_baselineanditems
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_baselineanditems

Insert into [MECM_PBI_Reporting].dbo.ust_baselineanditems
select distinct
	CollectionName,
	LP.DisplayName as 'Configuration Baseline',
	CI.DisplayName as 'Configuration Item'
from [CM_Nov].dbo.vSMS_BaselineAssignment SBA
join [CM_Nov].dbo.v_CIAssignmentToCI CTC
	on SBA.AssignmentID = CTC.AssignmentID
join [CM_Nov].dbo.v_LocalizedCIProperties LP
	on CTC.CI_ID = LP.CI_ID
join [CM_Nov].dbo.vDCMDeploymentCIs DDC
	on DDC.BL_ID = lp.ci_id
join (
		select distinct
			lcp.DisplayName, 
			sca.CI_ID
		from [CM_Nov].dbo.vSMS_ConfigurationItems_All sca
		join [CM_Nov].dbo.v_LocalizedCIProperties lcp
			on sca.CI_ID = lcp.CI_ID
		where CIType_ID = 3 and inuse = 1) CI
	on CI.CI_ID = ddc.CI_ID
order by 
	CollectionName, LP.DisplayName, CI.DisplayName

Select * from [MECM_PBI_Reporting].dbo.ust_baselineanditems

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_baselineanditems
/******End of baselineanditems******/

/****** Object:  Table [dbo].[ust_MaintenanceTasks]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_MaintenanceTasks]
(
	SiteCode nvarchar(3),
	TaskName varchar(max),
	TaskType int,
	IsEnabled int,
	BeginTime int,
	LatestBeginTime int,
	DeleteOlderThan int,
	DaysOfWeek varchar(max),
	LastStartTime datetime,
	LastCompletionTime datetime,
	CompletionStatus int,
	RunNow int
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_MaintenanceTasks
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_MaintenanceTasks

Insert into [MECM_PBI_Reporting].dbo.ust_MaintenanceTasks
SELECT 
	SiteCode,
	TaskName,
	TaskType,
	IsEnabled,
	BeginTime,
	LatestBeginTime,
	DeleteOlderThan,
	case
		when [DaysOfWeek] = 1 then 'Sunday'
		when [DaysOfWeek] = 2 then 'Monday'
		when [DaysOfWeek] = 4 then 'Tuesday'
		when [DaysOfWeek] = 8 then 'Wednesday'
		when [DaysOfWeek] = 16 then 'Thursday'
		when [DaysOfWeek] = 32 then 'Friday'
		when [DaysOfWeek] = 62 then 'Weekdays'
		when [DaysOfWeek] = 64 then 'Saturday'
		when [DaysOfWeek] = 65 then 'Weekends'
		when [DaysOfWeek] = 127 then 'Daily'
		else 'Custom'
	end as [DaysOfWeek],
	LastStartTime,
	LastCompletionTime,
	CompletionStatus,
	RunNow
FROM CM_Nov.dbo.vSMS_SQLTaskStatus
WHERE IsEnabled= 1

Select * from [MECM_PBI_Reporting].dbo.ust_MaintenanceTasks

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_MaintenanceTasks
/******End of MaintenanceTasks******/

/****** Object:  Table [dbo].[ust_ApplicationDeploymentSummary]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_ApplicationDeploymentSummary]
(
	[Application] varchar(max),
	DeploymentCollection varchar(max),
	CollectionName varchar(max),
	DeploymentTime datetime,
	InProgress int,
	RequirementsNotMet int,
	Success int,
	Error int,
	SuccessRate [decimal]
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_ApplicationDeploymentSummary
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_ApplicationDeploymentSummary

Insert into [MECM_PBI_Reporting].dbo.ust_ApplicationDeploymentSummary
select
	vapp.Descript as 'Application',
	vapp.TargetCollectionID as 'Deployment Collection',
	vc.Name as CollectionName,
	vapp.DeploymentTime,
	vapp.InProgress,
	vapp.RequirementsNotMet,
	vapp.Success,
	vapp.Error,
	CASE
	When vapp.Success > 0 then CAST(Round(((vapp.Success/CAST(vapp.InProgress+vapp.RequirementsNotMet+vapp.Success+vapp.Error as decimal(18,2))) *100) , 2,2) as Decimal(18,2))
	Else 0
	End as 'SuccessRate'
from CM_Nov.dbo.v_AppDeploymentSummary vapp
join CM_Nov.dbo.v_collection vc
	on vc.CollectionID = vapp.TargetCollectionID

Select * from [MECM_PBI_Reporting].dbo.ust_ApplicationDeploymentSummary

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_ApplicationDeploymentSummary
/******End of ApplicationDeploymentSummary******/

/****** Object:  Table [dbo].[ust_SoftwareInventory]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_SoftwareInventory]
(
	SystemName varchar(max),
	Product varchar(max),
	Publisher varchar(max),
	Version nvarchar(max),
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_SoftwareInventory
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_SoftwareInventory

;with AddRemovePrograms (Resourceid, Displayname0, Publisher0, Version0) as
(
select Resourceid, Displayname0, Publisher0, Version0 from CM_Nov.dbo.v_GS_ADD_REMOVE_PROGRAMS
union
select Resourceid, Displayname0, Publisher0, Version0 from CM_Nov.dbo.v_GS_ADD_REMOVE_PROGRAMS_64
)

Insert into [MECM_PBI_Reporting].dbo.ust_SoftwareInventory
select
	vrs.Name0 'SystemName',
	Displayname0 'Product', 
	Publisher0 'Publisher', 
	Version0 'Version'
from AddRemovePrograms arp
join CM_Nov.dbo.v_r_system vrs
	on vrs.ResourceID = arp.Resourceid

Select * from [MECM_PBI_Reporting].dbo.ust_SoftwareInventory

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_SoftwareInventory
/******End of ust_SoftwareInventory******/

/****** Object:  Table [dbo].[ust_HardwareInventory]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MECM_PBI_Reporting].[dbo].[ust_HardwareInventory]
(
	SystemName varchar(Max),
	Manufacturer varchar(Max),
	Model varchar(Max),
	Processor varchar(Max),
	[PhyicalMemory(GB)] int,
	[VirtualMemory(GB)] int,
	DriveType varchar(max),
	DriveLetter varchar(max),
	[Capacity(MB)] int,
	[FreeSpace(MB)] int,
	InstallDate datetime,
	LastBootupTime datetime,
	SerialNumber nvarchar(max),
) ON [PRIMARY]
GO

USE [MECM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_HardwareInventory
AS
BEGIN
truncate table [MECM_PBI_Reporting].dbo.ust_HardwareInventory

Insert into [MECM_PBI_Reporting].dbo.ust_HardwareInventory
select
	vrs.Name0 'SystemName',
	vgcs.Manufacturer0 'Manufacturer',
	vgcs.Model0 'Model',
	vgp.Name0 'Processor',
	isnull((vgcs.TotalPhysicalMemory0)+1,0) 'PhysicalMemory',
	(vgos.TotalVisibleMemorySize0/1024)+1 'VirtualMemory',
	case
		when vgs.DriveType0 = 0 then 'Unknown'
		when vgs.DriveType0 = 1 then 'No Root Directory'
		when vgs.DriveType0 = 2 then 'Removable Disk'
		when vgs.DriveType0 = 3 then 'StorageDrive'
		when vgs.DriveType0 = 4 then 'Network Drive'
		when vgs.DriveType0 = 5 then 'Compact Disc'
		when vgs.DriveType0 = 6 then 'RAM Disk'
		Else 'Unknown'
	end 'DriveType',
	isnull(vgs.DriveLetter0,'None') 'DriveLetter',
	isnull(vgs.Capacity0 ,0) 'Capacity',
	isnull(vgs.FreeSpace0,0) 'FreeSpace',
	vgos.InstallDate0 'InstallDate',
	vgos.LastBootUpTime0 'LastBootupTime',
	vgos.SerialNumber0 'SerialNumber'
from CM_Nov.dbo.v_GS_COMPUTER_SYSTEM vgcs
join CM_Nov.dbo.v_r_system vrs
	on vrs.ResourceID = vgcs.ResourceID
join CM_Nov.dbo.v_GS_PROCESSOR vgp
	on vgcs.ResourceID = vgp.ResourceID
join CM_Nov.dbo.v_GS_OPERATING_SYSTEM vgos
	on vgos.ResourceID = vrs.ResourceID
join CM_Nov.dbo.v_GS_VOLUME vgs
	on vgs.ResourceID = vrs.ResourceID

Select * from [MECM_PBI_Reporting].dbo.ust_HardwareInventory

SET NOCOUNT ON;
END
GO

exec [MECM_PBI_Reporting].dbo.usp_HardwareInventory
/******End of ust_HardwareInventory******/

--Uninstall MECM PBI_Reporting database
/*
--Sets database to single user mode so it drops all other connections
USE [master]
GO
ALTER DATABASE [MECM_PBI_Reporting] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
--Deletes the database from SQL Server
Drop database [MECM_PBI_Reporting]
*/
