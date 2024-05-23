<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="Medical.Seller" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Seller</title>
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
            justify-content:center;
            flex-direction:column;
            align-items:center;
        }
        #ButtonInsertView{
            border:2px solid black;
            border-radius:25px;
            width:100px;
            height:50px;
        }
        #ButtonUpdateView{
            border:2px solid black;
            border-radius:25px;
            width:100px;
            height:50px;
        }
        #ButtonDeleteView{
            border:2px solid black;
            border-radius:25px;
            width:100px;
            height:50px;
        }
        #ButtonInsert{
            border:2px solid black;
            border-radius:25px;
            width:100px;
            height:50px;}
        #ButtonUpdate{
            border:2px solid black;
            border-radius:25px;
            width:150px;
            height:50px;
        }
        #ButtonDelete{
            border:2px solid black;
            border-radius:25px;
            width:150px;
            height:50px;
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MEDICALConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
            <br />
            <div>
            <asp:Button ID="ButtonInsertView" runat="server" Text="Insert" OnClick="ButtonInsertView_Click" />
            <asp:Button ID="ButtonUpdateView" runat="server" Text="Update" OnClick="ButtonUpdateView_Click" />
            <asp:Button ID="ButtonDeleteView" runat="server" Text="Delete" OnClick="ButtonDeleteView_Click" />
            </div>
            
            <br />
            <br />
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="ViewDelete" runat="server">
                    
                    <div><p>Product Id:</p><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></div>
                    <br />
                    <asp:Button ID="ButtonDelete" runat="server" Text="Delete From Table" OnClick="ButtonDelete_Click" />
                    <br />
                    <asp:Label ID="LabelDelete" runat="server" Text="Label"></asp:Label>
                    
                </asp:View>
                <asp:View ID="ViewUpdate" runat="server">
                    
                    <div><p>Product Id:</p><asp:TextBox ID="TextBoxUpdateId" runat="server"></asp:TextBox></div>
                    <br />
                    <div><p>Product Name:</p><asp:TextBox ID="TextBoxUpdateName" runat="server"></asp:TextBox></div>
                    <br />
                    <div><p>Product Price:</p><asp:TextBox ID="TextBoxUpdatePrice" runat="server"></asp:TextBox></div>
                    <br />
                    <div><p>Product Quantity:</p><asp:TextBox ID="TextBoxUpdateQuantity" runat="server"></asp:TextBox></div>
                    <br />
                    <div><p>Product Manufacture:</p><asp:TextBox ID="TextBoxUpdateManufacture" runat="server"></asp:TextBox></div>
                    <br />
                    <asp:Button ID="ButtonUpdate" runat="server" Text="Update TO Table" OnClick="ButtonUpdate_Click" />
                    <br />
                    <asp:Label ID="LabelUpdate" runat="server" Text="Label"></asp:Label>
                    
                </asp:View>
                <asp:View ID="ViewInsert" runat="server">
                    
                    <div><p>Product Name:</p><asp:TextBox ID="TextBoxInsertName" runat="server"></asp:TextBox></div>
                    <br />
                    <div><p>Product Price:</p><asp:TextBox ID="TextBoxInsertPrice" runat="server"></asp:TextBox></div>
                    <br />
                    <div><p>Product Quantity:</p><asp:TextBox ID="TextBoxInsertQuantity" runat="server"></asp:TextBox></div>
                    <br />
                    <div><p>Product Manufacture:</p><asp:TextBox ID="TextBoxInsertManufacture" runat="server"></asp:TextBox></div>
                    <br />
                    <asp:Button ID="ButtonInsert" runat="server" Text="Insert To Table" OnClick="ButtonInsert_Click" />
                    <br />
                    <asp:Label ID="LabelInsert" runat="server" Text="Label"></asp:Label>
                    
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
