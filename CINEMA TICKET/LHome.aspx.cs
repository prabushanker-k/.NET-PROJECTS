using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.IO;


public partial class LHome : System.Web.UI.Page 
{
    OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Sabareesh Murthy/Documents/Visual Studio 2010/WebSites/OCTR/OCTR.mdb");
    OleDbCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            //var a = Request.QueryString["user"];
            var a = Session["userid"];
            String s;
            s = "select * from login where userid='" + a + "'";
            con.Open();
            cmd = new OleDbCommand(s, con);
            OleDbDataReader rd = cmd.ExecuteReader();
            rd.Read();
            Label1.Text = rd["fname"].ToString();
            Label2.Text = rd["lname"].ToString();
            rd.Close();
            con.Close();
        }
        else
        {
            Label1.Text = "Guest";
            Label2.Text = "";
        }
    }

}