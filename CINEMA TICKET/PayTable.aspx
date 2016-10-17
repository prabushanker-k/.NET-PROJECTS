<%@ Page Title="PayTable" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="PayTable.aspx.cs" Inherits="PayTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style2
        {
            color: #0066FF;
            font-size: x-large;
        }
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
<br />
    <p class="style4">
    &nbsp;<asp:Label ID="Label1" runat="server" Text=" Payment Details!" 
            
        style="font-size: xx-large; color: #CC0000; text-decoration: underline"></asp:Label>
&nbsp;<br />
    </p>
    <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="AccessDataSource1" ForeColor="#333333" 
    GridLines="None" Height="149px" Width="439px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="cardholdname" HeaderText="cardholdname" 
            SortExpression="cardholdname" />
        <asp:BoundField DataField="creditcardno" HeaderText="creditcardno" 
            SortExpression="creditcardno" />
        <asp:BoundField DataField="expiry" HeaderText="expiry" 
            SortExpression="expiry" />
        <asp:BoundField DataField="cvvno" HeaderText="cvvno" SortExpression="cvvno" />
        <asp:BoundField DataField="amount" HeaderText="amount" 
            SortExpression="amount" />
        <asp:BoundField DataField="confirmcode" HeaderText="confirmcode" 
            InsertVisible="False" SortExpression="confirmcode" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
    DataFile="~/OCTR.mdb" SelectCommand="SELECT * FROM [reserved]">
</asp:AccessDataSource>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<div style="text-align: center; font-size: medium">
        <span class="style8">CopyRight ©</span>
        <span class="style7">Sabareesh Murthy</span>
        </div>
</asp:Content>

