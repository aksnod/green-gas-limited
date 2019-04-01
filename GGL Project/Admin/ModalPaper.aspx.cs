using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ModalPaper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnUpload_Click(object sender, EventArgs e)
    {
string  c="Insert into TblUpload(topic,uploaddt,filepath) values('"+TxtTitle.Text+"','"+DateTime.Now.ToString()+"','"+FUFile.FileName+"')";
    DBManager dm=new DBManager();
    bool x = dm.ExecuteMyInsertUpdateOrDelete(c);
    TxtTitle.Text = "";
    FUFile.SaveAs(Server.MapPath("../UserFiles/" + FUFile.FileName));
    if (x == true)
    {
        Response.Write("<script>alert('File Uploaded SuccessFully.');</script>");
    }
    else
    {
        Response.Write("<script>alert('File Is not Uploaded.');</script>");
    }
    }
}