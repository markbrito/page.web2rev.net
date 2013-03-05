using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Text.RegularExpressions;
using System.IO;
using page.web2rev.net.DataSet;
using page.web2rev.net.DataSet.DsPageTableAdapters;
namespace page.web2rev.net.Manage
{
    public partial class Main : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && !IsCallback)
            {
                TextBoxNewAccountID.DataBind();
                TextBoxNewSiteID.DataBind();
                TextBoxUserName.DataBind();
                FormViewAccount.DataBind();
            }
        }

        protected void DetailsViewCreateAccount_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            Directory.CreateDirectory(Server.MapPath("~/Get/" + Regex.Replace(e.Values["Name"].ToString(), "[^A-Za-z0-9]", "")));
            SqlDataSourceFormViewAccount.DataBind();
            SqlDataSourceFormViewCreateAccount.DataBind();
            SqlDataSourceAddCredits.DataBind();
            SqlDataSourceAddCredits.Insert();
            SqlDataSourceAddCredits.Update();
            TextBoxNewAccountID.Text = Guid.NewGuid().ToString();
            FormViewAccount.DataBind();
            FormViewCreateAccount.DataBind();
        }

        protected void btnCreateSite_Click(object sender, EventArgs e)
        {
            string siteDir = Server.MapPath("~/Get/" + Regex.Replace(TextBoxSiteCreatedAccountName.Text, "[^A-Za-z0-9]", "") +
                "/" + Regex.Replace(TextBoxSiteCreatedSiteName.Text, "[^A-Za-z0-9]", "") + "/");
            Directory.CreateDirectory(siteDir);
            string[] subDirs = new string[] { "Style", "Resource", "Resource/File", "Resource/Image", "Page", "Script" };
            foreach (string subDir in subDirs)
                Directory.CreateDirectory(siteDir + subDir);
            ((SqlDataSource)FormViewAccount.FindControl("SqlDataSourceCreateSite"))
                .DataBind();
            ((SqlDataSource)FormViewAccount.FindControl("SqlDataSourceCreateSite"))
                .Insert();
            ((SqlDataSource)FormViewAccount.FindControl("SqlDataSourceCreateSite"))
                .Update();
            ((SqlDataSource)FormViewAccount.FindControl("SqlDataSourceAccountSites"))
                .DataBind();
            ((GridView)FormViewAccount.FindControl("gvSites"))
                .DataBind();
            ((ObjectDataSource)FormViewAccount.FindControl("ObjectDataSourceCreateSiteFolders"))
                .DataBind();
            ((ObjectDataSource)FormViewAccount.FindControl("ObjectDataSourceCreateSiteFolders"))
                .Select();
            TextBoxNewSiteID.Text = Guid.NewGuid().ToString();
        }

        protected void ddlAccount_DataBound(object sender, EventArgs e)
        {
            try
            {
                AccountCreditTableAdapter acctCreditAdptr = new AccountCreditTableAdapter();
                Guid acctID = new Guid(((DropDownList)sender).SelectedValue);
                int cred = (int)acctCreditAdptr.GetSiteCreditsByAccountID(acctID);
                ((Button)FormViewAccount.FindControl("btnCreateSite")).Enabled = (cred > 0);
            }
            catch (Exception) { ;}
        }

        protected void lnkSelectSite_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("SelectSite"))
            {
                Guid siteID = new Guid(e.CommandArgument.ToString());
                SiteTableAdapter adptrSite = new SiteTableAdapter();
                DsPage.SiteDataTable tblSite = adptrSite.GetDataByID(siteID);
                TextBoxSelectedSiteRootFolderID.Text = tblSite[0].RootFolderID.ToString();
                ((SqlDataSource)FormViewAccount.FindControl("SqlDataSourceAccountSites"))
                    .DataBind();
                TreeView tv = ((TreeView)FormViewAccount.FindControl("TreeViewSiteFolders"));
                tv.Nodes.Clear();
                FolderTableAdapter adptrFolder = new FolderTableAdapter();
                DsPage.FolderDataTable tblFolder = adptrFolder.GetDataByID(new Guid(TextBoxSelectedSiteRootFolderID.Text));
                foreach (DsPage.FolderRow row in tblFolder.Rows)
                {
                    TreeNode node = new TreeNode();
                    node.Text = row["Name"].ToString();
                    node.Value = row["ID"].ToString();
                    node.PopulateOnDemand = false;
                    node.SelectAction = TreeNodeSelectAction.SelectExpand;

                    FolderNodesTableAdapter adptrNodes = new FolderNodesTableAdapter();
                    DsPage.FolderNodesDataTable tblNodes = adptrNodes.GetDataByParentID(new Guid(node.Value));
                    foreach (DsPage.FolderNodesRow row2 in tblNodes.Rows)
                    {
                        TreeNode node2 = new TreeNode();
                        node2.Text = row2["Name"].ToString();
                        node2.Value = row2["ID"].ToString();
                        node2.PopulateOnDemand = true;
                        node2.SelectAction = TreeNodeSelectAction.SelectExpand;
                        node2.Collapse();
                        node.ChildNodes.Add(node2);
                    }
                    node.Collapse();
                    tv.Nodes.Add(node);
                }
               
            }
        }

        protected void TreeViewSiteFolders_TreeNodePopulate(object sender, TreeNodeEventArgs e)
        {
            switch (e.Node.Depth)
            {
                case 0:
                    FolderTableAdapter adptrFolder = new FolderTableAdapter();
                    DsPage.FolderDataTable tblFolder = adptrFolder.GetDataByID(new Guid(TextBoxSelectedSiteRootFolderID.Text));
                    foreach (DsPage.FolderRow row in tblFolder.Rows)
                    {
                        TreeNode node = new TreeNode();
                        node.Text = row["Name"].ToString();
                        node.Value = row["ID"].ToString();
                        node.PopulateOnDemand = true;
                        node.SelectAction = TreeNodeSelectAction.SelectExpand;
                        e.Node.ChildNodes.Add(node);
                    }
                    break;
                default:
                    FolderNodesTableAdapter adptrNodes = new FolderNodesTableAdapter();
                    DsPage.FolderNodesDataTable tblNodes = adptrNodes.GetDataByParentID(new Guid(e.Node.Value));
                    foreach (DsPage.FolderNodesRow row in tblNodes.Rows)
                    {
                        TreeNode node = new TreeNode();
                        node.Text = row["Name"].ToString();
                        node.Value = row["ID"].ToString();
                        node.PopulateOnDemand = true;
                        node.SelectAction = TreeNodeSelectAction.SelectExpand;
                        e.Node.ChildNodes.Add(node);
                    }
                    break;
            }
        }
    }
}