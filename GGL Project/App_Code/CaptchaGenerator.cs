using System;
public class CaptchaGenerator
{
	public string GetCode()
	{
        string CaptchaCode = "";
        Random rd=new Random();
        int n1=rd.Next(65,90);
        char ch1=(char)n1;
         int n2=rd.Next(97,122);
        char ch2=(char)n2;
         int n3=rd.Next(48,57);
        char ch3=(char)n3;
         int n4=rd.Next(70,90);
        char ch4=(char)n4;
         int n5=rd.Next(80,120);
        char ch5=(char)n5;
        CaptchaCode=CaptchaCode + ch1 + ch2 + ch3 + ch4 + ch5;
        return CaptchaCode;
	}
}