using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class Confirmation : System.Web.UI.Page
{
    
        
    protected void Page_Load(object sender, EventArgs e)
    {
        Button3.Visible = false;
        Button3.Enabled = false;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        Label6.Text = "";
        Button3.Visible = false;
        Button3.Enabled = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button3.Visible = true;
        Button3.Enabled = true;
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Sabareesh Murthy/Documents/Visual Studio 2010/WebSites/OCTR/OCTR.mdb");
        OleDbCommand cmd;
        String s;
        s = "select * from reserved";
        con.Open();
        cmd = new OleDbCommand(s, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        /*while (rd.Read())
        {
            if (Convert.ToString(rd["confirmcode"]) == TextBox2.Text.ToString ())
            {
                Button3.Visible = true;
                Button3.Enabled = true;
            }
            else
            {
                Label6.Text = "The Confirmation code does not exists!";
            }
        }*/
        con.Close();
    }
    
    protected void AccessDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Sabareesh Murthy/Documents/Visual Studio 2010/WebSites/OCTR/OCTR.mdb");
        OleDbCommand cmd1;
        int i;
        String s;
        //String str1 = TextBox2.Text.ToString();
        //Int32 a = Convert.ToInt32(str1);
        s = "DELETE FROM reserved WHERE confirmcode = " + TextBox2.Text.ToString ();
        con.Open();
        cmd1 = new OleDbCommand(s, con);
        i = cmd1.ExecuteNonQuery();
        if (i == 1)
            Label6.Text = "Payment Received & Delete from the list!";
        else
            Label6.Text = "Failed to Delete from the list!";
        con.Close();
    }
}