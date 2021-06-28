using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADO_ASP.ServiceReference1;

namespace ADO_ASP
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Login"] == null)
                {
                    Response.Redirect("~/PageConnection.aspx");
                }
            }
        }

        protected void Consumer_Click(object sender, EventArgs e)
        {
            try
            {
                StagiaireWebServiceSoapClient s = new StagiaireWebServiceSoapClient();
                nomStagGridView.DataSource = s.GestNomsStagiaire(Date1.Text, Date2.Text);
                nomStagGridView.DataBind();
            }
            catch(Exception ex)
            {
                ErrorMessage.Text = ex.Message;
            }
        }
    }
}