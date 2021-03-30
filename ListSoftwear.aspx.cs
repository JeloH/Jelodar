using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;

using System.Data;
using System.Data.SqlClient;



public partial class ListSoftwear : System.Web.UI.Page
{


    SqlConnection sql_conn = new SqlConnection();
    SqlCommand sql_comm = new SqlCommand();
    DataSet ds = new DataSet();
    SqlDataAdapter sql_da = new SqlDataAdapter();

   public static DataTable dt=new DataTable();

    string str_conn;

    string subject_post = "";
    string type = "";



    PagedDataSource pagedData = new PagedDataSource();
    int CurPage = 1;

    

     void Page_Load(object sender, EventArgs e)
    {
        doPaging();
        try
        {
         
            SetDataTable___CheckUrl_Type_Subject();


        }

        catch (Exception)
        {
            Response.Redirect(Class1.urlAddress);
        }

        Class1.urlAddress = Page.Request.Url.ToString();
        doPaging();
    }

    
    public DataTable getTheData()
    {
      DataSet DS = new DataSet();

        string str1 = "";
        str1 = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;
        SqlConnection myConnection = new SqlConnection(str1);


       // DataSet DS = new DataSet();
      //  SqlConnection myConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True;User Instance=True");

        SqlDataAdapter objSQLAdapter = new SqlDataAdapter("SELECT * FROM demah.send_softwear", myConnection);
        objSQLAdapter.Fill(DS, "Table1");


        return DS.Tables[0];

    }

  

    public DataTable SetDataTable___CheckUrl_Type_Subject()
    {

        DataSet DS = new DataSet();

        subject_post = Page.Request.QueryString["subject_post"].ToString();

        type = Page.Request.QueryString["type"].ToString();


        string str1 = "";
        str1 = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;
        SqlConnection con = new SqlConnection(str1);

        con.Open();

        string strQry = "SELECT Count(*)  FROM demah.send_softwear WHERE subject_post = @subject_post and type = @type";
        SqlCommand cmd2 = new SqlCommand(strQry, con);
        cmd2.CommandType = CommandType.Text;

        SqlParameter prm = new SqlParameter("@subject_post", SqlDbType.VarChar, 200);
        prm.Direction = ParameterDirection.Input;
        prm.Value = subject_post;
        cmd2.Parameters.Add(prm);

        prm = new SqlParameter("@type", SqlDbType.VarChar, 50);
        prm.Direction = ParameterDirection.Input;
        prm.Value = type;
        cmd2.Parameters.Add(prm);





        
       


        int intRecs = (int)cmd2.ExecuteScalar();

        if (intRecs > 0)
        {

            SetDataTableViewList();
        }

        else
        {

            Response.Redirect(Class1.urlAddress);
        }


        return ds.Tables[0];

    }


    public void SetDataTableViewList()
    {
       // DataSet DS = new DataSet();

        string str1 = "";
        str1 = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;
        SqlConnection conn = new SqlConnection(str1);

        ds.Clear();

        str_conn = str1;
        sql_conn.ConnectionString = str_conn;
        sql_comm.Connection = sql_conn;
        sql_da.SelectCommand = new SqlCommand();
        sql_da.SelectCommand.Connection = sql_conn;
        sql_da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //            cmd.CommandType = CommandType.StoredProcedure;;
        //  sql_da.SelectCommand.CommandText = "SELECT * FROM demah.send_softwear WHERE subject_post = @subject_post and type = @type";

        sql_da.SelectCommand.CommandText = "demah.StoredProcedure1";

        sql_da.SelectCommand.Parameters.AddWithValue("@subject_post", Request.QueryString["subject_post"]);
        sql_da.SelectCommand.Parameters.AddWithValue("@type", Request.QueryString["type"]);


        sql_conn.Open();
        sql_da.Fill(ds, "demah.send_softwear");
        sql_conn.Close();

        GridView1.DataSource = ds;
        GridView1.DataMember = "demah.send_softwear";
        GridView1.DataBind();
        ListSoftwear.dt = ds.Tables[0];

         ds.Clear();


         
    }






    void doPaging()
    {

        pagedData.DataSource = ListSoftwear.dt.DefaultView;

        pagedData.AllowPaging = true;
        pagedData.PageSize = 4;



        try
        {
            if (Request["Page"].ToString() != null)
            {
                CurPage = Int32.Parse(Request["Page"].ToString());
            }
            else
            {
                CurPage = 1;
            }

            pagedData.CurrentPageIndex = CurPage - 1;

        }

        catch

        (Exception ex)
        {

            pagedData.CurrentPageIndex = 0;

        }

        btnPrev.Enabled = (!pagedData.IsFirstPage);
        //btnPrev.Visible = (!pagedData.IsFirstPage); 

        btnFirst.Enabled = (!pagedData.IsFirstPage);

        btnNext.Enabled = (!pagedData.IsLastPage);
        //btnNext.Visible = (!pagedData.IsLastPage); 

        btnLast.Enabled = (!pagedData.IsLastPage);

        //pagedData.CurrentPageIndex = CurPage - 1; 

        lblCurrentPage.Text = "Page: " + CurPage.ToString() + " of " + pagedData.PageCount.ToString(); ;

        GridView1.DataSource = pagedData;
        GridView1.DataBind();

    }


    protected void btnPrev_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.CurrentExecutionFilePath + "?Page=" + (CurPage - 1));
    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.CurrentExecutionFilePath + "?Page=" + (CurPage + 1));
    }

    protected void btnFirst_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.CurrentExecutionFilePath + "?Page=" + (1));
    }

    protected void btnLast_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.CurrentExecutionFilePath + "?Page=" + (pagedData.PageCount));
    }




}
