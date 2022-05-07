<%
	Dim Uname, Pwd
	
	Uname = request.form("username")
	Pwd = request.form("password")
	
	If Uname = "admin" and Pwd = "admin" Then
		response.write "{""rescode"":200,""status"":1}"
	Else
		response.write "{""rescode"":200,""status"":0}"
	End If

%>