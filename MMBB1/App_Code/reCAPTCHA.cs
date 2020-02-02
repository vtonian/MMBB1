#region Namespace
using System;
using Newtonsoft.Json;
using System.Net;
using System.IO;
#endregion

/// <summary>
/// Summary description for reCAPTCHA
/// </summary>
public class reCAPTCHA
{
	public reCAPTCHA()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    #region Validate Google reCaptcha v2.0
    public static bool CheckReCaptcha(string captchaSecret, string captchaRequest)
    {
        bool cValidated = false;
        if (captchaRequest != null)
        {
            string captchaURL = String.Format("https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}", captchaSecret, captchaRequest);
            System.Net.HttpWebRequest wrq = (HttpWebRequest)WebRequest.Create(captchaURL);
            wrq.ContentType = "application/json";
            wrq.Method = "POST";
            using (var streamWriter = new StreamWriter(wrq.GetRequestStream()))
            {
                try
                {
                    var wrs = (HttpWebResponse)wrq.GetResponse();
                    using (var streamReader = new StreamReader(wrs.GetResponseStream()))
                    {
                        var result = streamReader.ReadToEnd();
                        if (result != "")
                        {
                            CaptchaResponse capResp = JsonConvert.DeserializeObject<CaptchaResponse>(result);
                            cValidated = capResp.success;
                        }
                    }
                }
                catch (WebException ex)
                {
                    if (ex.Status == WebExceptionStatus.ProtocolError)
                    {
                        //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Info", "<script type='text/javascript'>Notification('ERROR : " + ex.Response.ToString() + "\r\n\r\nexception = " + ex.Message + "\r\n','danger');</script>", false);
                    }
                }
            }
        }
        return cValidated;
    }
    public class CaptchaResponse
    {
        public bool success { get; set; }
        public string challenge_ts { get; set; }
        public string hostname { get; set; }
        public string errorCodes { get; set; }
    }
    #endregion
}