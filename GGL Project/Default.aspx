<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/DefaultStyle.css" rel="stylesheet" type="text/css" />
    <script>
        function enquiryPopup()
        {
            var para = document.getElementById("PEnquiry");
            var lnk = document.getElementById("LnkEnquiry");
            var status = para.style.display;
            if (status != "block")
            {
                para.style.display = "block";
                lnk.style.background = "red";
            }
            else
            {
                para.style.display = "none";
                lnk.style.background ="green";
            }
        }
    </script>
    <!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
    window.$zopim || (function (d, s) {
        var z = $zopim = function (c) {
            z._.push(c)
        }, $ = z.s =
        d.createElement(s), e = d.getElementsByTagName(s)[0]; z.set = function (o) {
            z.set.
            _.push(o)
        }; z._ = []; z.set._ = []; $.async = !0; $.setAttribute('charset', 'utf-8');
        $.src = '//v2.zopim.com/?45kOxmdB24P3fgWCNftTzWLJzpeFAGPr'; z.t = +new Date; $.
        type = 'text/javascript'; e.parentNode.insertBefore($, e)
    })(document, 'script');
</script>
<!--End of Zopim Live Chat Script-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box">
        <div id="lmain">
            <marquee direction="up" onmouseover="stop()" onmouseout="start()" height="400px" behavior="alternate" scrolldelay="100">
                <asp:GridView ID="g1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <%#Eval("msg") %>
                                <br />
                                <asp:Label ID="LblDate" runat="server" Text='<%#Eval("ndt") %>' ForeColor="red"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [msg], [ndt] FROM [Notification]"></asp:SqlDataSource></marquee>
        </div>       
        <div id="rmain">
            <h4>
            Polytechnics are the  premier institutions for making technical professional in India.
             polytechnic college are affiliated under the Board of Technical Education and All India Council of Technical Education(AICTE).
            It has started the community Polytechnic schematic of ministry of Human  Resource Development of Government of India.
            It provides diploma and post-diploma in technical education and cources.Many Polytechnics also have dormitories (hostel) for boys,
            canteen facilities and a sports room for recreational activities. It has a history of placing its students in varius reputed companies.
             The training & placements cell of the college is responsible for providing the trainings to the students and for arranging the campus drives.<br />
            Polyguide.com is a web portal that provide all the information's to the students who want to get admission in polytechnic institutes.
             These information includes about the entrance exam for the admission,how to prepare for the exam etc.
             This portal will provides materials for the preparation of entrance exam and also about the important dates announced by Board of Technical Education.
                </h4> </div>
    </div>
    <a href="#" id="LnkEnquiry" onclick="enquiryPopup()">Enquiry</a>
    <br />
    <p id="PEnquiry">
        <span style="font-size:25px;color:black;font-style:oblique;padding:20px 20px">Enquiry Form</span><br />
        <asp:TextBox ID="TxtName" runat="server" placeholder="Name....." />
        <br /><br />
        <asp:TextBox ID="TxtMobNo" runat="server" placeholder="MObile No....." TextMode="Number"/>
        <br /><br />
        <asp:TextBox ID="TxtEmailId" runat="server" placeholder="EmailID....." TextMode="Email"/>
        <br /><br />
        <asp:TextBox ID="TxtMessage" runat="server" placeholder="Type Your Message here...." Textmode="MultiLine"/>
        <br /><br />
        <asp:Button ID="BtnSaveEnquiry" runat="server" Text="Submit" BackColor="Navy" ForeColor="White" Font-Size="Large" OnClick="BtnSaveEnquiry_Click" />
    </p>
</asp:Content>


















