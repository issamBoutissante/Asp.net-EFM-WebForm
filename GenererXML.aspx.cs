using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADO_ASP
{
    public partial class WebForm4 : System.Web.UI.Page
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

        protected void GenereFichierXML_Click(object sender, EventArgs e)
        {
            Database.Execute(Connection =>
            {
                DataSet dataSet = new DataSet();
                new SqlDataAdapter()
                {
                    SelectCommand = new SqlCommand("select * from Stagiaire where numStage=@nStag", Connection)
                    {
                        Parameters =
                        {
                            new SqlParameter("@nStag",Stages.SelectedValue.ToString())
                        }
                    }
                }.Fill(dataSet,"stagiaire");
                string path = Server.MapPath(@"~\XML\listeStagiaire.xml");
                dataSet.Tables["stagiaire"].WriteXml(path);
                Message.ForeColor = Color.Green;
                Message.Text = "le fichier a ete sauvegarder dans :      '"+path+"'";
            }, null,
            Error =>
            {
                Message.ForeColor = Color.Red;
                Message.Text = Error;
            });
        }
    }
}