<%
	Dim email, Pwd
	Dim conn, rs, sql
	
	email = request.form("username")
	Pwd = request.form("password")
	
	Set conn = Server.CreateObject("ADODB.Connection")
	Set rs = Server.CreateObject("ADODB.RecordSet")
	         
	conn.open "DRIVER={SQLite3 ODBC Driver};Data Source=kvgserver;Database=E:/KVG/matrimonyhorat/server/mh.db;"
	sql = "select * from useraccount where email = '" & email & "' and password ='" & pwd & "'"
	'response.write sql
	set rs = conn.execute(sql)
	
	
	If NOT rs.EOF Then
		response.write "{""rescode"":200,""status"":1}"
	Else
		response.write "{""rescode"":200,""status"":0}"
	End If
	conn.close

%>