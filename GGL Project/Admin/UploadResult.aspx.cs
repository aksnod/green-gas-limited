using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UploadResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        string cmd = "insert into TblResult(UserId,TotalMarks,ObtainedMarks,Category,Rank) values('" + DdlUserId.SelectedValue + "','" + int.Parse(TxtTotal.Text) + "','" + int.Parse(TxtObtained.Text) + "','" + DdlCategory.SelectedValue + "','" + int.Parse(TxtRank.Text) + "')";
        DBManager dm = new DBManager();
        if (dm.ExecuteMyInsertUpdateOrDelete(cmd) == true)
        {
            Response.Write("<script>alert('Your Result is uploaded successfully...')</script>");
        }
        else
        {
            Response.Write("<script>alert('Your Result is not uploaded ')</script>");
        }
    }
}