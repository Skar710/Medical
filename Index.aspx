<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Medical.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skar Medical</title>
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
        #desc{
            display:flex;
            flex-direction:column;
            align-items:center;
            font-size:1.5rem;
        }
        #userinput{
            display:flex;
            flex-direction:column;
            align-items:center;

        }
        #ButtonCustomer{
            border:2px solid black;
            width:100px;
            height:50px;
            border-radius:20px;
        }
        #ButtonCustomer:hover{
            box-shadow:7px 7px 5px lightblue;
            transform: translate(-10px, -10px);

        }

        #ButtonManager{
             border:2px solid black;
             width:100px;
             height:50px;
             border-radius:20px;
        }
        #ButtonManager:hover{
            box-shadow:7px 7px 5px lightblue;
            transform: translate(-10px, -10px);

        }
        #userinput p{
            font-size:1.5rem;
        }
        #ad-1{
            border:2px solid black;
            width:450px;
            height:250px;
            position: absolute;
            top: 425px;
        }
        #ad-2{
            border:2px solid black;
            width:450px;
            height:250px;
            position: absolute;
            top: 425px;
            right:10px;

        }
        footer{
            color:aliceblue;
            background-color:black;
            display:flex;
            flex-direction:column;
            align-items:center;
            justify-content:center;
            margin-top:30px;
        }
        #foot{
            font-family: "Lucida Console", "Courier New", monospace;
            font-size:1.5rem;
        }
        #foot-desc{
            font-family: "Lucida Console", "Courier New", monospace;
            font-size:1.5rem;
        }
        #foot-button{
            margin:8px;
        }
        #email{
            width:252px;
            height:30px;
            border-radius:10px;
        }
    </style>
</head>
<body>
    <div id="title">
        <i class="fa-solid fa-truck-medical" style="color: #08a173;"></i>
        Skar Medical
        <i class="fa-solid fa-truck-medical" style="color: #08a173;"></i>
    </div>
    <div id="desc"><p>Skar Medical: Your Prescription for Wellness!</p><p>Discover a world of care and convenience at our one-stop shop for all your medical needs.</p>  <p>From trusted medications to essential health supplies, we're dedicated to keeping you and your family in the best of health.</p> <p>Step into Skar Medical and experience expert advice, quality products, and a commitment to your well-being like no other.</p> <p>Your journey to better health starts here!"</p></div>
    
    <form id="form1" runat="server">
        <div id="userinput">
            <p>Who are You ?</p>
            <asp:Button ID="ButtonCustomer" runat="server" Text="Customer" OnClick="ButtonCustomer_Click" />
            <span>OR</span>
            <asp:Button ID="ButtonManager" runat="server" Text="Manager" OnClick="ButtonManager_Click" />
        </div>   
        <div id="ad-1">
       <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" Height="250px" Width="450px" />

            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Ads.xml"></asp:XmlDataSource>

    </div>
    </form>
    <div id="ad-2">
        <asp:AdRotator ID="AdRotator2" runat="server" DataSourceID="XmlDataSource1" Height="250px" Width="450px" /> 
    </div>
    <footer>
        <p id="foot">
            Enter Email
        </p>
        <input type="text" placeholder="Enter Email" id="email" />
        <button id="foot-button">Submit</button>
        <p id="foot-desc">
            Don't Worry We won't Spam You <br /> Your Email is Safe with us 
        </p>
    </footer>
</body>
</html>
