using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {       

    }
    protected void btnlogin_Click(object sender, ImageClickEventArgs e)
    {
        DBManager dm=new DBManager();
        EnCryptionManager em=new EnCryptionManager();
        string epass=em.EncryptCode(TxtPass.Text);
        string cmd = "Select *from Login where userid='"+TxtUID.Text+"' and pass='"+epass+"' and status=true ";
        DataTable dt = dm.ExecuteMySelect(cmd);
        if (dt.Rows.Count > 0)
        {
            cmd = "Update Login set Lcount=(Lcount+1),LoginTime='" + DateTime.Now.ToString() + "' where userid='" + TxtUID.Text + "' and pass ='" + epass + "'";
            bool x = dm.ExecuteMyInsertUpdateOrDelete(cmd);
            Session["userid"] = TxtUID.Text;
            Response.Redirect("~/StudentZone/Home.aspx");
        }
        else 
        {
            Response.Write("<script>alert('Invalid user Id');</script>");
        }
    }
}