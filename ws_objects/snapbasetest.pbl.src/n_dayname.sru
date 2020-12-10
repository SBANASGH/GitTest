$PBExportHeader$n_dayname.sru
forward
global type n_dayname from nonvisualobject
end type
end forward

global type n_dayname from nonvisualobject
end type
global n_dayname n_dayname

forward prototypes
public function integer f_dayname ()
end prototypes

public function integer f_dayname ();String  newarr[]
newarr[1]=DayName(2003-04-08)
Date ld_date
			ld_date = 2003-04-09
newarr[2]=DayName(ld_date)
newarr[3]=DayName(date('1999'))
any la_any
			la_any = 2003-04-09
newarr[4]=DayName(la_any)


String oldarr[]
oldarr[1]="Tuesday"
oldarr[2]="Wednesday"
oldarr[3]="Thursday"
oldarr[4]="Wednesday"

return 1
end function

on n_dayname.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_dayname.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

