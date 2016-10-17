using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        Label8.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Sabareesh Murthy/Documents/Visual Studio 2010/WebSites/OCTR/OCTR.mdb");
        OleDbCommand cmd;
       /* String c;
        c = "select * from login";
        con.Open();
        cmd = new OleDbCommand(c, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        while  (rd.Read())
        {
            if (Convert.ToString(rd["userid"]) == TextBox3.Text.ToString())
            {
                Label8.Text = "Userid already exists";
            }
            else
            {*/
                if (TextBox4.Text == TextBox5.Text)
                {
                    int i;
                    String s;
                    s = "insert into login values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "')";
                    con.Open();
                    cmd = new OleDbCommand(s, con);
                    i = cmd.ExecuteNonQuery();
                    if (i == 1)
                    {
                        Label8.Text = "Successfully Registered Now LogIn!";
                        TextBox1.Text = " ";
                        TextBox2.Text = " ";
                        TextBox3.Text = " ";
                        TextBox4.Text = " ";
                        TextBox5.Text = " ";
                        TextBox6.Text = " ";
                    }
                    else
                    {
                        Label8.Text = "Failed to Register Try Again!";
                        con.Close();
                    }

                }
                else
                {
                    Label8.Text = "Password does not Match! type the password again!";
                }
            //}
            
        //}
     }
 }