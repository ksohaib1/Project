<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Biker_Portal.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<style font-names="Arial, Helvetica, sans-serif">
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  width:auto;
  margin:auto;
  float: left;
  color: #f2f2f2;
  text-align: center;
  border: 2px , black;
  padding: 14px 16px;
  text-decoration:solid;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>
<form id="form1" runat="server">

<div class="topnav">
  <a class="active" href="/Employee.aspx">Add new Employee</a>
  <a class="active" href="/Bike.aspx">Add new Bike</a>
  <a class="active"><asp:Button BackColor="#04AA6D" ForeColor="White" BorderStyle="None" ID="Button1" runat="server" Text="Logout" Font-Size="17px" Font-Bold="False" Font-Italic="False" Font-Names="Arial" OnClick="Button1_Click" /></a>
</div>
    <h1>
    
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    
    </h1>
    
    </form>
</body>
</html>


