using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SendSMS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSendSMS_Click(object sender, EventArgs e)
    {
        SMSSender ss = new SMSSender();
        bool b= ss.SendMySMS(TxtMobNo.Text, TxtMessage.Text);
        if (b == true)
        {
            TxtMessage.Text = "";
            TxtMobNo.Text = "";
        Response.Write("<script>alert('SMS Sent.');</script>");
        }
        else
      Response.Write("<script>alert('SMS not Sent.');</script>");
    }
}