﻿using System;
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
using AjaxControlToolkit;
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
            RefreshCredits();
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
            AccountCreditTableAdapter adptrCredit = new AccountCreditTableAdapter();
            DsPage.AccountCreditDataTable tblCredit = adptrCredit.GetDataByCreditTypeName(new Guid(Session["SELECTEDACCOUNTID"].ToString()), "Site");
            adptrCredit.UpdateCreditAmountByCreditTypeName(-1, new Guid(Session["SELECTEDACCOUNTID"].ToString()), "Site");
            adptrCredit.ArchiveCurrentCreditRecord(new Guid(Session["SELECTEDACCOUNTID"].ToString()), "Site", tblCredit[0].VersionNumber+1);
            RefreshCredits(); 
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

        protected void btnDecrementBuilderUsage_Click(object sender, EventArgs e)
        {
            AccountCreditTableAdapter adptrCredit = new AccountCreditTableAdapter();
            DsPage.AccountCreditDataTable tblCredit = adptrCredit.GetDataByCreditTypeName(
                new Guid(Session["SELECTEDACCOUNTID"].ToString()), "Page Builder");
            adptrCredit.UpdateCreditAmountByCreditTypeName(-1, new Guid(Session["SELECTEDACCOUNTID"].ToString()), "Page Builder");
            adptrCredit.ArchiveCurrentCreditRecord(new Guid(Session["SELECTEDACCOUNTID"].ToString()), "Page Builder",tblCredit[0].VersionNumber+1);
            RefreshCredits();
        }

        protected void ddlAccount_SelectedIndexChanged(object sender, EventArgs e)
        {
            AccountCreditTableAdapter acctCreditAdptr = new AccountCreditTableAdapter();
            DropDownList ddl = ((DropDownList)sender);
            Guid acctID = new Guid(ddl.SelectedValue);
            Session["SELECTEDACCOUNTID"] = ddl.SelectedValue;
            Session["SELECTEDACCOUNTNAME"] = Regex.Replace(ddl.SelectedItem.Text, "[^A-Za-z0-9]", "");
            int cred = (int)acctCreditAdptr.GetSiteCreditsByAccountID(acctID);
            ((Button)FormViewAccount.FindControl("btnCreateSite")).Enabled = (cred > 0);
            RefreshCredits();
        }

        protected void ddlAccount_DataBound(object sender, EventArgs e)
        {
            try
            {
                AccountCreditTableAdapter acctCreditAdptr = new AccountCreditTableAdapter();
                DropDownList ddl = ((DropDownList)sender);
                Guid acctID = new Guid(ddl.SelectedValue);
                Session["SELECTEDACCOUNTID"] = ddl.SelectedValue;
                Session["SELECTEDACCOUNTNAME"] = Regex.Replace(ddl.SelectedItem.Text, "[^A-Za-z0-9]", "");
                int cred = (int)acctCreditAdptr.GetSiteCreditsByAccountID(acctID);
                ((Button)FormViewAccount.FindControl("btnCreateSite")).Enabled = (cred > 0);
            }
            catch (Exception) { ;}
        }

        protected void lnkSelectSite_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("Select"))
            {
                Guid siteID = new Guid(e.CommandArgument.ToString());
                SiteTableAdapter adptrSite = new SiteTableAdapter();
                DsPage.SiteDataTable tblSite = adptrSite.GetDataByID(siteID);
                Session["SELECTEDSITENAME"] = Regex.Replace(tblSite[0].Name, "[^A-Za-z0-9]", "");
                TextBoxSelectedSiteRootFolderID.Text = tblSite[0].RootFolderID.ToString();
                ((SqlDataSource)FormViewAccount.FindControl("SqlDataSourceAccountSites"))
                    .DataBind();
                DropDownList ddlAccount=((DropDownList)FormViewAccount.FindControl("ddlAccount"));
                ddlAccount.DataBind();
                ddlAccount_SelectedIndexChanged(ddlAccount, null);
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
                    node.Expand();
                    tv.Nodes.Add(node);
                }
                RefreshCredits();
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

        protected void TreeViewSiteFolders_SelectedNodeChanged(object sender, EventArgs e)
        {
            TreeView tv = (TreeView)sender;
            string path = "~/Get/";
            Stack<string> nodeStack = new Stack<string>();
            TreeNode node=tv.SelectedNode;
            do
            {
                nodeStack.Push(Regex.Replace(node.Text, "[^A-Za-z0-9]", ""));
                node = node.Parent;
            } while (node != null && tv.Nodes != null && !tv.Nodes.Contains(node));
            nodeStack.Push(Session["SELECTEDSITENAME"].ToString());
            nodeStack.Push(Session["SELECTEDACCOUNTNAME"].ToString());
            do
            {
                path += nodeStack.Pop() + "/";
            } while (nodeStack.Count > 0);
            TextBoxSelectedServerPathFolder.Text = path;
            Session["SELECTEDSERVERPATHFOLDER"] = path;
            TextBoxSelectedFolderID.Text = tv.SelectedNode.Value;
            Session["SELECTEDFOLDERID"] = tv.SelectedNode.Value;
            PanelFolderFiles.Visible = true;
            gvFileType.DataBind();
            RefreshCredits();
        }

        protected void AjaxFileUploadFolders_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
        {
            FileTableAdapter adptrFile = new FileTableAdapter();
            FileTypeTableAdapter adptrType = new FileTypeTableAdapter();
            FileCouplingTableAdapter adptrFileCoupling = new FileCouplingTableAdapter();
            AjaxControlToolkit.AjaxFileUpload upload = (AjaxControlToolkit.AjaxFileUpload)sender;
            string fileURI = Session["SELECTEDSERVERPATHFOLDER"] + e.FileName;
            string fileExt = fileURI.Substring(fileURI.LastIndexOf("."));
            DsPage.FileTypeDataTable tblFileType = adptrType.GetData();
            Guid fileTypeID = new Guid("00000000-0000-0000-0000-000000000008");
            string fileTypeName = "OTHER";
            foreach (DsPage.FileTypeRow row in tblFileType.Rows)
            {
                if (row.Extension.ToUpper().IndexOf(fileExt.ToUpper()) >= 0)
                {
                    fileTypeID = row.ID;
                    fileTypeName = row.Name;
                }
            }
            int idx = 0;
            while (adptrFile.GetDataByFilePath(Server.MapPath(fileURI)).Rows.Count > 0)
            {
                ++idx;
                fileURI = Session["SELECTEDSERVERPATHFOLDER"] + e.FileName.Replace(fileExt, idx.ToString() + fileExt);
            }
            string filePath = Server.MapPath(fileURI);
            upload.SaveAs(filePath);
            Guid fileID = Guid.NewGuid();
            bool isTextFile = fileTypeName.Equals("Page") || fileTypeName.Equals("Style") ||
                fileTypeName.Equals("Text") || fileTypeName.Equals("Script");
            adptrFile.Insert(fileID, true, 1, DateTime.Now, fileTypeID, e.FileName,
                fileURI, filePath, (long)e.FileSize, 
                (e.FileSize < 128 * 1024) && isTextFile ? e.GetContents().ToString() : string.Empty,
                false);
            adptrFileCoupling.Insert(Guid.NewGuid(), new Guid(Session["SELECTEDFOLDERID"].ToString()), fileID);
            string creditType=fileTypeName.Equals("Page")?"Page":(fileTypeName.Equals("Image")?"Image":"File");
            AccountCreditTableAdapter adptrCredit = new AccountCreditTableAdapter();
            DsPage.AccountCreditDataTable tblCredit = adptrCredit.GetDataByCreditTypeName(
                new Guid(Session["SELECTEDACCOUNTID"].ToString()), creditType);
            adptrCredit.UpdateCreditAmountByCreditTypeName(-1, new Guid(Session["SELECTEDACCOUNTID"].ToString()), creditType);
            adptrCredit.ArchiveCurrentCreditRecord(new Guid(Session["SELECTEDACCOUNTID"].ToString()), creditType, tblCredit[0].VersionNumber+1);
            tblCredit = adptrCredit.GetDataByCreditTypeName(
                new Guid(Session["SELECTEDACCOUNTID"].ToString()), "Disk Space"); 
            adptrCredit.UpdateCreditAmountByCreditTypeName(-1 * e.FileSize, new Guid(Session["SELECTEDACCOUNTID"].ToString()), "Disk Space");
            adptrCredit.ArchiveCurrentCreditRecord(new Guid(Session["SELECTEDACCOUNTID"].ToString()),"Disk Space", tblCredit[0].VersionNumber+1);
            RefreshCredits();
                PanelFolderFiles.Visible = true;
            TextBoxSelectedServerPathFolder.Text = Session["SELECTEDSERVERPATHFOLDER"].ToString();
            TextBoxSelectedFolderID.Text = Session["SELECTEDFOLDERID"].ToString();
            PanelFolderFiles.Visible = true;
            gvFileType.DataBind();
        }

        private void RefreshCredits()
        {
            ((GridView)FormViewAccount.FindControl("GridViewCredits")).DataBind();
        }

        protected void btnRefreshFiles_Click(object sender, EventArgs e)
        {
            RefreshCredits();
            PanelFolderFiles.Visible = true;
            gvFileType.DataBind();
        }

        protected void lnkDeleteFile_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("DeleteFile"))
            {
                string[] args = e.CommandArgument.ToString().Split(new char[] { ',' });
                Guid fileID = new Guid(args[0]);
                try
                {
                    File.Delete(Server.MapPath(args[2]));
                }
                catch (Exception) { ;}
                FileCouplingTableAdapter adptCoupling = new FileCouplingTableAdapter();
                FileTableAdapter adptFile = new FileTableAdapter();
                FileTypeTableAdapter adptrType=new FileTypeTableAdapter();
                DsPage.FileDataTable tblFile = adptFile.GetDataByID(fileID);
                DsPage.FileTypeDataTable tblType = adptrType.GetDataByID(tblFile[0].FileTypeID);
                string fileTypeName = tblType[0].Name;
                adptCoupling.Delete(new Guid(args[3]));
                adptFile.DeleteFile(fileID, int.Parse(args[1]));
                string creditType = fileTypeName.Equals("Page") ? "Page" : (fileTypeName.Equals("Image") ? "Image" : "File");
                AccountCreditTableAdapter adptrCredit = new AccountCreditTableAdapter();
                DsPage.AccountCreditDataTable tblCredit = adptrCredit.GetDataByCreditTypeName(
                    new Guid(Session["SELECTEDACCOUNTID"].ToString()), creditType);
                adptrCredit.UpdateCreditAmountByCreditTypeName(1, new Guid(Session["SELECTEDACCOUNTID"].ToString()), creditType);
                adptrCredit.ArchiveCurrentCreditRecord(new Guid(Session["SELECTEDACCOUNTID"].ToString()), creditType, tblCredit[0].VersionNumber+1);
                tblCredit = adptrCredit.GetDataByCreditTypeName(
                    new Guid(Session["SELECTEDACCOUNTID"].ToString()), "Disk Space"); 
                adptrCredit.UpdateCreditAmountByCreditTypeName(tblFile[0].FileSize, new Guid(Session["SELECTEDACCOUNTID"].ToString()), "Disk Space");
                adptrCredit.ArchiveCurrentCreditRecord(new Guid(Session["SELECTEDACCOUNTID"].ToString()), "Disk Space", tblCredit[0].VersionNumber+1);
                RefreshCredits();
                PanelFolderFiles.Visible = true;
                TextBoxSelectedServerPathFolder.Text = Session["SELECTEDSERVERPATHFOLDER"].ToString();
                TextBoxSelectedFolderID.Text = Session["SELECTEDFOLDERID"].ToString();
                PanelFolderFiles.Visible = true;
                gvFileType.DataBind();
            }
        }
    }
}