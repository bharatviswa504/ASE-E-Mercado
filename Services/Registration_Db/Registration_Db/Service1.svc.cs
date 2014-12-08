using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

namespace Registration_Db
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    public class Service1 : IService1
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }
       [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, UriTemplate = "/register?account={accountType}&username={userName}&pwd={pwd}&age={age}&sex={sex}&addr1={addressline1}&addr2={addressline2}&phno={phno}&emailid={emailid}")]
        public String register(String accountType,String userName, String pwd, String age, String sex, String addressline1, String addressline2, String phno, String emailid)
        {
            String status = "failure";


            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MercadoDb"].ConnectionString);

                conn.Open();


                int years = Convert.ToInt32(age);
                SqlCommand registrationcmd;
                if(accountType == "customer")
                     registrationcmd = new SqlCommand("Insert into customerregistration(username,password,age,sex,addressline1,addressline2,phno,emailid) values('" + userName
                                            + "','" + pwd + "'," + years + ",'" + sex + "','" + addressline1 + "','" + addressline2 + "','" + phno + "','" + emailid + "')",conn);
                else
                    registrationcmd = new SqlCommand("Insert into farmerregistration(username,password,age,sex,addressline1,addressline2,phno,emailid) values('" + userName
                                            + "','" + pwd + "'," + years + ",'" + sex + "','" + addressline1 + "','" + addressline2 + "','" + phno + "','" + emailid + "')", conn);


                int rowsaffected = registrationcmd.ExecuteNonQuery();

                if (rowsaffected == 1)
                    status = "success";
            }
            catch (Exception e)
            {
                e.GetBaseException();
                return e.GetBaseException().ToString();
            }
            return status;
        }

        }
}
