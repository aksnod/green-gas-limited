using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
/// <summary>
/// Summary description for SMSSender
/// </summary>
public class SMSSender
{
    string UserName, UserKey, Sendeid;
	public SMSSender()
	{
        UserName = "BRIJESH";
        UserKey = "8620e45a26XX";
        Sendeid = "SPILKO";
	}
    public bool SendMySMS(string MobileNo, string Message)
    {
        string APIURL = "http://sms.bulkssms.com/submitsms.jsp?user="+UserName+"&key="+UserKey+"&mobile="+MobileNo+"&message="+Message+"&senderid="+Sendeid+"&accusage=1";
        WebClient wc = new WebClient();
        try
        {
            wc.DownloadString(APIURL);
            return true;
        }
        catch
        {
            return false;
        }
    }
}