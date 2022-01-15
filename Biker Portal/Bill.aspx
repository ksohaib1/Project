<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="Biker_Portal.Bill" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bill</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
    </style>
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
        <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>  
  <div class="topnav">
  <a class="active" href="/Customers.aspx">Home</a>
  <a class="active" href="/AddCustomers.aspx">Add New Customer</a>
  <a class="active" href="/Booking.aspx">Booking</a>
  <a class="active" href="/bill.aspx">Bill</a>
  <a class="active" href="/AvailableBikes.aspx">Available Bikes</a>
</div>
        <center>
        <div class="container" style="background-color: #FFFF99; border: thin double #000000; padding: 8px; margin: auto">
            <table>
                 <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Enter Customer ID : "></asp:Label>
                        </td>
                        <td>
                            <ajaxToolkit:ComboBox ID="Customers" runat="server" AutoCompleteMode="SuggestAppend">
                               </ajaxToolkit:ComboBox>
                        </td>
                     
                 </tr>
                 <tr>
                    <td>
                         <asp:Label ID="Label2" runat="server" Text="Recieving Time : "></asp:Label>
                    </td>
                     <td>
                         <asp:TextBox ID="rt" runat="server"></asp:TextBox>
                    </td>
                 </tr>

                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" />
                    </td>
                    
                </tr>
                
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-BorderStyle="Double"></asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Enter Bike Rent"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="rent" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>

                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Generate Bill" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Total Rent : "></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                    
                </tr>
            </table>
        </div>
            </center>
    </form>
</body>
</html>
