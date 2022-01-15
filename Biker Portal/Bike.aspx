<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bike.aspx.cs" Inherits="Biker_Portal.Bike" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADD new bike</title>
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

</head>
<body>
    <form id="form1" runat="server">
        <center>
         <div>
            <h5>Enter Bike Details</h5>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Bike registration No : "></asp:Label>
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="bn" runat="server" placeholder="Enter Bike registration No "  ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Company:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="c" runat="server" placeholder="Enter Bike Company "></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Engine No : "></asp:Label>
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="en" runat="server" placeholder="Enter Bike Engine No "  ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Rent "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="r" runat="server" placeholder="Enter Bike rent " ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Location: "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="a" runat="server" placeholder="Enter Bike Location "></asp:TextBox>
                    </td>
                </tr>
                 
                <tr>
                    <td>
                        <asp:Button CssClass="lgnbtn" ID="ok" runat="server" Text="ADD" OnClick="ok_Click1"  />
                    
                        <asp:Button CssClass="cnbtn" ID="back" runat="server" Text="Back" OnClick="back_Click"  />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="msg" runat="server" Text="Bike is Added"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
            </center>
    </form>
</body>
</html>