using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/Prabu~HMS1/App_Data/hsm.mdb");

        OleDbCommand cmd;
        int i;
        string s;
        s = "select * from dlogin ";
        con.Open();
        cmd = new OleDbCommand(s, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            if (Convert.ToString(rd["did"]) == TextBox1.Text && Convert.ToString(rd["dpass"]) == TextBox2.Text)
            {
                Response.Redirect("pdet.aspx");
            }
            else
            {
                Response.Redirect ("doc.aspx");
            }
        }
        con.Close();
    }
}