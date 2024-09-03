/*******************************************************************************
********************** DROP IF EXISTS    ***************************************
********************************************************************************/
USE FORMATION

-- create a very simple table.

CREATE TABLE dbo.Test (Col1 int)
GO

-- old school style

IF OBJECT_ID('dbo.Test', 'U') IS NOT NULL
 DROP TABLE dbo.Test

-- Create the table again

CREATE TABLE dbo.Test (Col1 int)
GO

-- Drop the table

DROP TABLE IF EXISTS dbo.Test

-- It also works for a lot of objects on SQL.

DROP ASSEMBLY IF EXISTS SomeAssembly
DROP DATABASE IF EXISTS SomeDatabase
DROP DEFAULT IF EXISTS dbo.SomeDefault
DROP INDEX IF EXISTS dbo.SomeIndex
DROP PROCEDURE IF EXISTS dbo.SomeProcedure
DROP ROLE IF EXISTS SomeRole
DROP RULE IF EXISTS dbo.SomeRule
DROP SCHEMA IF EXISTS SomeSchema
DROP SECURITY POLICY IF EXISTS dbo.SomeSecurityPolicy
DROP SEQUENCE IF EXISTS dbo.SomeSequence
DROP SYNONYM IF EXISTS dbo.SomeSynonym
DROP TYPE IF EXISTS dbo.SomeType
DROP VIEW IF EXISTS dbo.SomeView
