using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Colleges : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        string c = "INSERT into TblCollege values('" + TxtColName.Text + "'," + int.Parse(TxtColCode.Text) + ",'" + TxtCity.Text + "','" + DdlType.SelectedValue + "'," + int.Parse(TxtRank.Text) + ")";
        DBManager dm = new DBManager();
        bool b = dm.ExecuteMyInsertUpdateOrDelete(c);
        if (b == true)
            Response.Write("<script>alert('Record added successfully.');</script>");
        else
            Response.Write("<script>alert('Record not added.');</script>");
    }
}