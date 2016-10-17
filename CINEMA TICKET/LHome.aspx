<%@ Page Title="Main Page" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="LHome.aspx.cs" Inherits="LHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style2
        {
            color: #0066FF;
            font-size: x-large;
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
        .style4
        {
            font-size: x-large;
            color: #3399FF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div 
        
        style="font-size: xx-large; text-align: center; font-family: TRON; font-weight: 700; color: #800000;">
        Online Ticket Reservation System</div>
        <br />
    <div style="text-align: center; font-size: xx-large; color: #000000">
        Welcome to Express Cinemas!<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style2">-Its Show time!</span></div>
        <br />
        <div style="font-size: x-large">
        &nbsp;&nbsp;&nbsp;&nbsp; Hi&nbsp;
        <asp:Label ID="Label1" runat="server" style="font-size: xx-large; color: #0066FF;" 
                Text="Guest"></asp:Label>
            &nbsp;<asp:Label ID="Label2" runat="server" 
                style="font-size: xx-large; color: #0066FF" Text=" "></asp:Label>
            ...!&nbsp;&nbsp;&nbsp;&nbsp;
        <object type="application/x-shockwave-flash" data="dewplayer-vol.swf?mp3=Images/Showtime.mp3"
        width="240" height="20" id="dewplayer">
        <param name="wmode" value="transparent" />
        <param name="movie" value="dewplayer-vol.swf?mp3=Images/Showtime.mp3" />
    </object>

    </div>

    <asp:Image ID="Image2" runat="server" Height="507px" 
        ImageUrl="~/Images/iron man_1 [ www.vikitech.com].jpg" Width="920px" />
    <br />
    
    <br />
    <br />
    <br />
    <br />
        <p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please 
        click here for&nbsp;&nbsp;</span><asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#3399FF" 
            NavigateUrl="~/Reserv.aspx"> Reservation!</asp:HyperLink>
        </p>
       <br />
    <br />
    <br />
    <br />
    <br />
<div style="text-align: center; font-size: medium">
        <span class="style8">CopyRight ©</span>
        <span class="style7">Sabareesh Murthy</span>
        <br />
</div>
</asp:Content>

