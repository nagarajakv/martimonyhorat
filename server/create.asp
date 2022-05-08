<%

	Dim objConn
	Set objConn = Server.CreateObject("ADODB.Connection")
	objConn.ConnectionString = "Provider=SQLOLEDB; Data Source=(mh); Database=[mh]; User ID=admin; Password=Ganesh123$"
	objConn.Open
%>