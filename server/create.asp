<%
	Dim conn, rs
	Dim userid, username, email, pwd, gender, phone
	
	Set conn = Server.CreateObject("ADODB.Connection")
	Set rs = Server.CreateObject("ADODB.RecordSet")
	'userid = 10001
	username = Request.Form("username")
	email = Request.Form("email")
	phone = Request.Form("phone")
	gender = Request.Form("gender")
	pwd = Request.Form("pwd")
	         
	conn.open "DRIVER={SQLite3 ODBC Driver};Data Source=kvgserver;Database=E:/KVG/matrimonyhorat/server/mh.db;"
	
	conn.execute("insert into useraccount (username,email,password,gender,phone) values('" & username & "','" & email & "','" & pwd & "','" & gender & "','" & phone & "')")
	
	conn.close

	response.write "{""rescode"":200,""sts"":1}"
%>