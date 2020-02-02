using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.IO;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMBB1
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        #region Send Email
        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            try
            {
                string reCaptchaSecret = "[YOUR SITE KEY]";
                string reCaptchaRequest = "";

                if (Request.Form["g-recaptcha-response"] != null) { reCaptchaRequest = Request.Form["g-recaptcha-response"].ToString(); }

                if (reCAPTCHA.CheckReCaptcha(reCaptchaSecret, reCaptchaRequest))
                {
                    StreamReader reader = new StreamReader(Server.MapPath("Email_v2.0.html"));
                    string readFile = reader.ReadToEnd();
                    string myString = "";
                    myString = readFile;

                    myString = myString.Replace("$$Name$$", txtName.Text.Trim());
                    myString = myString.Replace("$$Email$$", txtEmail.Text.Trim());
                    myString = myString.Replace("$$Subject$$", ddlSubject.SelectedItem.Value);
                    myString = myString.Replace("$$Message$$", txtMessage.Text.Trim());

                    SmtpClient smtpClient = new SmtpClient();
                    MailMessage message = new MailMessage();
                    MailAddress fromAddress = new MailAddress(ConfigurationManager.AppSettings["EmailInfo"].ToString(), "mimtiyaz - CodeCanyon");

                    message.From = fromAddress;
                    message.To.Add(txtEmail.Text.Trim().Replace("'", "''"));
                    message.Bcc.Add("info@ittutorials.in");
                    message.Subject = "Thank you for your interest in my application.";
                    message.IsBodyHtml = true;

                    // Message body content
                    message.Body = myString.ToString();

                    smtpClient.Send(message);
                    reader.Dispose();

                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Info", "<script type='text/javascript'>Notification('An email has been sent to your email address successfully, please check your email.','success');</script>", false);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Info", "<script type='text/javascript'>Notification('Please confirm that you are not a robot.','danger');</script>", false);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Info", "<script type='text/javascript'>Notification('" + ex.Message + "','danger');</script>", false);
            }
            finally { }
        }
        #endregion
    }
}