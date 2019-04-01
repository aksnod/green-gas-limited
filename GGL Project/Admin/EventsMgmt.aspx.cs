using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EventsMgmt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btnsave_Click(object sender, EventArgs e)
    {
        string c = "Insert into Notification(msg,ndt) values('" + TxtNotification.Text + "','" + DateTime.Now.ToString() + "')";
        DBManager dm = new DBManager();
        bool x = dm.ExecuteMyInsertUpdateOrDelete(c);
        GVNotification.DataBind();
        TxtNotification.Text = "";
        if (x == true)
            Response.Write("<script>alert('Notificatiomn Saved.');</script>");
        else
            Response.Write("<script>alert('Notification not saved.');</script>");
    }
}