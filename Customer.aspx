<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Medical.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Customer</title>
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
            justify-content:center;
            align-items:center;

        }
        #cart{
            border:2px solid black;
            background-color:aliceblue;
            padding:15px;
        }
        #ad-rotator-1{
            width:500px;
            height:250px;
            border:2px solid black;
            position:absolute;
            top:100px;
            left:50px;
        }
        #ad-rotator-2{
            width:500px;
            height:250px;
            border:2px solid black;
            position:absolute;
            top:100px;
            right:50px;
        }
        #ad-rotator-3{
             width:500px;
             height:250px;
                border:2px solid black;
                position:absolute;
                top:400px;
            left:50px;
        }
        #ad-rotator-4{
             width:500px;
            height:250px;
            border:2px solid black;
            position:absolute;
            top:400px;
            right:50px;
        }
        #logo-cart{
            font-size:30px;
            position:relative;
            left:72px;
        }
        #ButtonBuy{
            position:relative;
            left:56px;
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
            
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" BackColor="AntiqueWhite" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" CellSpacing="10">
            </asp:GridView>
            
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MEDICALConnectionString %>" SelectCommand="SELECT [Name], [Price], [Quantity], [Manufacturer] FROM [Products]"></asp:SqlDataSource>
            <div><asp:Button ID="ButtonRead" runat="server" OnClick="ButtonRead_Click" Text="Read" /></div>
        
            Select Products:<asp:CheckBoxList ID="CheckBoxList1" runat="server">
            </asp:CheckBoxList>
            
            <asp:Button ID="ButtonOrder" runat="server" Text="Order" OnClick="Button1_Click" />
            <asp:Label ID="LabelError" runat="server" Text="Label"></asp:Label>
        
       
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
             <div id="cart">
                Price :<asp:Label ID="LabelPrice" runat="server" Text="Label"></asp:Label>
                <br />
                Shipping Cost :
                <asp:Label ID="Label1" runat="server" Text="$50"></asp:Label>
                <br />
                Discount: $0
                <br />
                Tax: $50<br /> Estimated Total:
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br /><br />
                <i class="fa-solid fa-cart-shopping" style="color: #08a173;" id="logo-cart"></i><br />
                <asp:Button ID="ButtonBuy" runat="server" OnClick="ButtonBuy_Click" Text="Buy Now" />
                <br />
            </div>
            </asp:View>
        </asp:MultiView>
       </div> 
    </form>
</body>
</html>

