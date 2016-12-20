mkdir Master
@echo off
set "var=%cd%"
set "var1=\Master\master.xml"
set "src=%var%%var1%"
@echo ^<?xml version="1.0" encoding="UTF-8" standalone="no"?^> 	>%src%
@echo ^<databaseChangeLog  xmlns="http://www.liquibase.org/xml/ns/dbchangelog/1.9" >>%src%
@echo					xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >>%src%
@echo					xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog/1.9 http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-1.9.xsd"^> >>%src%
@echo ^<preConditions^> >>%src%
@echo		^<sqlCheck expectedResult="0"^>SELECT NVL(MAX(id),0) FROM databasechangelog WHERE author='MajorVersion'^</sqlCheck^> >>%src%
@echo ^</preConditions^> >>%src%
forfiles /M *.xml /C "cmd /c echo    ^<include file=@path /^> >>%src% " | sort
@echo	^</databaseChangeLog^> >>%src%