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
	   and vFCM.CollectionID in ('NOV00017')
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
	   and vFCM.CollectionID in ('NOV00015')
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
	REPLACE(ConfigurationItemName, 'Installed Server Roles - ', '')
from [CM_Nov].dbo.v_CIComplianceStatusDetail a
where ConfigurationItemName in(
	select distinct displayname
	from [CM_Nov].dbo.v_LocalizedCIProperties
	where displayname like 'Installed Server Roles - %' and DisplayName not in('Installed Server Roles - File Server', 'Installed Server Roles - Storage Services'))
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
Replace(Left(SiteSystem,CHARINDEX('\"]MSWNET:["SMS_SITE=',SiteSystem)-1),'["Display=\\',''),
       Role
from [CM_Nov].dbo.V_sitesystemSummarizer


Select * from [SCCM_PBI_Reporting].dbo.ust_installedsccmroles

SET NOCOUNT ON;
END
GO

exec [SCCM_PBI_Reporting].dbo.usp_installedsccmroles
/******End of Installed SCCM Roles******/

/******Start of OS Versions******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_OSVersions]
(
	[Name] [nvarchar](255) NULL,
	[OSVersion] [nvarchar](255) NULL,
	[OSBuild] [nvarchar](255) NULL
) ON [PRIMARY]
GO

USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_OSVersions
AS
BEGIN
truncate table [SCCM_PBI_Reporting].dbo.[ust_OSVersions]

Insert into [SCCM_PBI_Reporting].dbo.[ust_OSVersions]
select
	vrs.name0,
	gos.caption0,
	gos.BuildNumber0
from [CM_Nov].dbo.v_R_System vrs
join [CM_Nov].dbo.v_GS_OPERATING_SYSTEM gos
	on vrs.ResourceID = gos.ResourceID


Select * from [SCCM_PBI_Reporting].dbo.[ust_OSVersions]

SET NOCOUNT ON;
END
GO

exec [SCCM_PBI_Reporting].dbo.usp_OSVersions
/******End of OS Versions******/

/******Start of  SystemSecurity******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_SystemSecurity]
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

USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_SystemSecurity
AS
BEGIN
truncate table [SCCM_PBI_Reporting].dbo.[ust_SystemSecurity]

Insert into [SCCM_PBI_Reporting].dbo.[ust_SystemSecurity]
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
            When EV.ProtectionStatus0 = 1 THEN 'Yes'
            Else 'No'
    END as 'BitLocker Enabled',
    hw.LastHWScan,
	Case
		When CCCS.CompliantRulesCount = 1 then 'Yes'
		Else 'No' 
	End as 'SHA256 Enabled'
FROM 
    [CM_Nov].dbo.v_GS_OPERATING_SYSTEM OS 
    join [CM_Nov].dbo.v_R_System_Valid Sys on Sys.resourceid = OS.ResourceID and Operating_System_Name_and0 like '%Workstation%'
    left join [CM_Nov].dbo.v_GS_TPM tpm on tpm.ResourceID = Sys.ResourceID
    left join [CM_Nov].dbo.v_GS_ENCRYPTABLE_VOLUME ev on ev.ResourceID = Sys.ResourceID and [PersistentVolumeID0] <> ''
    left join [CM_Nov].dbo.v_GS_COMPUTER_SYSTEM CS on CS.ResourceID = Sys.ResourceID
    left join [CM_Nov].dbo.v_GS_FIRMWARE FRM on FRM.ResourceID = Sys.ResourceID
    left join [CM_Nov].dbo.v_GS_DEVICE_GUARD Cred on Cred.ResourceID = Sys.ResourceID
    join [CM_Nov].dbo.v_FullCollectionMembership fcm on fcm.Resourceid=Sys.Resourceid
    left join [CM_Nov].dbo.v_GS_WORKSTATION_STATUS hw on hw.ResourceID=Sys.ResourceID
	join [CM_Nov].dbo.vCICurrentComplianceStatus CCCS on Sys.ResourceID=CCCS.ItemKey and CCCS.CompliantRulesCount = 1
where 
	CCCS.CIVersion = (select Distinct max(CIVersion) from [CM_Nov].dbo.vCICurrentComplianceStatus where CI_ID in (SELECT CI_ID FROM CM_NOV.dbo.v_CISettings where SettingName = 'TPMDigestAlgID'))

Select * from [SCCM_PBI_Reporting].dbo.[ust_SystemSecurity]

SET NOCOUNT ON;
END
GO

exec [SCCM_PBI_Reporting].dbo.usp_SystemSecurity

/******End of SystemSecurity******/

