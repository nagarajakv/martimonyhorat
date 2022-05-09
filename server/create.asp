<%

	' Dim objConn
	' Set objConn = Server.CreateObject("ADODB.Connection")
	' objConn.ConnectionString = "Provider=SQLOLEDB; Data Source=(local); Database=[mh]; User ID=; Password="
	' objConn.Open
	
	Dim conn, rs
	Dim userid, username, email, pwd, gender, phone
	
	Set conn = Server.CreateObject("ADODB.Connection")
	Set rs = Server.CreateObject("ADODB.RecordSet")
	userid = 10001
	username = Request.Form("username")
	email = Request.Form("email")
	phone = Request.Form("phone")
	gender = Request.Form("gender")
	pwd = Request.Form("pwd")
	
	conn.open "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=;Initial Catalog=mh;Data Source=kvgserver;Password="

	' conn.open "Data Source=(mh);DRIVER=SQLite3 ODBC Driver;Database=E:/KVG/matrimonyhorat/server/mh.db;LongNames=0;Timeout=1000;NoTXN=0;SyncPragma=NORMAL;StepAPI=0;"
             
	' conn.open "DRIVER={SQLite3 ODBC Driver};Data Source=(local);Database=E:/KVG/matrimonyhorat/server/mh.db;"
	conn.execute("insert into useraccount values(" & userid & "," & username & "," & email & "," & pwd & "," & gender & "," & phone & ")")
	'conn.execute("update admin set username='kk' where username='usera'")
	'conn.execute("delete from admin where age=20")
	' rs.open "select * from admin",conn,1,1
	conn.close

%>