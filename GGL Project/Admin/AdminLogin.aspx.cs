using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        
        DBManager dm = new DBManager();
        EnCryptionManager em = new EnCryptionManager();
        String epass = em.EncryptCode(Txtpassword.Text);
        string cmd = "select *from Login where userid='" + TxtAdminid.Text + "' and pass='" + epass + "' and status=true";
        DataTable dt = dm.ExecuteMySelect(cmd);
        if (dt.Rows.Count > 0)
        {
            cmd = "Update Login set Lcount=(Lcount+1),LoginTime='" + DateTime.Now.ToString() + "' where userid='" + TxtAdminid.Text + "' and pass='" + epass + "'";
            bool x = dm.ExecuteMyInsertUpdateOrDelete(cmd);
            Session["adminid"] = TxtAdminid.Text;
            Response.Redirect("~/Admin/AdminHome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid userid or password.');</script>");
        }
    }
    }