/******Start of  Bitlocker******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_BitlockerData]
(
	[System] [nvarchar](max) NULL,
	[DriveLetter] [nvarchar](max) NULL,
	[EncryptionMethod] [nvarchar](max) NULL,
	[IsAutoUnlockEnabled] [nvarchar](max) NULL,
	[ProtectionStatus] [nvarchar](max) NULL,
	[Encryption Status] [nvarchar](max) NULL,
	[ConversionStatus] [nvarchar](max) NULL,
	[civersion] int NULL
) ON [PRIMARY]
GO

USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_BitlockerData
AS
BEGIN
truncate table [SCCM_PBI_Reporting].dbo.[ust_BitlockerData]

Insert into [SCCM_PBI_Reporting].dbo.[ust_BitlockerData]
SELECT 
	vrs.name0 'System',
    [DriveLetter0] 'DriveLetter',
    case
		when [EncryptionMethod0] = 0 then 'None'
		when [EncryptionMethod0] = 1 then 'AES_128_WITH_DIFFUSER'
		when [EncryptionMethod0] = 2 then 'AES_256_WITH_DIFFUSER'
		when [EncryptionMethod0] = 3 then 'AES_128'
		when [EncryptionMethod0] = 4 then 'AES 256'
		when [EncryptionMethod0] = 5 then 'HARDWARE_ENCRYPTION'
		when [EncryptionMethod0] = 6 then 'XTS_AES_128'
		when [EncryptionMethod0] = 7 then 'XTS_AES_256'
	else 'Not Available' 
	end as 'EncryptionMethod',
	case
		when [IsAutoUnlockEnabled0] = 0 then 'Disabled'
		when [IsAutoUnlockEnabled0] = 1 then 'Enabled'
	else 'Not Available'
	end as 'IsAutoUnlockEnabled',
    case
		when [ProtectionStatus0] = 0 then 'Protection Off'
		when [ProtectionStatus0] = 1 then 'Protection On'
	else 'Protection Unknown'
	end as 'ProtectionStatus',
	case 
		when [ConversionStatus0] = 0 then 'Fully Decrypted'
		when [ConversionStatus0] = 1 then 'Fully Encrypted'
		when [ConversionStatus0] = 2 then 'Encryption InProgress'
		when [ConversionStatus0] = 3 then 'Decryption InProgress'
		when [ConversionStatus0] = 4 then 'Encryption Paused'
		when [ConversionStatus0] = 5 then 'Decryption Paused'
	else 'Encryption Unknown'
	end as 'Encryption Status',
	case
		when CCSD.CurrentValue = 'Used Space Only Encrypted' then 'Used Space Only Encrypted'
		when CCSD.CurrentValue = 'Fully Encrypted' then 'Fully Encrypted' 
	else 'Unknown'
	end as 'Conversion Status',
	max(civersion) 'civersion'
FROM [CM_Nov].dbo.[v_GS_BITLOCKER_DETAILS] bit
join [CM_Nov].dbo.v_r_system vrs
	on bit.ResourceID = vrs.ResourceID
left join [CM_Nov].dbo.v_CIComplianceStatusDetail CCSD
	on vrs.ResourceID=CCSD.ResourceID and ConfigurationItemName = 'Bitlocker Conversion Status' and [DriveLetter0] = 'c:'
group by
	vrs.Name0,
	DriveLetter0,
	EncryptionMethod0,
	IsAutoUnlockEnabled0,
	ProtectionStatus0,
	ConversionStatus0,
	CCSD.CurrentValue

Select * from [SCCM_PBI_Reporting].dbo.[ust_BitlockerData]

SET NOCOUNT ON;
END
GO

exec [SCCM_PBI_Reporting].dbo.usp_BitlockerData

/******End of Bitlocker******/

