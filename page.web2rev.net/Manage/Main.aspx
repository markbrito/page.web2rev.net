<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="True"
    CodeBehind="Main.aspx.cs" Inherits="page.web2rev.net.Manage.Main" %>

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
</asp:Content>
<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContent" runat="server">
    <div class="divMainContent">
        <asp:ToolkitScriptManager ID="ToolkitScriptManagerMain" runat="server">
        </asp:ToolkitScriptManager>
        <asp:UpdatePanel ID="UpdatePanelMain" runat="server">
            <ContentTemplate>
                <asp:TextBox ID="TextBoxUserName" Style="display: none;" runat="server" Text='<%# Membership.GetUser(this.Context.User.Identity.Name).UserName  %>'></asp:TextBox>
                <asp:TextBox ID="TextBoxNewAccountID" Style="display: none;" runat="server" Text='<%# Guid.NewGuid().ToString() %>'></asp:TextBox>
                <asp:TextBox ID="TextBoxNewSiteID" Style="display: none;" runat="server" Text='<%# Guid.NewGuid().ToString() %>'></asp:TextBox>
                <asp:TextBox ID="TextBoxSelectedSiteRootFolderID" Style="display: none;" runat="server"
                    Text='<%# Guid.Empty.ToString() %>'></asp:TextBox>
                <asp:TextBox ID="TextBoxSiteCreatedAccountName" Style="display: none;" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBoxSiteCreatedSiteName" Style="display: none;" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBoxSelectedServerPathFolder" Style="display: none;" runat="server"></asp:TextBox>
                <asp:FormView ID="FormViewAccount" runat="server" DataSourceID="SqlDataSourceFormViewAccount">
                    <ItemTemplate>
                        <asp:Panel ID="PanelHeader" runat="server" Width="100%" Visible='<%# !(Eval("AccountCount").ToString().Equals("0")) %>'
                            Style="font-weight: 700">
                            <asp:UpdatePanel ID="UpdatePanelCreateSite" runat="server">
                                <ContentTemplate>
                                    login:
                                    <% Response.Write(Membership.GetUser(this.Context.User.Identity.Name).UserName + "(" + Membership.GetUser(this.Context.User.Identity.Name).Email + ")"); %>
                                    account:<asp:DropDownList ID="ddlAccount" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceAccount"
                                        DataTextField="Name" DataValueField="ID" OnDataBound="ddlAccount_DataBound">
                                    </asp:DropDownList>
                                    <span style="position: absolute; top: 0px; right: 0px;">
                                        <asp:GridView ID="GridViewCredits" BackColor="White" ForeColor="Black" runat="server"
                                            ShowHeader="True" DataSourceID="SqlDataSourceCredits">
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSourceCredits" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT CreditType.Name as 'Credits', sum(AccountCredit.Credits) as '#' FROM AccountCredit INNER JOIN CreditType ON AccountCredit.CreditTypeID = CreditType.ID WHERE AccountID=@AccountID  GROUP BY CreditType.Name ">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlAccount" Name="AccountID" PropertyName="SelectedValue" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </span>
                                    <asp:Button ID="btnCreateSite" runat="server" Text="Create Site" OnClick="btnCreateSite_Click"
                                        OnClientClick="document.getElementById('MainContent_TextBoxSiteCreatedSiteName').value=document.getElementById('MainContent_FormViewAccount_HiddenFieldNewSiteName').value=prompt('Enter New Site Name');var ddl=document.getElementById('MainContent_FormViewAccount_ddlAccount');document.getElementById('MainContent_TextBoxSiteCreatedAccountName').value=ddl.options[ddl.selectedIndex].text;" />
                                    <asp:SqlDataSource ID="SqlDataSourceCreateSite" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                        UpdateCommand="update AccountCredit set Credits=Credits-1 where AccountID=@AccountID and CreditTypeID='00000000-0000-0000-0000-000000000002'"
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
                                    <table cellpadding="10" border="1">
                                        <tr>
                                            <td valign="top">
                                                <span class="subHeader">SITES</span>
                                                <asp:GridView ID="gvSites" runat="server" AllowPaging="True" AllowSorting="True"
                                                    AutoGenerateColumns="False" DataKeyNames="ID,VersionNumber" DataSourceID="SqlDataSourceAccountSites"
                                                    SelectedRowStyle-BackColor="#CCCCCC" PageSize="15" EnablePersistedSelection="True" EnableSortingAndPagingCallbacks="True">
                                                    <Columns>
                                                        <asp:TemplateField ShowHeader="False">
                                                            <ItemTemplate>
                                                                <asp:UpdatePanel ID="UpdatePanelSiteSelect" runat="server">
                                                                    <ContentTemplate>
                                                                        <asp:LinkButton ID="lnkSelectSite" runat="server" CausesValidation="False" CommandName="Select"
                                                                            Text="Select" CommandArgument='<%# Bind("ID") %>' OnCommand="lnkSelectSite_Command"></asp:LinkButton>
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
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
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
                                            <td valign="top">
                                                <span class="subHeader">FOLDER UPLOAD</span><br />
                                                <asp:UpdatePanel ID="UpdatePanelFolderUpload" runat="server">
                                                <ContentTemplate>
                                                    <asp:AjaxFileUpload ID="AjaxFileUploadFolders" runat="server" 
                                                        onuploadcomplete="AjaxFileUploadFolders_UploadComplete" 
                                                         AllowedFileTypes="jpg,png,gif,jpeg,txt,xml,html,htm,js,json,css,xsd,xsl" />
                                                </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </td>
                                        </tr>
                                    </table>
                                    
                                    2. Files Grid,&nbsp; Subtract upload/f Credits 3. Create Files 4. Crediting 5. 
                                    Editing 6. Admin / Reporting
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
WHERE (PackageCredit.PackageID = '00000000-0000-0000-0000-000000000001')" SelectCommand="SELECT * FROM AccountCredit"
                    UpdateCommand="update AccountCredit set Credits=Credits-1 where AccountID=@AccountID and CreditTypeID='00000000-0000-0000-0000-000000000001'">
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
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgressMain" runat="server">
            <ProgressTemplate>
                <asp:Panel ID="PanelProgress" runat="server" CssClass="progressPanel">
                </asp:Panel>
                <asp:DropShadowExtender ID="PanelProgress_DropShadowExtender" runat="server" Enabled="True"
                    TargetControlID="PanelProgress">
                </asp:DropShadowExtender>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </div>
</asp:Content>
