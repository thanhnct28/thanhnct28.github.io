using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using DAL;
using Utilties;

public partial class PasswordRecovery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRecovery_Click(object sender, EventArgs e)
    {
        Member member = new Member();
        string username=Toollist.removeSpecialCharacters(txtUsername.Text);
        string email=txtEmail.Text.Trim();
       string status= member.PasswordRecovery(username, email);
       Utilties.Alert.Show(status);
    }
}