/****** Object:  Table [dbo].[ust_CollectionsSchedules]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_CollectionsSchedules]
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

USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_CollectionsSchedules
AS
BEGIN
truncate table [SCCM_PBI_Reporting].dbo.ust_CollectionsSchedules

Insert into [SCCM_PBI_Reporting].dbo.ust_CollectionsSchedules
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

Select * from [SCCM_PBI_Reporting].dbo.ust_CollectionsSchedules

SET NOCOUNT ON;
END
GO

exec [SCCM_PBI_Reporting].dbo.usp_CollectionsSchedules
/******End of Collections Schedules******/

/****** Object:  Table [dbo].[ust_CollectionTopModifier]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_CollectionTopModifier]
(
	Total int null,
	Mod nvarchar(max) null

) ON [PRIMARY]
GO

USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_CollectionTopModifier
AS
BEGIN
truncate table [SCCM_PBI_Reporting].dbo.ust_CollectionTopModifier

Insert into [SCCM_PBI_Reporting].dbo.ust_CollectionTopModifier
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

Select * from [SCCM_PBI_Reporting].dbo.ust_CollectionTopModifier

SET NOCOUNT ON;
END
GO

exec [SCCM_PBI_Reporting].dbo.usp_CollectionTopModifier
/******End of Collections Top Modifier******/

/****** Object:  Table [dbo].[ust_Collectionsunder10seconds]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_Collectionsunder10seconds]
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

USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_Collectionsunder10seconds
AS
BEGIN
truncate table [SCCM_PBI_Reporting].dbo.ust_Collectionsunder10seconds

Insert into [SCCM_PBI_Reporting].dbo.ust_Collectionsunder10seconds
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


Select * from [SCCM_PBI_Reporting].dbo.ust_Collectionsunder10seconds

SET NOCOUNT ON;
END
GO

exec [SCCM_PBI_Reporting].dbo.usp_Collectionsunder10seconds
/******End of Collections Under 10 Seconds******/


/****** Object:  Table [dbo].[ust_Collectionsbetween10and20seconds]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_Collectionsbetween10and20seconds]
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

USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_Collectionsbetween10and20seconds
AS
BEGIN
truncate table [SCCM_PBI_Reporting].dbo.ust_Collectionsbetween10and20seconds

Insert into [SCCM_PBI_Reporting].dbo.ust_Collectionsbetween10and20seconds
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


Select * from [SCCM_PBI_Reporting].dbo.ust_Collectionsbetween10and20seconds

SET NOCOUNT ON;
END
GO

exec [SCCM_PBI_Reporting].dbo.usp_Collectionsbetween10and20seconds
/******End of Collectionsbetween10and20seconds******/

/****** Object:  Table [dbo].[ust_Collectionsover20seconds]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SCCM_PBI_Reporting].[dbo].[ust_Collectionsover20seconds]
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

USE [SCCM_PBI_Reporting]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.usp_Collectionsover20seconds
AS
BEGIN
truncate table [SCCM_PBI_Reporting].dbo.ust_Collectionsover20seconds

Insert into [SCCM_PBI_Reporting].dbo.ust_Collectionsover20seconds
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

Select * from [SCCM_PBI_Reporting].dbo.ust_Collectionsover20seconds

SET NOCOUNT ON;
END
GO

exec [SCCM_PBI_Reporting].dbo.usp_Collectionsover20seconds
/******End of Collectionsover20seconds******/

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