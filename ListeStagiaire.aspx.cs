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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Login"] == null)
                {
                    Response.Redirect("~/PageConnection.aspx");
                }
                RefreshGrid();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            RefreshGrid();
        }
        private void RefreshGrid()
        {
            Database.Execute(Connection =>
            {

                DataTable table = new DataTable();
                new SqlDataAdapter()
                {
                    SelectCommand = new SqlCommand("select * from Stagiaire where numStage=@nStag", Connection)
                    {
                        Parameters =
                        {
                            new SqlParameter("@nStag",Stages.SelectedValue.ToString())
                        }
                    }
                }.Fill(table);
                StagiaireGridView.DataSource = table;
                StagiaireGridView.DataBind();
            }, null,
            Error =>
            {
                ErrorMessage.ForeColor = Color.Red;
                ErrorMessage.Text = Error;
            });
        }
    }
}