<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Medical.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
    }
    #input{
        display:flex;
        align-items:center;
        flex-direction:column;
        border:4px solid black;
        height:auto;
        width:1000px;
        margin-top:50px;
        border-radius:15px;
        background-color:aliceblue;
        padding:10px;
        column-gap:20px;
    }
    #main{
        display:flex;
        justify-content:center;
        align-items:center;
    }
    #one{
        margin:20px;
    }
    #two{
        margin:20px;
    }
    #three{
        margin:20px;
    }
    #four{
        margin:20px;
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
        
           
            <div id="input">
            <p>Login</p>
                  <div id="one">
            Name:<asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
            <br />
            </div>
            <div id="two">
            Password:<asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
            <br />
            </div>
            <div id="three"><asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" /><br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
            <p>Don't have a account Sign Up</p>
            <div id="four"><asp:Button ID="ButtonSignIn" runat="server" Text="SIgn Up" OnClick="ButtonSignIn_Click" /></div>

                        <asp:MultiView ID="MultiView1" runat="server">
<asp:View ID="View1" runat="server">
    Enter Name:<asp:TextBox ID="TextBoxEnterName" runat="server"></asp:TextBox>
    <br />
    Enter Password:<asp:TextBox ID="TextBoxEnterPassword" runat="server"></asp:TextBox>
    <br />
    Confirm Password:<asp:TextBox ID="TextBoxConfirm" runat="server"></asp:TextBox>
    <br />
    Enter State:<asp:TextBox ID="TextBoxState" runat="server" Height="16px"></asp:TextBox>
    <br />
    Enter City:<asp:TextBox ID="TextBoxCity" runat="server"></asp:TextBox>
    <br />
    Enter Contact:<asp:TextBox ID="TextBoxContact" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add Account" />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</asp:View>
</asp:MultiView>
        </div>
        </div>
    </form>
</body>
</html>

