<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>

<html>

<head>

<link rel="stylesheet" type="text/css" href="style/datatable/jquery.dataTables.min.css"/>
<link rel="stylesheet" type="text/css" href="style/datatable/buttons.dataTables.min.css"/>



</head>

<body>
<br>
<center>
<table border="1" cellspacing="0" cellpadding="5px" width="80%">


<tr bgcolor="add8e6">
<th> <center> Client
<th><center> Decline_Reason
<th> <center> Transaction_Date
</tr>
 
<%  

String client="",start="", end="";
Connection con;
PreparedStatement pst;
ResultSet rs;


try
{
	
 client=request.getParameter("client");
 start=request.getParameter("start");
 end=request.getParameter("end");
 
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/d_analyzer?user=root&password=");

//pst=con.prepareStatement("select * from declines where Client=?");  
    
pst=con.prepareStatement("select * from declines where Client=? and transaction_date between ? and ?;");
                                                                
pst.setString(1,client);
pst.setString(2,start);
pst.setString(3,end);

rs=pst.executeQuery();

while(rs.next())
{
client=rs.getString(1);	
%>

<tr>
<td> <center> <%=rs.getString(3)%> 
<td> <center> <%=rs.getString(1)%>
<td> <center> <%=rs.getString(2)%> 
</tr>

<%
}
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>

<script type="text/javascript" src="style/datatable/jquery-3.3.1.js"></script>
<script type="text/javascript" src="style/datatable/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="style/datatable/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="style/datatable/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="style/datatable/buttons.bootstrap.min.js"></script>
<script type="text/javascript" src="style/datatable/jszip.min.js"></script>
<script type="text/javascript" src="style/datatable/pdfmake.min.js"></script>
<script type="text/javascript" src="style/datatable/vfs_fonts.js"></script>
<script type="text/javascript" src="style/datatable/buttons.html5.min.js"></script>
<script type="text/javascript" src="style/datatable/buttons.print.min.js"></script>
<script type="text/javascript" src="style/datatable/buttons.colVis.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
    $('#record').DataTable( {
        dom: 'Bfrtip',
        buttons: [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
    } );
} );
</script>



</body>
</html>



