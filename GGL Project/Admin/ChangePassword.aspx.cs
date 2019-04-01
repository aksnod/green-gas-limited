using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        EnCryptionManager em = new EnCryptionManager();
        string ecurpass = em.EncryptCode(TxtOPass.Text);
        string enewpass = em.EncryptCode(TxtNewPass.Text);
        string cmd = "Update Login set Pass='" + enewpass + "'where userid='" + Session["adminid"].ToString() + "' and pass='" + ecurpass + "'";
        DBManager dm = new DBManager();
        bool x = dm.ExecuteMyInsertUpdateOrDelete(cmd);
        if (x == true)
            Response.Write("<script>alert('Password updated Successfully.');</script>");
        else
            Response.Write("<script>alert('Unable To update password.your current password is invalid.');</script>");
    }
}