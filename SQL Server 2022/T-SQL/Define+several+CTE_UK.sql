/*******************************************************************************
********************** Define several CTE       *******************************
********************************************************************************/

-- Several CTE can be defined in the same application.

USE [master];
GO
WITH [CTE_Views] --first CTE

AS 
(SELECT	[object_id] ,[name] ,[type_desc] FROM [sys].[all_views])
,-- comma delimited

[CTE_Triggers] --Second CTE

AS (
SELECT	[object_id] ,[name] ,[type_desc]FROM [sys].[triggers])

SELECT	[name] ,[object_id] ,[type_desc] FROM [CTE_Views];
GO

-- We can of course put the two CTE in the same request.

WITH [CTE_Views] 
([object_id], [name], [type_desc] )
AS (SELECT	[object_id] ,[name] ,[type_desc] FROM [sys].[all_views]),

[CTE_Triggers]([object_id], [name], [type_desc] )
AS (SELECT	[object_id] ,[name] ,[type_desc] FROM [sys].[triggers]
)
SELECT	[name] ,--SELECT on both CTE
		[object_id] ,
		[type_desc]
FROM [CTE_Views]
UNION
SELECT	[name] ,
		[object_id] ,
		[type_desc]
FROM [CTE_Triggers];
GO