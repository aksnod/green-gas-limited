using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSaveEnquiry_Click(object sender, EventArgs e)
    {
        string mycommand = "Insert into Tbl_Enquiry(UName,MobNo,EmailId,Msg,EnquiryDT) values('" + TxtName.Text + "','" + TxtMobNo.Text + "','" + TxtEmailId.Text + "','" + TxtMessage.Text + "','" + DateTime.Now.ToString() + "')";
            DBManager dm=new DBManager();
        bool status=dm.ExecuteMyInsertUpdateOrDelete(mycommand);
        if (status == true)
        {
            TxtEmailId.Text = "";
            TxtMessage.Text = "";
            TxtMobNo.Text = "";
            TxtName.Text = "";
            Response.Write("<script>alert('Thanks For Enquiry.');</script>");
        }
        else
        {
            Response.Write("<script>alert('Unable To save Enquiry.');</script>");
        }
    }
}