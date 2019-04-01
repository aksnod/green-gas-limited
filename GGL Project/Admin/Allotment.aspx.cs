using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Allotment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            string userid=Request.QueryString["uid"].ToString();
            string c = "select Choice1,Choice2,Choice3,Choice4,Choice5 from TblChoice where userid='" + userid + "'";
            DBManager dm=new DBManager ();
            DataTable dt=dm.ExecuteMySelect(c);
            DDLCollege.Items.Add("--Select--");
            DDLCollege.Items.Add(dt.Rows[0][0].ToString());
            DDLCollege.Items.Add(dt.Rows[0][1].ToString());
            DDLCollege.Items.Add(dt.Rows[0][2].ToString());
            DDLCollege.Items.Add(dt.Rows[0][3].ToString());
            DDLCollege.Items.Add(dt.Rows[0][4].ToString());
        }
    }
    protected void BtnAllot_Click(object sender, EventArgs e)
    {
        string uid=Request.QueryString["uid"].ToString();
        string command = "Insert into TblFinalCollege(Userid,Allotedcollege) values('"+uid+"','"+DDLCollege.SelectedValue+"')";
                DBManager dm=new DBManager ();
                bool b= dm.ExecuteMyInsertUpdateOrDelete(command);
        if(b==true)
        {
            Response.Write("<script>alert('College Alloted Successfully');window.location.href='CollegeAllotment.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('College Alloted Failed.');</script>");
        }


    }
}