using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn8_Click(object sender, EventArgs e)
    {
        /*
        // Set Null
        string UserID = "";
        string Password = "";

        // Create MyReader, myConnection, myCommand
        SqlDataReader MyReader;
        SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
        SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);

        // Assign MyReader, myConnection, myCommand
        myCommand.Connection = myConnection;
        myCommand.Parameters.AddWithValue("@email", "l");
        myCommand.Parameters.AddWithValue("@password", "l");

        myConnection.Open();
        MyReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

        // Reead Loop
        while (MyReader.Read())
        {
            //UserID = MyReader.GetString(2).Trim() + " " + MyReader.GetString(3).Trim();
            Password = MyReader.GetString(1).Trim();
        }
        myConnection.Close();

        Label_1.Text = Password;
        //Label_1.Text = "Example";
        */
    }
}