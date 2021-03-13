using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
#pragma warning disable CS0252 
        if (Session["User"] == "")
#pragma warning restore CS0252 
        {
            mtvwRegister.ActiveViewIndex = 0;
        }
        else
        {
            mtvwRegister.ActiveViewIndex = 2;
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        CaptchaControl1.ValidateCaptcha(txtCapcha.Text.Trim());
        if (CaptchaControl1.UserValidated)
        {
            ValueObject.MemberVO mem = new ValueObject.MemberVO();
            mem.Username = txtUserName.Text;
            mem.Password = txtConfirmPassword.Text;
            mem.MemberName = txtFullName.Text;
            bool gender;
            if (rdoMale.Checked)
                gender = true;
            else
                gender = false;
            mem.Gender = gender;
            mem.Birthday = DateTime.Parse(txtDOB.Text);
            mem.Address = txtAddress.Text;
            mem.City = txtCity.Text;
            mem.PhoneNo = txtPhone.Text;
            mem.Email = txtEmail.Text;
            mem.RoleID = 2;
            BLL.BLL_Member bm = new BLL.BLL_Member();
            bool st = bm.InsertMember(mem);
            if (st)
            {
                mtvwRegister.ActiveViewIndex = 1;
            }
            else
                Utilties.Alert.Show("Tên đăng nhập hoặc email đã có người dùng!");
        }
        else
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = "Mã không đúng."; 
        }
    }

}
