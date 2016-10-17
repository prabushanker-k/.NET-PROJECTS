using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Add("userid", TextBox1.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label4.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text =="admin" && TextBox2.Text == "admin")
        {
            Response.Redirect("adminhome.aspx");
        }
        else 
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Sabareesh Murthy/Documents/Visual Studio 2010/WebSites/OCTR/OCTR.mdb");
            OleDbCommand cmd;
            int i = 0;
            String s;
            s = "select userid,password from login";
            con.Open();
            cmd = new OleDbCommand(s, con);
            OleDbDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if (Convert.ToString(rd["userid"]) == TextBox1.Text && Convert.ToString(rd["password"]) == TextBox2.Text)
                {
                    i = 1;
                    break;
                }
                else
                    i = 0;
            }
            con.Close();
            if (i == 1)
                Response.Redirect("LHome.aspx"); //?user="+TextBox1 .Text +"
            else
                Label4.Text = "Please check your UserID and Password!";
        }
    }
}