using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Drawing;
using System.Drawing.Imaging;

public partial class Reserv4 : System.Web.UI.Page
{
    private static Bitmap printscreen;

    private static Graphics graph;

    private void PrintScreen()
    {
        Reserv4 Screen;
        //Screen.Form;

       // printscreen = new Bitmap(Screen..Bounds.Width, Screen.PrimaryScreen.Bounds.Height);

        graph = Graphics.FromImage(printscreen);

        graph.CopyFromScreen(0, 0, 0, 0, printscreen.Size);

        printscreen.Save(@"C:\printscreen.jpg", ImageFormat.Jpeg);

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Sabareesh Murthy/Documents/Visual Studio 2010/WebSites/OCTR/OCTR.mdb");
        OleDbCommand cmd;
        String s;
        s = "select * from reserved where creditcardno='" + Session["cardno"] + "'";
        con.Open();
        cmd = new OleDbCommand(s, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        rd.Read();
        Label17.Text = "EXCINI0"+rd["confirmcode"].ToString();
        rd.Close();
        con.Close();
        Label5.Text = Session["movie"].ToString();
        Label3.Text = Session["date"].ToString();
        Label7.Text = Session["time"].ToString();
        Label9.Text = Session["screen"].ToString();
        Label11.Text = Session["class"].ToString();
        Label13.Text = Session["numticket"].ToString();
        Label15.Text = Session["amount"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reserv5.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       // PrintScreen();
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {

    }
}