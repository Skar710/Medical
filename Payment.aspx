<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Medical.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Thank You</title>
    <script src="https://kit.fontawesome.com/b1700c5328.js" crossorigin="anonymous"></script>
    <style>
        body{
    background-image: url(background.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    font-family: Verdana, sans-serif;
        }
        #title{
    display:flex;
    align-items:center;
    font-size:3.5rem;
    justify-content:space-around;
    border:2px solid black;
    background-color:antiquewhite;
    position:sticky;
    top:0;

        }
        #main{
            display:flex;
            flex-direction:column;
            justify-content:space-between;
            align-items:center;
            align-content:space-around;
            padding-top:30px;
            border:2px solid black;
            border-radius:20px;
            background-color:aliceblue;
        }
        #Label1{
            font-size:3rem;
        }
        #RadioButtonList1{
            font-size:1.5rem;

        }
        p{
            font-size:1.5rem;
        }
        #success{
            display:flex;
            justify-content:center;
            align-items:center;
            flex-direction:column;
            border:2px solid black;
            border-radius:20px;
            background-color:aliceblue;
            width:400px;
            margin-left:540px;
            margin-top:20px;
            padding:10px;
        }
        #Label2{
            font-size:1.5rem;

        }
        i{
            font-size:3rem;
        }
    </style>
</head>
<body>
     <div id="title">
        <i class="fa-solid fa-truck-medical" style="color: #08a173;"></i>
            Skar Medical
        <i class="fa-solid fa-truck-medical" style="color: #08a173;"></i>
     </div>
    <form id="form1" runat="server">
        <div id="main">
            <p>Your Total Bill is </p>
            <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#00CC00"></asp:Label>

            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Credit Card</asp:ListItem>
                <asp:ListItem>Debit Card</asp:ListItem>
                <asp:ListItem>Cash On Delivery</asp:ListItem>
                <asp:ListItem>UPI</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="Button1" runat="server" Text="Make Payment" OnClick="Button1_Click" />
        </div>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <div id="success">
                        <i class="fa-regular fa-circle-check fa-flip" style="color: #63E6BE;"></i>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                    </div>
                </asp:View>
            </asp:MultiView>
        
        
    </form>
</body>
</html>

