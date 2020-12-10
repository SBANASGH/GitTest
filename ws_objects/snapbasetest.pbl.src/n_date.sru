$PBExportHeader$n_date.sru
forward
global type n_date from nonvisualobject
end type
end forward

global type n_date from nonvisualobject
end type
global n_date n_date

forward prototypes
public function integer n_date ()
end prototypes

public function integer n_date ();date newdatearr[] 

newdatearr[1]=date('2003-09-20')
newdatearr[2]=date((DateTime(2003-09-20,12:09:08)))
newdatearr[3]=date(2003,9,20)
newdatearr[4]=date(2003,12,20)
newdatearr[5]=date(2003,2,20)
newdatearr[6]=date(2003,02,9)
newdatearr[7]=date(02,03,20)
newdatearr[8]=date(02,3,20)
newdatearr[9]=date(02,03,4)

int li_year,li_month,li_day
String	ls_Date
li_year = 2003
li_month= 9
li_Day  = 30
ls_Date = '2003-08-20'
newdatearr[10]=Date(ls_Date)
newdatearr[11]=Date(li_year, li_month, li_Day)

newdatearr[12]=Date('fdasasasdf')
newdatearr[13]=Date('99-09-20')                                                                               
newdatearr[14]=Date(20030120)
newdatearr[15]=Date('2003-09-ab')
newdatearr[16]=Date(12,20,2003)
newdatearr[17]=Date(3,20,2003)
newdatearr[18]=Date(13,2,2003)
newdatearr[19]=Date('2003-04-31')
newdatearr[20]=Date('2003-20-09')
newdatearr[21]=Date(2003,20,09)
String ls_null
SetNull(ls_null)
			if IsNull(String(Date(ls_null))) then
				newdatearr[22]=Date(ls_null)
			end if
			DateTime ldt_null
			SetNull(ldt_null)
			if IsNull(String(Date(ldt_null))) then
				newdatearr[23]=Date(ldt_null)
			end if
			Int li_null
			SetNull(li_null)
			if IsNull(String(Date(li_null,4,4))) then
				newdatearr[24]=Date(li_null,4,4)
			end if
			
			any la_any
			la_any = "2003/12/20"
			newdatearr[25]=Date(la_any)
			la_any = 11:11:11
			newdatearr[26]=Date(la_any)
			la_any = 11
			newdatearr[27]=Date(la_any,la_any,la_any)
			
			string newstr[] 
			integer n
			for n=1 to (upperbound(newdatearr)-lowerbound(newdatearr)+1)
				newstr[n]=string(newdatearr[n],'m-d-yy')
			next

string olddatearr[]
olddatearr[1]='9/20/03'
olddatearr[2]='9/20/03'
olddatearr[3]='9/20/03'
olddatearr[4]='12/20/03'
olddatearr[5]='2/20/03'
olddatearr[6]='2/9/03'
olddatearr[7]='3/20/02'
olddatearr[8]='3/20/02'
olddatearr[9]='3/4/02'
olddatearr[10]='8/20/03'
olddatearr[11]='9/30/03'
olddatearr[12]='1/1/00'
olddatearr[13]='9/20/99'
olddatearr[14]='1/1/00'
olddatearr[15]='1/1/00'
olddatearr[16]='1/1/00'
olddatearr[17]='1/1/00'
olddatearr[18]='1/1/00'
olddatearr[19]='1/1/00'
olddatearr[20]='1/1/00'
olddatearr[21]='1/1/00'
setnull(olddatearr[22])
setnull(olddatearr[23])
setnull(olddatearr[24])
olddatearr[25]='12/20/03'
olddatearr[26]='??/??/??'
olddatearr[27]='11/11/11'

return 1
end function

on n_date.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_date.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

