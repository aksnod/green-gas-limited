using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class StudentZone_AdmitCard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnGetAdmit_Click(object sender, EventArgs e)
    {
            string cmd = "Select *from TblAdmitCard where EmailId='" + TxtEmail.Text + "' and UName='" + TxtName.Text + "'";
            DBManager dm = new DBManager();
            DataTable dt = dm.ExecuteMySelect(cmd);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Printadmitcard.aspx?EmailId=" + TxtEmail.Text);
            }
            else
            {
                Response.Write("<script>alert('Invalid Details.');</script>");
            }
    }
}