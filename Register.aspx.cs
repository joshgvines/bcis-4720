using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Btn3_Click(object sender, EventArgs e)
    {
        // Reset Labels (Temp)
        Name_Label.Text = "";
        CreatePass_Label.Text = ""; CreatePass_Label.Text = "";
        Email_Label.Text = ""; DOB_Label.Text = "";

        // Reset Variables (Temp)
        String fName = "", lName = "", newPass = "", email = "", eCheck = "";
        Nullable<bool> dCorrect = null, eCorrect = null;
        int DOBIn = 0;

        // Name Validation (Required)
        if (FirstBox.Text != "" && LastBox.Text != "")
        {
            if (FirstBox.Text.Length <= 30 && LastBox.Text.Length <= 30)
            {
                fName = FirstBox.Text; lName = LastBox.Text;
            }
        }else{
            Name_Label.Text = "Please enter a valid first name and last name.";
        }

        // Password Validation (Required)
        if (CreatePassBox.Text != "" || ConfirmPassBox.Text != "")
        {
            if (CreatePassBox.Text != ConfirmPassBox.Text)
            {
                CreatePass_Label.Text = "Passwords did not match.";
            }else{
                newPass = ConfirmPassBox.Text;
            }
        }else{
            CreatePass_Label.Text = "Please enter valid matching passwords.";
        }

        // Email Validation (Chnaged In Class, Now Required)
        if (EmailBox.Text != "")
        {
            eCheck = EmailBox.Text;
            if ((eCheck.Length >= 5 && eCheck.Length <= 50) && 
                (eCheck.ToLower().Contains('@') && eCheck.ToLower().Contains('.')))
            {
                email = Email_Label.Text;
                eCorrect = true;
            }else{ 
                Email_Label.Text = "Please enter a valid email, < email@example.com >.";
                eCorrect = false;
            }
        }else{
            Email_Label.Text = "Please enter a valid email, < email@example.com >.";
            eCorrect = false;
        }

        //DOB Validation (Not A Required Field)
        if (DOBBox.Text != "")
        {
            if (!int.TryParse(DOBBox.Text, out DOBIn))
            {
                DOB_Label.Text = "Date of birth must be a 4 digit whole number.";
                dCorrect = false;
            }
            else if (DOBIn <= 1899 || DOBIn >= 2016)
            {
                DOB_Label.Text = "Impossible!, you are not that age unless you own a flux capacitor, " 
                                    + "use a 4 digit whole number.";
                dCorrect = false;
            }else{
                dCorrect = true;
            }
        }else{
            // Do Nothing, Not A Required Field
            dCorrect = null;
        }

        // Final Form Validation & Redirection
        if (fName != "" && lName != "" && newPass != "")
        {
            if ((eCorrect == null && dCorrect == null) || (eCorrect == true && dCorrect == true) ||
                (eCorrect == true && dCorrect == null) || (eCorrect == null && dCorrect == true))
            {
                // Form Was Valid, Add To SQL Database?
                SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
                SqlCommand myCommand = new SqlCommand(SqlDataSource1.InsertCommand);
                myCommand.Connection = myConnection;
                myCommand.Parameters.AddWithValue("@email", EmailBox.Text);
                myCommand.Parameters.AddWithValue("@Password", ConfirmPassBox.Text);
                myCommand.Parameters.AddWithValue("@FName", FirstBox.Text);
                myCommand.Parameters.AddWithValue("@LName", LastBox.Text);
                myCommand.Parameters.AddWithValue("@YoB", DOBBox.Text);
                SqlDataReader myReader;
                myConnection.Open();
                myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
                myConnection.Close();
                // What would happen if I put this in an infinite loop?

                Response.Redirect("Login.aspx");
            }
        }else{
            //Do Nothing, Form Was Not Valid
        }
    }
    protected void Btn4_Click(object sender, EventArgs e)
    {
        // Reload Page To Clear Labels And Fields
        Response.Redirect("Register.aspx");
    }
}
