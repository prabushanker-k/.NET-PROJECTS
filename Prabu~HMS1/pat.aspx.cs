using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (CheckBox1.Checked)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/Prabu~HMS1/App_Data/hsm.mdb");
            
            OleDbCommand cmd;
            int i;
            string s;
            s = "insert into Table1 values('"+TextBox1 .Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+RadioButtonList1.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"','"+TextBox7.Text+"','"+DropDownList1.Text+"','"+DropDownList2.Text+"')";
            con.Open();
            cmd = new OleDbCommand(s, con);
            i = cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("patid.aspx");
        }
        else
        {
            Response.Redirect("pat.aspx");
        }
        
    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}