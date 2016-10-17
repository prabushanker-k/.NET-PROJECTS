using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Reserv2 : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Sabareesh Murthy/Documents/Visual Studio 2010/WebSites/OCTR/OCTR.mdb");
    OleDbCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["movie"] != null && Session["date"] != null && Session["time"] != null)
        {
            String s;
            s= "select * from movie where movname='"+Session["movie"]+"'";
            con.Open();
            cmd = new OleDbCommand(s, con);
            OleDbDataReader rd = cmd.ExecuteReader();
            rd.Read();
            Label3.Text = Session ["date"].ToString ();
            Label5.Text = rd["movname"].ToString();
            Label7.Text = Session ["time"].ToString ();
            Label9.Text = rd["screen"].ToString();
            Label13.Text = rd["seats"].ToString();
            rd.Close();
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Add("screen", Label9.Text);
        Session.Add("class", DropDownList2.SelectedValue );
        Session.Add("numticket", DropDownList1.SelectedValue );
        Response.Redirect("Reserv3.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reserv1.aspx");
    }
}