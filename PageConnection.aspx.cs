using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADO_ASP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Connection_Click(object sender, EventArgs e)
        {
            Database.Execute(Connection =>
            {
                int nombre = (int)new SqlCommand("select count(*) from Gestionnaire where pseudo=@ps and password=@pass;", Connection)
                {
                    Parameters =
                    {
                        new SqlParameter("@ps",Pseudo.Text),
                        new SqlParameter("@pass",Password.Text)
                    }
                }.ExecuteScalar();
                if (nombre!=0)
                {
                    Session["Login"] = true;
                    Response.Redirect("~/ListeStagiaire.aspx");
                }
                else
                {
                    Message.Text = "invalid pseudo ou password";
                }
            }, null, Error =>
            {
                Message.Text = Error;
            });
        }
    }
}