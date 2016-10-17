using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class ScrShot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Sabareesh Murthy/Documents/Visual Studio 2010/WebSites/OCTR/OCTR.mdb");
        OleDbCommand cmd1,cmd2,cmd3,cmd4,cmd5;
       // String s1="Screen1";
        Label2.Text = "";
        con.Open();
        
        String a = "Select * from screen where scr='Screen1'"; 
        cmd1 = new OleDbCommand(a, con);
        OleDbDataReader rd1 = cmd1.ExecuteReader();
        rd1.Read();
        Image2.ImageUrl = "~/Screenshot/" +rd1["image"].ToString() + "";
        rd1.Close();

        String b = "Select * from screen where scr='Screen2'";
        cmd2 = new OleDbCommand(b, con);
        OleDbDataReader rd2 = cmd2.ExecuteReader();
        rd2.Read();
        Image3.ImageUrl = "~/Screenshot/" + rd2["image"].ToString() + "";
        rd2.Close();

        String c = "Select * from screen where scr='Screen3'";
        cmd3 = new OleDbCommand(c, con);
        OleDbDataReader rd3 = cmd3.ExecuteReader();
        rd3.Read();
        Image4.ImageUrl = "~/Screenshot/" + rd3["image"].ToString() + "";
        rd3.Close();

        String d = "Select * from screen where scr='Screen4'";
        cmd4 = new OleDbCommand(d, con);
        OleDbDataReader rd4 = cmd4.ExecuteReader();
        rd4.Read();
        Image5.ImageUrl = "~/Screenshot/" + rd4["image"].ToString() + "";
        rd4.Close();

        String f = "Select * from screen where scr='Screen5'";
        cmd5 = new OleDbCommand(f, con);
        OleDbDataReader rd5 = cmd5.ExecuteReader();
        rd5.Read();
        Image6.ImageUrl = "~/Screenshot/" + rd5["image"].ToString() + "";
        rd5.Close();

        con.Close();
 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        FileUpload2.Dispose ();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Add("scr", DropDownList1.SelectedValue);
        SetImage();
    }
    protected void SetImage()
    {
        if (FileUpload2.HasFile)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Sabareesh Murthy/Documents/Visual Studio 2010/WebSites/OCTR/OCTR.mdb");
            OleDbCommand cmd;
            String fileName = FileUpload2.FileName.ToString();
            String uploadFolderPath = "~/C:/Users/Sabareesh Murthy/Documents/Visual Studio 2010/WebSites/OCTR/Screenshot/";
            String filePath = HttpContext.Current.Server.MapPath(uploadFolderPath);
            FileUpload2.SaveAs(filePath + "\\" + fileName);
            con.Open();
            int i;
            //String abc = "update screen set image= '" + fileName  + "' where screen= '" + Session["scr"] + "' ";
            String abc="update [screen] set [image]='"+fileName.ToString().Trim() +"' where scr='"+Session ["scr"]+"'";
            cmd = new OleDbCommand(abc, con);
            //OleDbDataReader rd = cmd.ExecuteReader();
            //s = "update movie set image='"+fileName+"' where screen='" + DropDownList1.SelectedValue + "'";
            i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                
            }
            else
            {

            }
          /*  OleDbDataReader rd = cmd.ExecuteReader();
            rd.Read();
            Image2.ImageUrl  = "~/Screenshot/" + rd["image"].ToString() + "";
            Image3.ImageUrl  = "~/Screenshot/" + rd["image"].ToString() + "";
            Image4.ImageUrl  = "~/Screenshot/" + rd["image"].ToString().Trim () + "";
            Image5.ImageUrl  = "~/Screenshot/" + rd["image"].ToString() + "";
            Image6.ImageUrl  = "~/Screenshot/" + rd["image"].ToString() + "";
            rd.Close(); */
            con.Close(); 
            /*String str = DropDownList1.SelectedValue.ToString();
            Int32 a = Convert.ToInt32(str);
            switch (a)
            {
                case 1:
                    {
                        
                        Image2.ImageUrl  = "~/Screenshot/" + fileName + "";
                        break;
                    }
                case 2:
                    {
                        Image3.ImageUrl = "~/Screenshot/" + fileName + "";
                        break;
                    }
                case 3:
                    {
                        Image4.ImageUrl = "~/Screenshot/" + fileName + "";
                        break;
                    }
                case 4:
                    {
                        Image5.ImageUrl = "~/Screenshot/" + fileName + "";
                        break;
                    }
                case 5:
                    {
                        Image6.ImageUrl = "~/Screenshot/" + fileName + "";
                        break;
                    }
            
            } */
            Label2.Text = "Upload status: File uploaded!";
        }
        else
        {
            Label2.Text = "The file could not be uploaded!";
        }
    }
    
}