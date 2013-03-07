<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    MaintainScrollPositionOnPostback="True" CodeBehind="Main.aspx.cs" Inherits="page.web2rev.net.Manage.Main" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="ContentHead" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .subHeader
        {
            text-decoration: underline;
        }
        .divMainContent
        {
            font-size: 16px;
        }
    </style>
    <script language="javascript" type="text/javascript">
        var timeout = null;
        function uploadComplete(sender, args) {
            if (timeout != null) {
                clearTimeout(timeout);
            }
            timeout = setTimeout("timeout=null;document.getElementById('<%= btnRefreshFiles.ClientID %>').click();", 1800);
        }
        function uploadError(sender, args) {
            alert("Error Uploading File: " + args.get_fileName() + " Error: " +
                    args.get_errorMessage());
        }
        var hrefPageBuilder = null;
        function pageBuilder(a) {
            hrefPageBuilder = a;
            setTimeout("hrefPageBuilder=null;document.getElementById('MainContent_btnDecrementBuilderUsage').click();", 250);
        }
    </script>
</asp:Content>
<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContent" runat="server">
    <div class="divMainContent">
        <asp:ToolkitScriptManager ID="ToolkitScriptManagerMain" runat="server">
        </asp:ToolkitScriptManager>
        <asp:UpdatePanel ID="UpdatePanelMain" runat="server">
            <ContentTemplate>
                <asp:Button ID="btnDecrementBuilderUsage" Style="display: none;" runat="server" Text="" OnClick="btnDecrementBuilderUsage_Click" />
                <asp:Button ID="btnRefreshFiles" Style="display: none;" runat="server" Text="" OnClick="btnRefreshFiles_Click" />
                <asp:TextBox ID="TextBoxUserName" Style="display: none;" runat="server" Text='<%# Membership.GetUser(this.Context.User.Identity.Name).UserName  %>'></asp:TextBox>
                <asp:TextBox ID="TextBoxNewAccountID" Style="display: none;" runat="server" Text='<%# Guid.NewGuid().ToString() %>'></asp:TextBox>
                <asp:TextBox ID="TextBoxNewSiteID" Style="display: none;" runat="server" Text='<%# Guid.NewGuid().ToString() %>'></asp:TextBox>
                <asp:TextBox ID="TextBoxSelectedSiteRootFolderID" Style="display: none;" runat="server"
                    Text='<%# Guid.Empty.ToString() %>'></asp:TextBox>
                <asp:TextBox ID="TextBoxSiteCreatedAccountName" Style="display: none;" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBoxSiteCreatedSiteName" Style="display: none;" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBoxSelectedServerPathFolder" Style="display: none;" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBoxSelectedFolderID" Style="display: none;" runat="server"></asp:TextBox>
                <asp:FormView ID="FormViewAccount" runat="server" DataSourceID="SqlDataSourceFormViewAccount">
                    <ItemTemplate>
                        <asp:Panel ID="PanelHeader" runat="server" Width="100%" Visible='<%# !(Eval("AccountCount").ToString().Equals("0")) %>'
                            Style="font-weight: 700">
                            <asp:UpdatePanel ID="UpdatePanelCreateSite" runat="server">
                                <ContentTemplate>
                                    login:
                                    <% Response.Write(Membership.GetUser(this.Context.User.Identity.Name).UserName + "(" + Membership.GetUser(this.Context.User.Identity.Name).Email + ")"); %>
                                    account:<asp:DropDownList ID="ddlAccount" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceAccount"
                                        DataTextField="Name" DataValueField="ID" 
                                        OnDataBound="ddlAccount_DataBound" 
                                        onselectedindexchanged="ddlAccount_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <span style="position: fixed; top: 0px; right: 0px;">
                                        <asp:GridView ID="GridViewCredits" BackColor="White" ForeColor="Black" runat="server"
                                            ShowHeader="True" DataSourceID="SqlDataSourceCredits">
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSourceCredits" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT CreditType.Name as 'Credits', sum(AccountCredit.Credits) as '#' FROM AccountCredit INNER JOIN CreditType ON AccountCredit.CreditTypeID = CreditType.ID WHERE AccountID=@AccountID and AccountCredit.CurrentVersion=1  GROUP BY CreditType.Name ">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlAccount" Name="AccountID" PropertyName="SelectedValue" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </span>
                                    <asp:Button ID="btnCreateSite" runat="server" Text="Create Site" OnClick="btnCreateSite_Click"
                                        OnClientClick="document.getElementById('MainContent_TextBoxSiteCreatedSiteName').value=document.getElementById('MainContent_FormViewAccount_HiddenFieldNewSiteName').value=prompt('Enter New Site Name');var ddl=document.getElementById('MainContent_FormViewAccount_ddlAccount');document.getElementById('MainContent_TextBoxSiteCreatedAccountName').value=ddl.options[ddl.selectedIndex].text;" />
                                    <asp:SqlDataSource ID="SqlDataSourceCreateSite" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                        InsertCommand="INSERT INTO Site(ID, CurrentVersion, VersionNumber, VersionTimestamp, AccountID, Name, RootFolderID) VALUES (@SiteID, 1, 1, GETDATE(), @AccountID, @Name, '00000000-0000-0000-0000-000000000000')"
                                        SelectCommand="SELECT [ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [Name], [RootFolderID] FROM [Site]">
                                        <InsertParameters>
                                            <asp:ControlParameter ControlID="TextBoxNewSiteID" DbType="Guid" Name="SiteID" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="ddlAccount" Name="AccountID" PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="HiddenFieldNewSiteName" Name="Name" PropertyName="Value" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:ControlParameter ControlID="ddlAccount" Name="AccountID" PropertyName="SelectedValue" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <asp:ObjectDataSource ID="ObjectDataSourceCreateSiteFolders" runat="server" OldValuesParameterFormatString="original_{0}"
                                        SelectMethod="CreateDefaultDirectores" TypeName="page.web2rev.net.DataSet.DsPageTableAdapters.CreateSiteFoldersTableAdapter">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="TextBoxNewSiteID" DbType="Guid" Name="SiteID" PropertyName="Text" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                    <asp:HiddenField ID="HiddenFieldNewSiteName" runat="server" />
                                    <hr />
                                    <table cellpadding="10" border="1" width="900">
                                        <tr>
                                            <td valign="top">
                                                <span class="subHeader">SITES</span>
                                                <asp:GridView ID="gvSites" runat="server" AllowPaging="True" AllowSorting="True"
                                                    AutoGenerateColumns="False" DataKeyNames="ID,VersionNumber" DataSourceID="SqlDataSourceAccountSites"
                                                    SelectedRowStyle-BackColor="#CCCCCC" PageSize="15" EnablePersistedSelection="True"
                                                    EnableSortingAndPagingCallbacks="True">
                                                    <Columns>
                                                        <asp:TemplateField ShowHeader="False">
                                                            <ItemTemplate>
                                                                <asp:UpdatePanel ID="UpdatePanelSiteSelect" runat="server">
                                                                    <ContentTemplate>
                                                                        <div style="margin: 4px 4px 4px 4px;">
                                                                            <asp:LinkButton ID="lnkSelectSite" runat="server" CausesValidation="False" CommandName="Select"
                                                                                Text="Select" CommandArgument='<%# Bind("ID") %>' OnCommand="lnkSelectSite_Command"></asp:LinkButton>
                                                                        </div>
                                                                    </ContentTemplate>
                                                                    <Triggers>
                                                                        <asp:PostBackTrigger ControlID="lnkSelectSite" />
                                                                    </Triggers>
                                                                </asp:UpdatePanel>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID"
                                                            Visible="False" />
                                                        <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="margin: 4px 4px 4px 4px;">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="RootFolderID" HeaderText="RootFolderID" SortExpression="RootFolderID"
                                                            Visible="False" />
                                                        <asp:BoundField DataField="VersionNumber" HeaderText="Version" ReadOnly="True" SortExpression="VersionNumber" />
                                                        <asp:BoundField DataField="VersionTimestamp" DataFormatString="{0:d}" HeaderText="Timestamp"
                                                            SortExpression="VersionTimestamp" />
                                                    </Columns>
                                                    <EmptyDataTemplate>
                                                    </EmptyDataTemplate>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSourceAccountSites" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                                    SelectCommand="SELECT [ID], [AccountID], [Name], [RootFolderID], [CurrentVersion], [VersionNumber], [VersionTimestamp] FROM [Site] WHERE (([AccountID] = @AccountID) AND ([CurrentVersion] = 1))">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ddlAccount" Name="AccountID" PropertyName="SelectedValue"
                                                            DbType="Guid" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                            <td valign="top">
                                                <span class="subHeader">SITE FOLDERS</span><br />
                                                <asp:UpdatePanel ID="UpdatePanelFolderSelection" runat="server">
                                                    <ContentTemplate>
                                                        <asp:TreeView ID="TreeViewSiteFolders" runat="server" OnTreeNodePopulate="TreeViewSiteFolders_TreeNodePopulate"
                                                            SelectedNodeStyle-BorderStyle="Dotted" SelectedNodeStyle-BorderWidth="1px" SelectedNodeStyle-BackColor="#CCCCCC"
                                                            ShowLines="True" OnSelectedNodeChanged="TreeViewSiteFolders_SelectedNodeChanged">
                                                        </asp:TreeView>
                                                    </ContentTemplate>
                                                    <Triggers>
                                                        <asp:PostBackTrigger ControlID="TreeViewSiteFolders" />
                                                    </Triggers>
                                                </asp:UpdatePanel>
                                            </td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:PostBackTrigger ControlID="btnCreateSite" />
                                </Triggers>
                            </asp:UpdatePanel>
                            <asp:SqlDataSource ID="SqlDataSourceAccount" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                SelectCommand="SELECT [ID], [Name], [UserID] FROM [Account]"></asp:SqlDataSource>
                        </asp:Panel>
                    </ItemTemplate>
                </asp:FormView>
                <div id="divUpload" style="display: none;">
                    <table width="900">
                        <tr>
                            <td align="right">
                                <input type="button" value="View Files" onclick="document.getElementById('divUpload').style.display='none';document.getElementById('MainContent_btnRefreshFiles').click();" />
                            </td>
                        </tr>
                    </table>
                    <table cellpadding="10" border="1" width="900">
                        <tr>
                            <td valign="top">
                                <span class="subHeader">FOLDER UPLOAD</span><br />
                                <asp:UpdatePanel ID="UpdatePanelFolderUpload" runat="server">
                                    <ContentTemplate>
                                        <asp:AjaxFileUpload ID="AjaxFileUploadFolders" Width="100%" runat="server" OnClientUploadError="uploadError" OnUploadComplete="AjaxFileUploadFolders_UploadComplete"
                                              OnClientUploadComplete="uploadComplete" ThrobberID="lblThrobber" AllowedFileTypes="jpg,png,gif,jpeg,txt,xml,html,htm,js,json,css,xsd,xsl,mp4,webm,mp3" />
                                        <asp:Label runat="server" ID="lblThrobber" style="display:none;">Uploading...</asp:Label>  
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:PostBackTrigger ControlID="AjaxFileUploadFolders" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="divFolderFiles">
                    <asp:Panel ID="PanelFolderFiles" Visible="false" runat="server">
                        <table width="900">
                            <tr>
                                <td align="right">
                                    <input type="button" value="Upload Files" onclick="document.getElementById('divUpload').style.display='block';document.getElementById('divFolderFiles').style.display='none';" />
                                </td>
                            </tr>
                        </table>
                        <table width="900" cellpadding="10" border="1">
                            <tr>
                                <td valign="top">
                                    <asp:GridView ID="gvFileType" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                                        DataSourceID="SqlDataSourceFileType" ShowHeader="False" Width="100%">
                                        <Columns>
                                            <asp:TemplateField HeaderText="ID" SortExpression="ID">
                                                <ItemTemplate>
                                                    <asp:HiddenField ID="LabelFileTypeID" runat="server" Value='<%# Bind("ID") %>'></asp:HiddenField>
                                                    <div class="subHeader" style="width: 100%; text-align: center;">
                                                        <asp:Label ID="LabelFileTypeName" runat="server" Text='<%# Eval("Name").ToString()+" Files " %>'></asp:Label>(<asp:Label
                                                            ID="LabelFileTypeExtension" runat="server" Text='<%# Bind("Extension") %>'></asp:Label>)
                                                    </div>
                                                    <hr />
                                                    <asp:ListView ID="ListViewFiles" Style="width: 100%;" runat="server" GroupItemCount="5"
                                                        DataSourceID="SqlDataSourceListFile">
                                                        <EmptyDataTemplate>
                                                            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse;
                                                                border-color: #999999; border-style: none; border-width: 1px;">
                                                                <tr>
                                                                    <td>
                                                                        No files found.
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </EmptyDataTemplate>
                                                        <EmptyItemTemplate>
                                                            <td runat="server" />
                                                        </EmptyItemTemplate>
                                                        <GroupTemplate>
                                                            <tr id="itemPlaceholderContainer" runat="server">
                                                                <td id="itemPlaceholder" runat="server">
                                                                </td>
                                                            </tr>
                                                        </GroupTemplate>
                                                        <ItemTemplate>
                                                            <td runat="server" style="background-color: #E0FFFF; color: #333333;">
                                                                <asp:HiddenField ID="HiddenID" runat="server" Value='<%# Eval("ID") %>' />
                                                                <asp:HiddenField ID="HiddenFilePath" runat="server" Value='<%# Eval("FilePath") %>' />
                                                                <asp:HiddenField ID="HiddenTextFileContents" runat="server" Value='<%# Eval("TextFileContents") %>' />
                                                                <div style="spacing: 5px 5px 5px 5px; height: 100%; width: 165px; text-align: center;
                                                                    vertical-align: middle; padding: 5px 5px 5p 5px;">
                                                                    <a style='<%# Eval("FileTypeName").ToString().Equals("Image")?"display: block; font-size: 11px;":"display: none;" %>' target="_blank" href='<%# Eval("FileURI") %>'>
                                                                        <asp:Image ID="imgFileURILabel" runat="server" Visible='<%# Eval("FileTypeName").ToString().Equals("Image") %>' Width="145px" Height="145px" ImageUrl='<%# Eval("FileURI") %>' />
                                                                    </a>
                                                                    <a style="display: block; font-size: 12px;" target="_blank" href='<%# Eval("FileURI") %>'>
                                                                        <asp:Label Style="display: block; font-size: 12px; margin: 5px 0px 0px 5px; font-weight: bold;
                                                                            width: 145px; text-align: center; word-wrap: break-word;" ID="FileNameLabel"
                                                                            runat="server" Text='<%# Eval("FileName") %>' />
                                                                    </a>
                                                                    <div style="display: table; margin-bottom: 5px; width: 100%; padding: 2px 2px 2px 2px;
                                                                        border-spacing: 2px 2px 2px 2px; text-align: center;">
                                                                        <a style="display: table-cell; font-size: 11px; padding: 2px 2px 2px 2px; border-spacing: 2px 2px 2px 2px;
                                                                            text-align: center;" href='<%# Eval("FileURI") %>' download='<%# Eval("FileName").ToString().Substring(0,Eval("FileName").ToString().LastIndexOf(".")) %>'>
                                                                            Download</a>
                                                                        <asp:LinkButton PostBackUrl="~/Manage/Main.aspx" Style="display: table-cell; font-size: 11px; padding: 2px 2px 2px 2px;
                                                                            border-spacing: 2px 2px 2px 2px; text-align: center;" ID="lnkDeleteFile" Text="Delete"
                                                                            CommandArgument='<%# Eval("ID").ToString()+","+Eval("VersionNumber").ToString()+","+Eval("FileURI").ToString()+","+Eval("FileCouplingID").ToString() %>'
                                                                            CommandName="DeleteFile" runat="server" OnCommand="lnkDeleteFile_Command">Delete</asp:LinkButton>
                                                                        <asp:ConfirmButtonExtender ID="lnkDeleteFile_ConfirmButtonExtender" runat="server"
                                                                            ConfirmText="Are you sure you want to delete this file?" Enabled="True" TargetControlID="lnkDeleteFile">
                                                                        </asp:ConfirmButtonExtender>
                                                                        <asp:Panel ID="PanelHrefEdit" Visible='<%# ("Page,Script,Style,Text".IndexOf(Eval("FileTypeName").ToString())>=0) %>'
                                                                            runat="server">
                                                                            <a target="_blank" onclick="if(hrefPageBuilder!=null){event.preventDefault();return false;}else{pageBuilder(this);return true;}"
                                                                                style="display: table-cell; padding: 2px 2px 2px 2px; border-spacing: 2px 2px 2px 2px;
                                                                                text-align: center; font-size: 11px;" href='<%# Eval("FileURI") %>' runat="server">
                                                                                Edit</a>
                                                                        </asp:Panel>
                                                                    </div>
                                                                    <asp:Label Style="display: block; font-size: 11px;" ID="VersionTimestampLabel" runat="server"
                                                                        Text='<%# Eval("VersionTimestamp") %>' />
                                                                    <asp:Label Style="display: block; font-size: 11px;" ID="FileSizeLabel" runat="server"
                                                                        Text='<%# "Size: "+Eval("FileSize").ToString()+" bytes" %>' />
                                                                </div>
                                                            </td>
                                                        </ItemTemplate>
                                                        <LayoutTemplate>
                                                            <table runat="server">
                                                                <tr runat="server">
                                                                    <td runat="server">
                                                                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;
                                                                            border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;
                                                                            font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                                            <tr id="groupPlaceholder" runat="server">
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                                <tr runat="server">
                                                                    <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;
                                                                        color: #FFFFFF">
                                                                        <asp:DataPager ID="DataPagerMain" runat="server" PageSize="12">
                                                                            <Fields>
                                                                                <asp:NumericPagerField />
                                                                            </Fields>
                                                                        </asp:DataPager>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </LayoutTemplate>
                                                    </asp:ListView>
                                                    <asp:SqlDataSource ID="SqlDataSourceListFile" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                                        
                                                        SelectCommand="SELECT [File].ID, [File].VersionNumber,FileCoupling.ID as FileCouplingID, [File].VersionTimestamp, [File].FileName, replace([File].FileURI,'~','') as FileURI, [File].FilePath FilePath, [File].FileSize, [File].TextFileContents, FileType.Name as FileTypeName FROM [File] INNER JOIN FileCoupling ON [File].ID = FileCoupling.FileID INNER JOIN FileType ON [File].FileTypeID = FileType.ID WHERE ([File].CurrentVersion = 1) AND ([File].FileTypeID = @FileTypeID) AND (FileCoupling.FolderID = @FolderID) order by [File].FileName">
                                                        <SelectParameters>
                                                            <asp:ControlParameter DbType="Guid" ControlID="LabelFileTypeID" Name="FileTypeID"
                                                                PropertyName="Value" />
                                                            <asp:SessionParameter DbType="Guid" Name="FolderID" SessionField="SELECTEDFOLDERID" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceFileType" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                        SelectCommand="SELECT [ID], [Name], [Extension] FROM [FileType] ORDER BY [Name]">
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </div>
                2. Display message for not enough Credits 3. Create Files 4. Crediting 5. Editing 6. Admin / Reporting
                <asp:FormView ID="FormViewCreateAccount" runat="server" DataSourceID="SqlDataSourceFormViewCreateAccount">
                    <ItemTemplate>
                        <asp:Panel ID="PanelCreateAccountHeader" runat="server" Visible='<%# (Eval("AccountCount").ToString().Equals("0")) %>'>
                            <h2>
                                Create Account</h2>
                            <asp:TextBox ID="TextBoxUserID" Style="display: none;" runat="server" Text='<%# Membership.GetUser(this.Context.User.Identity.Name).ProviderUserKey  %>'></asp:TextBox>
                        </asp:Panel>
                        <asp:UpdatePanel ID="UpdatePanelCreateAccount" runat="server">
                            <ContentTemplate>
                                <asp:DetailsView ID="DetailsViewCreateAccount" runat="server" AutoGenerateRows="False"
                                    DataKeyNames="ID" DataSourceID="SqlDataSourceCreateAccount" DefaultMode="Insert"
                                    OnItemInserted="DetailsViewCreateAccount_ItemInserted" Visible='<%# (Eval("AccountCount").ToString().Equals("0")) %>'>
                                    <Fields>
                                        <asp:TemplateField HeaderText="Account Name" SortExpression="Name" Visible="True">
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                                <asp:MaskedEditExtender ID="TextBox2_MaskedEditExtender" runat="server" Mask="LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL"
                                                    Enabled="True" TargetControlID="TextBox2">
                                                </asp:MaskedEditExtender>
                                            </InsertItemTemplate>
                                        </asp:TemplateField>
                                        <asp:CommandField ButtonType="Button" ShowCancelButton="False" ShowInsertButton="True" />
                                    </Fields>
                                </asp:DetailsView>
                                <asp:SqlDataSource ID="SqlDataSourceCreateAccount" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    DeleteCommand="DELETE FROM [Account] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Account] ([ID], [Name], [UserID]) VALUES (@ID, @Name, @UserID)"
                                    SelectCommand="SELECT [ID], [Name], [UserID] FROM [Account]" UpdateCommand="UPDATE [Account] SET [Name] = @Name, [UserID] = @UserID WHERE [ID] = @ID">
                                    <DeleteParameters>
                                        <asp:Parameter Name="ID" Type="Object" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:ControlParameter ControlID="TextBoxNewAccountID" Name="ID" PropertyName="Text"
                                            DbType="Guid" />
                                        <asp:Parameter Name="Name" Type="String" />
                                        <asp:ControlParameter ControlID="TextBoxUserID" Name="UserID" PropertyName="Text"
                                            DbType="Guid" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Name" Type="String" />
                                        <asp:Parameter Name="UserID" Type="Object" />
                                        <asp:Parameter Name="ID" Type="Object" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </ContentTemplate>
                            <Triggers>
                                <asp:PostBackTrigger ControlID="DetailsViewCreateAccount" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSourceAddCredits" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    InsertCommand="INSERT INTO AccountCredit
