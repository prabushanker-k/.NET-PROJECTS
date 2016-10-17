<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="pdet.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: 15pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="D:\Prabu~HMS1\App_Data\hsm.mdb" 
            SelectCommand="SELECT * FROM [Table1]"></asp:AccessDataSource>
        <br />
    </p>
    <p class="style1">
        <strong>Registered Patients Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Logout" />
    <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1" 
        DataKeyNames="idno">
        <AlternatingItemTemplate>
            <li style="background-color: #FFFFFF; color: #284775;">pname:
                <asp:DynamicControl runat="server" DataField="pname" Mode="ReadOnly" />
                <br />
                fname:
                <asp:DynamicControl runat="server" DataField="fname" Mode="ReadOnly" />
                <br />
                age:
                <asp:DynamicControl runat="server" DataField="age" Mode="ReadOnly" />
                <br />
                sex:
                <asp:DynamicControl runat="server" DataField="sex" Mode="ReadOnly" />
                <br />
                ad1:
                <asp:DynamicControl runat="server" DataField="ad1" Mode="ReadOnly" />
                <br />
                ad2:
                <asp:DynamicControl runat="server" DataField="ad2" Mode="ReadOnly" />
                <br />
                dis:
                <asp:DynamicControl runat="server" DataField="dis" Mode="ReadOnly" />
                <br />
                pin:
                <asp:DynamicControl runat="server" DataField="pin" Mode="ReadOnly" />
                <br />
                bgroup:
                <asp:DynamicControl runat="server" DataField="bgroup" Mode="ReadOnly" />
                <br />
                ptype:
                <asp:DynamicControl runat="server" DataField="ptype" Mode="ReadOnly" />
                <br />
                idno:
                <asp:DynamicControl runat="server" DataField="idno" Mode="ReadOnly" />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #999999;">pname:
                <asp:DynamicControl runat="server" DataField="pname" Mode="Edit" />
                <br />
                fname:
                <asp:DynamicControl runat="server" DataField="fname" Mode="Edit" />
                <br />
                age:
                <asp:DynamicControl runat="server" DataField="age" Mode="Edit" />
                <br />
                sex:
                <asp:DynamicControl runat="server" DataField="sex" Mode="Edit" />
                <br />
                ad1:
                <asp:DynamicControl runat="server" DataField="ad1" Mode="Edit" />
                <br />
                ad2:
                <asp:DynamicControl runat="server" DataField="ad2" Mode="Edit" />
                <br />
                dis:
                <asp:DynamicControl runat="server" DataField="dis" Mode="Edit" />
                <br />
                pin:
                <asp:DynamicControl runat="server" DataField="pin" Mode="Edit" />
                <br />
                bgroup:
                <asp:DynamicControl runat="server" DataField="bgroup" Mode="Edit" />
                <br />
                ptype:
                <asp:DynamicControl runat="server" DataField="ptype" Mode="Edit" />
                <br />
                idno:
                <asp:DynamicControl runat="server" DataField="idno" Mode="ReadOnly" />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">pname:
                <asp:DynamicControl runat="server" DataField="pname" Mode="Insert" 
                    ValidationGroup="Insert" />
                <br />fname:
                <asp:DynamicControl runat="server" DataField="fname" Mode="Insert" 
                    ValidationGroup="Insert" />
                <br />age:
                <asp:DynamicControl runat="server" DataField="age" Mode="Insert" 
                    ValidationGroup="Insert" />
                <br />sex:
                <asp:DynamicControl runat="server" DataField="sex" Mode="Insert" 
                    ValidationGroup="Insert" />
                <br />ad1:
                <asp:DynamicControl runat="server" DataField="ad1" Mode="Insert" 
                    ValidationGroup="Insert" />
                <br />ad2:
                <asp:DynamicControl runat="server" DataField="ad2" Mode="Insert" 
                    ValidationGroup="Insert" />
                <br />dis:
                <asp:DynamicControl runat="server" DataField="dis" Mode="Insert" 
                    ValidationGroup="Insert" />
                <br />pin:
                <asp:DynamicControl runat="server" DataField="pin" Mode="Insert" 
                    ValidationGroup="Insert" />
                <br />bgroup:
                <asp:DynamicControl runat="server" DataField="bgroup" Mode="Insert" 
                    ValidationGroup="Insert" />
                <br />ptype:
                <asp:DynamicControl runat="server" DataField="ptype" Mode="Insert" 
                    ValidationGroup="Insert" />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" ValidationGroup="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #E0FFFF; color: #333333;">pname:
                <asp:DynamicControl runat="server" DataField="pname" Mode="ReadOnly" />
                <br />
                fname:
                <asp:DynamicControl runat="server" DataField="fname" Mode="ReadOnly" />
                <br />
                age:
                <asp:DynamicControl runat="server" DataField="age" Mode="ReadOnly" />
                <br />
                sex:
                <asp:DynamicControl runat="server" DataField="sex" Mode="ReadOnly" />
                <br />
                ad1:
                <asp:DynamicControl runat="server" DataField="ad1" Mode="ReadOnly" />
                <br />
                ad2:
                <asp:DynamicControl runat="server" DataField="ad2" Mode="ReadOnly" />
                <br />
                dis:
                <asp:DynamicControl runat="server" DataField="dis" Mode="ReadOnly" />
                <br />
                pin:
                <asp:DynamicControl runat="server" DataField="pin" Mode="ReadOnly" />
                <br />
                bgroup:
                <asp:DynamicControl runat="server" DataField="bgroup" Mode="ReadOnly" />
                <br />
                ptype:
                <asp:DynamicControl runat="server" DataField="ptype" Mode="ReadOnly" />
                <br />
                idno:
                <asp:DynamicControl runat="server" DataField="idno" Mode="ReadOnly" />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #E2DED6; font-weight: bold;color: #333333;">pname:
                <asp:DynamicControl runat="server" DataField="pname" Mode="ReadOnly" />
                <br />
                fname:
                <asp:DynamicControl runat="server" DataField="fname" Mode="ReadOnly" />
                <br />
                age:
                <asp:DynamicControl runat="server" DataField="age" Mode="ReadOnly" />
                <br />
                sex:
                <asp:DynamicControl runat="server" DataField="sex" Mode="ReadOnly" />
                <br />
                ad1:
                <asp:DynamicControl runat="server" DataField="ad1" Mode="ReadOnly" />
                <br />
                ad2:
                <asp:DynamicControl runat="server" DataField="ad2" Mode="ReadOnly" />
                <br />
                dis:
                <asp:DynamicControl runat="server" DataField="dis" Mode="ReadOnly" />
                <br />
                pin:
                <asp:DynamicControl runat="server" DataField="pin" Mode="ReadOnly" />
                <br />
                bgroup:
                <asp:DynamicControl runat="server" DataField="bgroup" Mode="ReadOnly" />
                <br />
                ptype:
                <asp:DynamicControl runat="server" DataField="ptype" Mode="ReadOnly" />
                <br />
                idno:
                <asp:DynamicControl runat="server" DataField="idno" Mode="ReadOnly" />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    </p>
</asp:Content>

