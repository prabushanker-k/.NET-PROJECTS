using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class MovieSetup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Add("modscreen", DropDownList1.SelectedValue);
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Sabareesh Murthy/Documents/Visual Studio 2010/WebSites/OCTR/OCTR.mdb");
        OleDbCommand cmd;
        con.Open();
        int i;
        String s;
        s = "update movie set movname='"+TextBox1 .Text+"', seats='" + TextBox2 .Text + "' where screen='" + Session["modscreen"] + "'";
        cmd = new OleDbCommand(s, con);
        i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            Label5.Text = "Movie Setup Completed!";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        else
        {
            Label5.Text = "Movie Setup Failed!";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        
        
    }
}