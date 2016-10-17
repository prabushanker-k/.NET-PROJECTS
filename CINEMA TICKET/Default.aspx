<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style3
        {
            color: #800000;
            font-size: xx-large;
            position: relative;
        }
        .style4
        {
            font-size: x-large;
            color: #3399FF;
        }
        .style5
        {
            font-size: large;
        }
        .style6
        {
            font-size: xx-large;
            color: #000000;
        }
        .style7
        {
            color: #CC0000;
        }
        .style8
        {
            color: #000000;
        }
        .style9
        {
            font-size: medium;
        }
        #dewplayer
        {
            z-index: 1;
            left: 0px;
            top: 0px;
            position: relative;
            height: 23px;
            right: 0px;
        }
        #dewplayer0
        {
            z-index: 1;
            left: 557px;
            top: 743px;
            position: absolute;
        }
        #dewplayer1
        {
            z-index: 1;
            left: 557px;
            top: 743px;
            position: absolute;
        }
        #dewplayer0
        {
            z-index: 1;
            left: 457px;
            top: 506px;
            position: absolute;
            height: 42px;
            right: 298px;
        }
        #dewplayer0
        {
            z-index: 1;
            left: 0px;
            top: 0px;
            position: relative;
            height: 23px;
            right: 0px;
        }
        #dewplayer0
        {
            z-index: 1;
            left: 0px;
            top: 0px;
            position: relative;
            height: 23px;
            right: 0px;
        }
        #dewplayer1
        {
            z-index: 1;
            left: 0px;
            top: 0px;
            position: relative;
            height: 23px;
            right: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h1 class="style3">
        &nbsp;Online Cinema Ticket Reservation System!
        <br />
    </h1><br />
    <center class="style6">Welcome to Express Cinemas!</center>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="style4">- Its Show Time!</span><span class="style5"><br />
    <br />
        <p class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Upcoming Movies!" 
            style="font-size: x-large; color: #CC0000; text-decoration: underline"></asp:Label>
        </p>
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <iframe src="//www.youtube.com/embed/lbJO8MBCyp4?feature=player_detailpage" 
                frameborder="0" allowfullscreen style="height: 250px; width: 380px" 
                id="I1" name="I1"></iframe>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <iframe width="380" height="250" 
                src="//www.youtube.com/embed/hY972oaMqAc?feature=player_detailpage" 
                frameborder="0" allowfullscreen id="I2" name="I2"></iframe><br />
        </div>
    <br />
    <center>
        <br />
    New Customer Click to
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large" 
        NavigateUrl="~/Register.aspx">Register!</asp:HyperLink>
    <br />
    <br />
    Existing Customer Click to
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="X-Large" 
        NavigateUrl="~/Login.aspx">Login!</asp:HyperLink>
    <br />
    <br />
    </center>
    <span class="style4"><p class="style4">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Hear Free Music!" 
            style="font-size: x-large; color: #CC0000; text-decoration: underline"></asp:Label>
&nbsp;<br />
    </p>
    <p class="style4">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Engae_Poguthu_Vanam - Kochadaiyaan</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <object type="application/x-shockwave-flash" data="dewplayer-vol.swf?mp3=Images/Engae.mp3"
        width="240" id="dewplayer">
        <param name="wmode" value="transparent" />
        <param name="movie" 
            value="dewplayer-vol.swf?mp3=Images/Engae.mp3" />
    </object>
    </p>
    <p class="style4">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Po_Indru_Neeyaga - Vellaiyilla Pattathari</span>&nbsp;&nbsp;&nbsp;&nbsp;
    <object type="application/x-shockwave-flash" data="dewplayer-vol.swf?mp3=Images/Po.mp3"
        width="240" id="dewplayer0">
        <param name="wmode" value="transparent" />
        <param name="movie" 
            value="dewplayer-vol.swf?mp3=Images/Po.mp3" />
    </object>
    </p>
    <p class="style4">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kandangi_Kandangi - Jilla</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <object type="application/x-shockwave-flash" data="dewplayer-vol.swf?mp3=Images/Kandangi.mp3"
        width="240" id="dewplayer1">
        <param name="wmode" value="transparent" />
        <param name="movie" 
            value="dewplayer-vol.swf?mp3=Images/Kandangi.mp3" />
    </object>
    </p>
    </span>
    <br />
    </span>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        You can also find me on&nbsp; 
    <a href="http://www.facebook.com/Sabareeshmurthy"
            title="">Facebook!</a>&nbsp;&nbsp; <a href="http://www.twitter.com/Sabareeshmurthy"
            title="">Twitter!</a><br />
    <br />
    
    <center class="style9">
        <span class="style8">CopyRight ©</span>
        <span class="style7">Sabareesh Murthy</span>
        <br />
        <br />
</center>
</asp:Content>
