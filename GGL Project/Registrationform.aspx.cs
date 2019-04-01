using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registrationform : System.Web.UI.Page
{

    static string ccode;
    CaptchaGenerator ccg = new CaptchaGenerator();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            ccode = ccg.GetCode();
            LblCaptcha.Text = ccode;
            LblCaptcha.Font.Strikeout = true;
            LblCaptcha.Font.Size = FontUnit.Large;
        }
    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        string gender = "";
        if (RdBMale.Checked == true)
            gender = "Male";
        else
            gender = "Female";
        if (TxtCaptcha.Text == ccode)
        {
            string epass;
            EnCryptionManager em=new EnCryptionManager();
            epass = em.EncryptCode(TxtPass.Text);
            string MyCommand = "Insert into Registration values('" + TxtName.Text + "','" + TxtFName.Text + "','" + gender + "','" + TxtMobNo.Text + "','" + DDLQualification.SelectedValue + "','" + DDLSelectGroup.SelectedValue + "','" + TxtAddress.Text + "','" + TxtEmail.Text + "','" + FUPic.FileName + "','" + epass+ "','" + DateTime.Now.ToString() + "')";
            DBManager dm = new DBManager();
            bool b = dm.ExecuteMyInsertUpdateOrDelete(MyCommand);
            if (b == true)
            {
                MyCommand = "Insert into Login Values('" + TxtEmail.Text + "','" +epass + "',1,0,'')";
                b = dm.ExecuteMyInsertUpdateOrDelete(MyCommand);
                if (b == true)
                {
                    FUPic.SaveAs(Server.MapPath("~/UserPics/" + FUPic.FileName));
                    Response.Write("<script>alert('You are Registered Successfully.');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Unable to set login details.');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Sorry! Unable to Register.');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Captcha Code');</script>");
        }
        
    }
    protected void RefreshPic_Click(object sender, ImageClickEventArgs e)
    {
        ccode=ccg.GetCode();
        LblCaptcha.Text=ccode;
    }
}