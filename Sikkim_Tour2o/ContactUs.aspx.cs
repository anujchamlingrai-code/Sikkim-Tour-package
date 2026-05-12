using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Sikkim_Tour2o
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            // Get form values from the ASP.NET controls
            string name = txtName.Text.Trim();
            string subject = ddlSubject.SelectedValue;
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string message = txtMessage.Text.Trim();

            // Validate required fields
            if (string.IsNullOrEmpty(name))
            {
                ShowMessage("Please enter your name");
                return;
            }
            if (string.IsNullOrEmpty(subject))
            {
                ShowMessage("Please select a subject");
                return;
            }
            if (string.IsNullOrEmpty(email))
            {
                ShowMessage("Please enter your email");
                return;
            }
            if (string.IsNullOrEmpty(message))
            {
                ShowMessage("Please enter your message");
                return;
            }

            // Build WhatsApp message
            string whatsappMsg = "NEW CONTACT FORM SUBMISSION%0A%0A";
            whatsappMsg += "Name: " + Uri.EscapeDataString(name) + "%0A";
            whatsappMsg += "Subject: " + Uri.EscapeDataString(subject) + "%0A";
            whatsappMsg += "Email: " + Uri.EscapeDataString(email) + "%0A";
            if (!string.IsNullOrEmpty(phone))
            {
                whatsappMsg += "Phone: " + Uri.EscapeDataString(phone) + "%0A";
            }
            whatsappMsg += "Message: %0A" + Uri.EscapeDataString(message) + "%0A%0A";
            whatsappMsg += "---%0ASent from Sikkim Tourism Website";

            // WhatsApp number (without + sign)
            string whatsappNumber = "918617556300";

            // Create WhatsApp URL
            string whatsappUrl = "https://wa.me/" + whatsappNumber + "?text=" + whatsappMsg;

            // Redirect to WhatsApp
            Response.Redirect(whatsappUrl);
        }

        private void ShowMessage(string msg)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + msg + "');", true);
        }
    }
}