using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Reserv3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["class"].ToString() == "1st Class Rs.95")
        {
            String str=Session ["numticket"].ToString ();
            Int32 a=Convert.ToInt32(str);
            Int32 b = 95 * a;
            Label3.Text = "Rs."+b.ToString ();
            Session.Add("amount", Label3.Text);
        }
        else
        {
            String str = Session["numticket"].ToString();
            Int32 a = Convert.ToInt32(str);
            Int32 b = 75 * a;
            Label3.Text = "Rs."+b.ToString();
            Session.Add("amount", Label3.Text);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Sabareesh Murthy/Documents/Visual Studio 2010/WebSites/OCTR/OCTR.mdb");
        OleDbCommand cmd,cmd1,cmd2;
        int i;
        String s;
        s = "select * from movie where movname='" + Session["movie"] + "'";
        con.Open();
        cmd = new OleDbCommand(s, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        rd.Read();
        String str1=rd["seats"].ToString();
        Int32 a = Convert.ToInt32(str1);
        String str2=Session ["numticket"].ToString ();
        Int32 b=Convert.ToInt32(str2);
        Int32 c = a - b;
        //Label10.Text = Session["movie"].ToString() + c.ToString();
        //OleDbCommand update = new OleDbCommand("UPDATE movie  SET seats = '" + c   + "'WHERE movname = " + Session["movie"] + " ", con);
        //update.ExecuteNonQuery();
        String p = "insert into reserved (cardholdname,creditcardno,expiry,cvvno,amount)values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Label3.Text + "')";
        cmd2 = new OleDbCommand(p, con);
        i = cmd2.ExecuteNonQuery();
        String u = "update movie set seats='" + c + "' where movname='" + Session["movie"] + "'";
        cmd1 = new OleDbCommand(u, con);
        i = cmd1.ExecuteNonQuery();
        Session.Add("cardno", TextBox2.Text);
        rd.Close();
        con.Close();
        Response.Redirect("Reserv4.aspx");
    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reserv2.aspx");
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}