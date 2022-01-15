<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Biker_Portal.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image:url(4.jpg)
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
    
    <h1>Biker Portal</h1>
            <h5>195034,195038.195050,195058</h5>
    <form id="form1" runat="server" class="frmalg">
                    
       
        
        <div class="container" style="padding: 8px; border: thin double #000000; background-color: #C0C0C0;">
           <center>
            <h3 >Login</h3>
            
               <table>
                 <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Email:" ></asp:Label>
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="un" runat="server" placeholder="Enter Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="p" runat="server" TextMode="Password" placeholder="Enter Password" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" runat="server" Text="Remember Me"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Login" runat="server" CssClass="lgnbtn" Text="Login" OnClick="Login_Click1" />
                    
                        <asp:Button ID="AdminLogin" runat="server" CssClass="cnbtn" Text="Admin" OnClick="AdminLogin_Click"/>
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:Label ID="Error" runat="server" Text="Invalid Email or Password" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                
            </table>
               </center>
        </div>
         
    </form>
</body>
</html>