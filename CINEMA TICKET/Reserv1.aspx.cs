using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reserv1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < 7; i++)
        {
            DropDownList2.Items.Add(DateTime.Now.AddDays(+i).ToShortDateString());
        }
        //Label7.Text = DateTime.Now.ToString();

    }
    /*private void fillDropDown()
    {
        ArrayList arrList = new ArrayList();
        for (int i = 0; i < 7; i++)
        {
            arrList.Add(System.DateTime.Today.AddDays(i));
        }

        ddlDate.DataSource = arrList;
        ddlDate.DataBind();
    }*/


    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Add("movie", DropDownList1.SelectedValue);
        Session.Add("date", DropDownList2.SelectedValue);
        Session.Add("time", DropDownList3.SelectedValue);
        Response.Redirect("Reserv2.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("LHome.aspx");
    }
}