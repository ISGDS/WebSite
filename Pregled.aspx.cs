using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Pregled : System.Web.UI.Page
    {
        public static List<String> lista = new List<String>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["korisnik"]!=null)
            {
                Najaven.Text = (string)Session["korisnik"];
            }
             else if (!IsPostBack)
            {
                ispolniGrid1();
                ispolniGrid2();
                
            }
        }

        public void ispolniGrid1()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = "Data Source=localhost;Initial Catalog=Pubs;Integrated Security=SSPI";
            string query = "SELECT * FROM Sales";
            SqlCommand command = new SqlCommand(query, connection);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();

            try
            {
                connection.Open();
                adapter.Fill(ds, "Sales");
                gridCategories.DataSource = ds;
                gridCategories.DataBind();
                ViewState["dataset"] = ds;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                connection.Close();
            }
        }
    public void ispolniGrid2(){

    
    SqlConnection konekcija = new SqlConnection();
    SqlConnection connection = new SqlConnection();
    connection.ConnectionString = "Data Source=localhost;Initial Catalog=Pubs;Integrated Security=SSPI";
    string query = "SELECT * FROM Employee";
    SqlCommand command = new SqlCommand(query, connection);

    SqlDataAdapter adapter = new SqlDataAdapter(command);
    DataSet ds = new DataSet();

    try
    {
        connection.Open();
        adapter.Fill(ds, "Sales");
        gridCategories1.DataSource = ds;
        gridCategories1.DataBind();
        ViewState["dataset"] = ds;
    }
    catch (Exception ex)
    {
        Console.WriteLine(ex.Message);
    }
    finally
    {
        connection.Close();
    }
    }
        protected void gridCategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        

        protected void gridCategories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridCategories.PageIndex = e.NewPageIndex;
            gridCategories.SelectedIndex = -1;
            
            DataSet ds = (DataSet)ViewState["dataset"];
            gridCategories.DataSource = ds;
            gridCategories.DataBind();
        }

        
}