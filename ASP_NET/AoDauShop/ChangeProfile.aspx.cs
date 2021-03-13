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
using ValueObject;
using DAL;

public partial class ChangeProfile : System.Web.UI.Page
{
    MemberVO memVO;
    DAL.Member mem;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            memVO = new MemberVO();
            mem = new DAL.Member();
            memVO = mem.SelectByUserName(Session["User"].ToString());
            txtUserName.Text = memVO.Username;
            txtFullName.Text = memVO.MemberName;
            if (memVO.Gender == true)
                rdoMale.Checked = true;
            else
                rdoFemale.Checked = true;
            txtDOB.Text = memVO.Birthday.ToString();
            txtAddress.Text = memVO.Address;
            txtCity.Text = memVO.City;
            txtPhone.Text = memVO.PhoneNo;
            txtEmail.Text = memVO.Email;

        }
        if (Session["User"].ToString() == "")
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
        try
        {
            bool gender;
            mem = new Member();
            MemberVO memvo = new MemberVO();
            memvo.MemberID = new Member().SelectByUserName(Session["User"].ToString()).MemberID;
            memvo.RoleID = 2;
            if (rdoMale.Checked)
                memvo.Gender = true;
            else
                memvo.Gender = false;
            memvo.Birthday = DateTime.Parse(txtDOB.Text);
            memvo.Address = txtAddress.Text;
            memvo.City = txtCity.Text;
            memvo.PhoneNo = txtPhone.Text;
            memvo.Email = txtEmail.Text;
            string status=mem.ChangeProfile(memvo);
            Utilties.Alert.Show(status);
        }
        catch (Exception ex)
        {
            Utilties.Alert.Show("Có lỗi xảy ra:"+ex.Message);
        }
    }
}
