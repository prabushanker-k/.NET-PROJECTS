<%@ Page Title="Upload File" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ScrShot.aspx.cs" Inherits="ScrShot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style2
        {
            font-size: x-large;
            color: #0066FF;
        }
        .style8
        {
            color: #000000;
            font-size: large;
        }
        .style7
        {
            color: #CC0000;
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div 
        
        style="font-size: xx-large; text-align: center; font-family: TRON; font-weight: 700; color: #800000;">
        Online Ticket Reservation System</div>
    <div style="text-align: center; font-size: xx-large; color: #000000">
        Welcome to Express Cinemas!<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style2">-Its Show time!</span></div>
        <br />
    <p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text=" Upload ScreenShots!" 
            style="font-size: xx-large; color: #CC0000; text-decoration: underline"></asp:Label>
&nbsp;<br />
    </p>
    <p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label3" runat="server" 
            Text="Select Screen" style="font-size: x-large; color: #3399FF"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="207px" 
            DataSourceID="AccessDataSource1" DataTextField="screen" 
            DataValueField="screen">
        </asp:DropDownList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/OCTR.mdb" SelectCommand="SELECT [screen] FROM [movie]">
        </asp:AccessDataSource>
    &nbsp;&nbsp;&nbsp;
        </p>
    <p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload2" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    
    
    <p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text=" Upload!" 
            onclick="Button1_Click" Height="30px" Width="70px" />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="30px" onclick="Button2_Click" 
            Text=" Refresh" Width="70px" CausesValidation="False" />
        <br />
    </p>
    <p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text=" " 
            style="font-size: xx-large; color: #CC0000; text-decoration: underline"></asp:Label>
&nbsp;<br />
    </p>
    
    
<div>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image2" runat="server" Height="195px" Width="238px" />
&nbsp;<asp:Image ID="Image3" runat="server" Height="195px" Width="258px" />
&nbsp;<asp:Image ID="Image4" runat="server" Height="195px" Width="252px" />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image5" runat="server" Height="195px" Width="281px" />
&nbsp;<asp:Image ID="Image6" runat="server" Height="195px" Width="270px" />

</div>
    
    
        <br />
    <br />
    <br />
    <br />
    <br />
<div style="text-align: center; font-size: medium">
        <span class="style8">CopyRight ©</span>
        <span class="style7">Sabareesh Murthy</span>
        </div>
    <br />
</asp:Content>

