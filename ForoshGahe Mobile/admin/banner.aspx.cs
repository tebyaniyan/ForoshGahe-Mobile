using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DstbannerTableAdapters;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void dg_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataSource1.DeleteCommand = "DELETE FROM banner WHERE (id = '" + dg.SelectedValue.ToString() + "')";
        SqlDataSource1.Delete();
        dg.SelectedIndex = -1;
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertCommand  = "insert into banner(title,body)values('"+txtName.Text +"','"+txtDesc.Text +"')";
        SqlDataSource1.Insert();
        
    }
}
