using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
/// <summary>
/// Summary description for DBManager
/// </summary>
public class DBManager
{
    OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source='C:\Users\Sachchidanand Shukla\Documents\Visual Studio 2012\WebSites\MyProject\App_Data\Tbl_Student.accdb';Persist Security Info=True");
	public DBManager()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool ExecuteMyInsertUpdateOrDelete(string YourCommand)
    {
        OleDbCommand cmd = new OleDbCommand(YourCommand,con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
            return true;
        else
            return false;
    }
    public DataTable ExecuteMySelect(string YourCommand)
    {
        OleDbDataAdapter da = new OleDbDataAdapter(YourCommand,con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}


















