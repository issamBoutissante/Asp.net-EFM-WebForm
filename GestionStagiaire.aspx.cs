using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADO_ASP
{
    public partial class WebForm2 : System.Web.UI.Page
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

        protected void Ajout_Click(object sender, EventArgs e)
        {
            Database.Execute(Connection =>
            {
                new SqlCommand("insert into Stagiaire values (@c,@n,@d,@e,@nS)", Connection)
                {
                    Parameters =
                   {
                       new SqlParameter("@c",CodeStag.Text),
                       new SqlParameter("@n",NomStag.Text),
                       new SqlParameter("@d",DateInscr.Text),
                       new SqlParameter("@e",EmailStag.Text),
                       new SqlParameter("@nS",Stages.SelectedValue.ToString())
                   }
                }.ExecuteNonQuery();
                Message.ForeColor = Color.Green;
                Message.Text = "Termine";
            }, null, Error =>
            {
                Message.ForeColor = Color.Red;
                Message.Text = Error;
            });
        }

        protected void Supprimer_Click(object sender, EventArgs e)
        {
            Database.Execute(C =>
            {
                new SqlCommand("delete from Stagiaire where codeStg=@c",C)
                {
                    Parameters =
                    {
                        new SqlParameter("@c",Stagiaraire.SelectedValue.ToString()),
                    }
                }.ExecuteNonQuery();
                MessageSupp.ForeColor = Color.Green;
                MessageSupp.Text = "Termine";
            }, null, Error =>
            {
                MessageSupp.ForeColor = Color.Red;
                MessageSupp.Text = Error;
            });
        }
    }
}