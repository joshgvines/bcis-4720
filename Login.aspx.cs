using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
//using System.Net.Mail;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn1_Click(object sender, EventArgs e)
    {
        // Set Null
        string UserID = "";
        string Password = "";

        // Create MyReader, myConnection, myCommand
        SqlDataReader MyReader;
        SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
        SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);

        // Assign MyReader, myConnection, myCommand
        myCommand.Connection = myConnection;
        myCommand.Parameters.AddWithValue("@email", TextBox1.Text);
        myCommand.Parameters.AddWithValue("@password", TextBox2.Text);

        myConnection.Open();
        MyReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

        // Read Loop
        while (MyReader.Read())
        {
            UserID = MyReader.GetString(2).Trim() + " " + MyReader.GetString(3).Trim();
            Password = MyReader.GetString(1).Trim();
        }
        myConnection.Close();
        
        // Password & Username Validation
        if (TextBox2.Text != "" && TextBox1.Text != "")
        {
            if (TextBox2.Text.Trim() == Password)
            {
                UserID = TextBox1.Text;
                Session["UserName"] = UserID;
                Session["UserEmail"] = TextBox1.Text.Trim();
                Response.Redirect("Welcome.aspx");
            }else{
                Pass_Label.Text = "Incorrect username or password";
            }
        }else{
            Pass_Label.Text = "Please enter a valid username or password";
        }
    }
    protected void Btn2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}