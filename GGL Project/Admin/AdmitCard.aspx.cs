using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdmitCard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DdlStuId_SelectedIndexChanged(object sender, EventArgs e)
    {
        string cm = "select uname from registration where email='" + DdlStuId.SelectedValue + "'";
        DBManager dm = new DBManager();
        DataTable dt= dm.ExecuteMySelect(cm);
        TxtName.Text = dt.Rows[0][0].ToString();
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        string c = "insert into TblAdmitCard(emailid,uname,examdate,venue,examtime) values('"+DdlStuId.SelectedValue+"','"+TxtName.Text+"','"+TxtExamDate.Text+"','"+TxtVenue.Text +"','"+TxtTime.Text+"')";
        DBManager dm = new DBManager();
        bool b = dm.ExecuteMyInsertUpdateOrDelete(c);
        if (b == true)
            Response.Write("<script>alert('Record added successfully.')</script>");
        else
            Response.Write("<script>alert('Record not added.');</script>");
    }
}