SELECT NEWID() AS Expr1, 1 AS Expr5, 1 AS Expr2, GETDATE() AS Expr3,@AccountID AS Expr4, Credit.CreditType, Credit.Credits
FROM  PackageCredit INNER JOIN
               Credit ON PackageCredit.CreditID = Credit.ID
WHERE (PackageCredit.PackageID = '00000000-0000-0000-0000-000000000001')" SelectCommand="SELECT * FROM AccountCredit where CurrentVersion=1"
                    UpdateCommand="update AccountCredit set Credits=Credits-1 where AccountID=@AccountID and CreditTypeID='00000000-0000-0000-0000-000000000001 and CurrentVersion=1'">
                    <InsertParameters>
                        <asp:ControlParameter ControlID="TextBoxNewAccountID" DbType="Guid" Name="AccountID"
                            PropertyName="Text" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="TextBoxNewAccountID" DbType="Guid" Name="AccountID"
                            PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSourceFormViewCreateAccount" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT COUNT(*) AS AccountCount FROM Account INNER JOIN aspnet_Users ON Account.UserID = aspnet_Users.UserId AND rtrim(UPPER(aspnet_Users.UserName)) = rtrim(UPPER(@Username))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBoxUserName" ConvertEmptyStringToNull="False"
                            DefaultValue="" Name="Username" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSourceFormViewAccount" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT COUNT(*) AS AccountCount FROM Account INNER JOIN aspnet_Users ON Account.UserID = aspnet_Users.UserId AND rtrim(UPPER(aspnet_Users.UserName)) = rtrim(UPPER(@Username))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBoxUserName" DefaultValue="" Name="Username"
                            PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnDecrementBuilderUsage" />
                <asp:PostBackTrigger ControlID="btnRefreshFiles" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgressMain" runat="server">
            <ProgressTemplate>
                <asp:Panel ID="PanelProgress" runat="server" CssClass="progressPanel">
                    <div style="border: 1px dotted black; font-size: 22px; position: absolute; width: 200px;
                        height: 100px; left: 50%; top: 50%; margin: -50px 0px 0px -100px; text-align: center;
                        display: table-cell; vertical-align: middle;">
                        <br />
                        Loading...
                    </div>
                </asp:Panel>
                <asp:DropShadowExtender ID="PanelProgress_DropShadowExtender" runat="server" Enabled="True"
                    TargetControlID="PanelProgress">
                </asp:DropShadowExtender>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </div> 
</asp:Content>
