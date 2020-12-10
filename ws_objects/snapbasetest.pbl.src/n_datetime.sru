$PBExportHeader$n_datetime.sru
forward
global type n_datetime from nonvisualobject
end type
end forward

global type n_datetime from nonvisualobject
end type
global n_datetime n_datetime

forward prototypes
public function integer n_datetime ()
end prototypes

public function integer n_datetime ();datetime newdatetime[] 
newdatetime[1]=DateTime(2003-09-20)
newdatetime[2]=DateTime(2003-09-20,12:09:08)
Date	ld_date
			Time	lt_time
			ld_date = 2003-09-20
			lt_time = 09:08:09
newdatetime[3]=DateTime(ld_date)
newdatetime[4]=DateTime(ld_date,lt_time)
Date	ld_Null
			Time	lt_null
			SetNull(ld_null)
			SetNull(lt_null)
newdatetime[5]=DateTime(ld_null)
newdatetime[6]=DateTime(ld_Null,09:09:09)
newdatetime[7]=DateTime(2003-09-20,lt_null)
any 	la_any
			la_any = 2003-12-20
			DateTime(la_any)
			DateTime(la_any,09:00:00)
newdatetime[8]=DateTime(la_any)
newdatetime[9]=DateTime(la_any,09:00:00)

string newstr[] 
			integer n
			for n=1 to (upperbound(newdatetime)-lowerbound(newdatetime)+1)
				newstr[n]=string(newdatetime[n],'m/d/yy hh:mm:ss')
			next

string olddatetime[]
olddatetime[1]='9/20/03 00:00:00'
olddatetime[2]='9/20/03 12:09:08'
olddatetime[3]='9/20/03 00:00:00'
olddatetime[4]='9/20/03 09:08:09'
setnull(olddatetime[5])
setnull(olddatetime[6])
setnull(olddatetime[7])
olddatetime[8]='12/20/03 00:00:00'
olddatetime[9]='12/20/03 09:00:00'


return 1
end function

on n_datetime.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_datetime.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

