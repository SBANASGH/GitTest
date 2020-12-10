$PBExportHeader$snapbasetest.sra
$PBExportComments$Generated Application Object
forward
global type snapbasetest from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type snapbasetest from application
string appname = "snapbasetest"
string fullbuildruntimeversion = "19.2.0.2622"
end type
global snapbasetest snapbasetest

on snapbasetest.create
appname = "snapbasetest"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on snapbasetest.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

