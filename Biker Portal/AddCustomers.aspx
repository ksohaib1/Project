<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCustomers.aspx.cs" Inherits="Biker_Portal.AddCustomers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
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
         <div class="topnav">
  <a class="active" href="/Customers.aspx">Home</a>
  <a class="active" href="/AddCustomers.aspx">Add New Customer</a>
  <a class="active" href="/Booking.aspx">Booking</a>
  <a class="active" href="/bill.aspx">Bill</a>
  <a class="active" href="/AvailableBikes.aspx">Available Bikes</a>
  
</div>
      <center>
        <div class ="container" style="border: thin double #FFFFFF; padding: 8px; background-color: #FFFF99">
            <h3>Enter Customer Data</h3>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Customer ID :" ></asp:Label>
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="cid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Customer Name:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="cn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Lable4" runat="server" Text="Contact # "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="cc" runat="server" Width="205px" ></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Button ID="add" runat="server" Text="ADD" Width="152px" OnClick="add_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="msg" runat="server" Text="Customer is Added"></asp:Label>
                    </td>
                </tr>
              
            </table>
        </div>
          </center>
    </form>
</body>
</html>
