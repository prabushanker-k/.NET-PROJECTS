<%@ Page Title="Reservation" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Reserv1.aspx.cs" Inherits="Reserv1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<br />
    <style type="text/css">
        .style2
        {
            color: #0066FF;
        }
    </style>
    <style type="text/css">
        .style2
        {
            color: #0066FF;
        }
    </style>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
    </style>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            color: #800000;
        }
    </style>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            color: #800000;
            text-decoration: underline;
        }
        .style2
        {
            font-size: x-large;
        }
        .style3
        {
            font-size: x-large;
            color: #000000;
        }
    </style>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            text-decoration: underline;
            color: #800000;
        }
        .style3
        {
            font-size: x-large;
            color: #000000;
        }
    </style>
    <style type="text/css">

        .style4
        {
            font-size: x-large;
            color: #3399FF;
        }
        </style>
    <style type="text/css">

        .style4
        {
            font-size: x-large;
            color: #3399FF;
        }
        </style>
    <style type="text/css">

        .style4
        {
            font-size: x-large;
            color: #3399FF;
        }
        .style8
        {
            color: #000000;
            font-size: large;
        }
        .style7
        {
            color: #CC0000;
        }
        </style>
    <style type="text/css">
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
        .style2
        {
            color: #0066FF;
            font-size: x-large;
        }
    </style>
    <style type="text/css">
        .style8
        {
            color: #000000;
        }
        .style7
        {
            color: #CC0000;
        }
    </style>
    <style type="text/css">
        .style2
        {
            font-size: x-large;
            color: #3399FF;
        }
        .style7
        {
            color: #CC0000;
        }
        .style8
        {
            color: #000000;
        }
    </style>
    <style type="text/css">
        .style2
        {
            color: #3399FF;
            font-size: large;
        }
        .style8
        {
            color: #000000;
        }
        .style7
        {
            color: #CC0000;
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
    <span class="style4"><p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Movie!" 
            style="font-size: xx-large; color: #CC0000; text-decoration: underline"></asp:Label>
&nbsp;<br />
    </p>
    <p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label2" runat="server" 
            Text="Choose Movie" style="font-size: x-large; color: #3399FF"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="207px" 
            DataSourceID="AccessDataSource1" DataTextField="movname" 
            DataValueField="movname">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="DropDownList1" ErrorMessage="Should not be Empty!" 
            style="color: #CC0000">*</asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;
        </p>
    <p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Date!" 
            style="font-size: xx-large; color: #CC0000; text-decoration: underline"></asp:Label>
&nbsp;<br />
    </p>
    <p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label6" runat="server" 
            Text="Choose Date" style="font-size: x-large; color: #3399FF"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style4">
        <asp:DropDownList ID="DropDownList2" runat="server" Height="29px" Width="207px">
        </asp:DropDownList>
    </span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="DropDownList2" ErrorMessage="Should not be Empty!" 
            style="color: #CC0000">*</asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;
        </p>
    <p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Show Time!" 
            style="font-size: xx-large; color: #CC0000; text-decoration: underline"></asp:Label>
&nbsp;<br />
    </p>
    <p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label8" runat="server" 
            Text="Choose Show Time" style="font-size: x-large; color: #3399FF"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" Height="29px" Width="207px">
            <asp:ListItem>11.00 AM</asp:ListItem>
            <asp:ListItem>2.15 PM</asp:ListItem>
            <asp:ListItem>6.15 PM</asp:ListItem>
            <asp:ListItem>10.00 PM</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="DropDownList3" ErrorMessage="Should not be Empty!" 
            style="color: #CC0000">*</asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;
        </p>
    <p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="style4">
        <asp:Button ID="Button1" runat="server" Text=" Submit" 
            onclick="Button1_Click" Height="30px" Width="70px" />
    </span>
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="30px" onclick="Button2_Click" 
            Text=" Back" Width="70px" CausesValidation="False" />
        <br />
    </p>
    </span>
        <br />
        <br />
    <br />
    <span class="style4">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/OCTR.mdb" SelectCommand="SELECT [movname] FROM [movie]">
    </asp:AccessDataSource>
    </span>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
<div style="text-align: center; font-size: large">
        <span class="style8">CopyRight ©</span>
        <span class="style7">Sabareesh Murthy</span>
        </div>
        
</asp:Content>

