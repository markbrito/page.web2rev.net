/****** Object:  ForeignKey [FK_AccountCredit_Account]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccountCredit_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountCredit]'))
ALTER TABLE [dbo].[AccountCredit] DROP CONSTRAINT [FK_AccountCredit_Account]
GO
/****** Object:  ForeignKey [FK_AccountCredit_CreditType]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccountCredit_CreditType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountCredit]'))
ALTER TABLE [dbo].[AccountCredit] DROP CONSTRAINT [FK_AccountCredit_CreditType]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__21B6055D]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__21B6055D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__Appli__21B6055D]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__22AA2996]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__22AA2996]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__UserI__22AA2996]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__5AEE82B9]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__5AEE82B9]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [FK__aspnet_Pa__Appli__5AEE82B9]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__628FA481]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__628FA481]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] DROP CONSTRAINT [FK__aspnet_Pe__PathI__628FA481]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__68487DD7]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__68487DD7]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__PathI__68487DD7]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__693CA210]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__693CA210]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__UserI__693CA210]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__38996AB5]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__38996AB5]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile] DROP CONSTRAINT [FK__aspnet_Pr__UserI__38996AB5]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__440B1D61]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__440B1D61]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [FK__aspnet_Ro__Appli__440B1D61]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__0DAF0CB0]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0DAF0CB0]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [FK__aspnet_Us__Appli__0DAF0CB0]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__4AB81AF0]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__4AB81AF0]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__RoleI__4AB81AF0]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__49C3F6B7]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__49C3F6B7]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__UserI__49C3F6B7]
GO
/****** Object:  ForeignKey [FK_Credit_CreditType]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Credit_CreditType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Credit]'))
ALTER TABLE [dbo].[Credit] DROP CONSTRAINT [FK_Credit_CreditType]
GO
/****** Object:  ForeignKey [FK_File_FileType1]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_File_FileType1]') AND parent_object_id = OBJECT_ID(N'[dbo].[File]'))
ALTER TABLE [dbo].[File] DROP CONSTRAINT [FK_File_FileType1]
GO
/****** Object:  ForeignKey [FK_FileCoupling_Folder]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileCoupling_Folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileCoupling]'))
ALTER TABLE [dbo].[FileCoupling] DROP CONSTRAINT [FK_FileCoupling_Folder]
GO
/****** Object:  ForeignKey [FK_FolderCoupling_Folder]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FolderCoupling_Folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[FolderCoupling]'))
ALTER TABLE [dbo].[FolderCoupling] DROP CONSTRAINT [FK_FolderCoupling_Folder]
GO
/****** Object:  ForeignKey [FK_FolderCoupling_Folder1]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FolderCoupling_Folder1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FolderCoupling]'))
ALTER TABLE [dbo].[FolderCoupling] DROP CONSTRAINT [FK_FolderCoupling_Folder1]
GO
/****** Object:  ForeignKey [FK_PackageCredit_Credit]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PackageCredit_Credit]') AND parent_object_id = OBJECT_ID(N'[dbo].[PackageCredit]'))
ALTER TABLE [dbo].[PackageCredit] DROP CONSTRAINT [FK_PackageCredit_Credit]
GO
/****** Object:  ForeignKey [FK_PackageCredit_Package]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PackageCredit_Package]') AND parent_object_id = OBJECT_ID(N'[dbo].[PackageCredit]'))
ALTER TABLE [dbo].[PackageCredit] DROP CONSTRAINT [FK_PackageCredit_Package]
GO
/****** Object:  ForeignKey [FK_Site_Account]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Site_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Site]'))
ALTER TABLE [dbo].[Site] DROP CONSTRAINT [FK_Site_Account]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_SetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_AnyDataInTables]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_SetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_DeleteUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
DROP VIEW [dbo].[vw_aspnet_MembershipUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
DROP VIEW [dbo].[vw_aspnet_Profiles]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
DROP VIEW [dbo].[vw_aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Shared]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_User]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Paths]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
DROP VIEW [dbo].[vw_aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
DROP VIEW [dbo].[vw_aspnet_Users]
GO
/****** Object:  Table [dbo].[PackageCredit]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PackageCredit]') AND type in (N'U'))
DROP TABLE [dbo].[PackageCredit]
GO
/****** Object:  StoredProcedure [dbo].[CreateDefaultDirectores]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CreateDefaultDirectores]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CreateDefaultDirectores]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_CreateRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_CreateUser]
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_GetAllRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_RoleExists]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Profile]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Membership]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Paths_CreatePath]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId]
GO
/****** Object:  Table [dbo].[AccountCredit]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccountCredit]') AND type in (N'U'))
DROP TABLE [dbo].[AccountCredit]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Roles]
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Paths]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Users]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
GO
/****** Object:  Table [dbo].[File]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[File]') AND type in (N'U'))
DROP TABLE [dbo].[File]
GO
/****** Object:  Table [dbo].[FileCoupling]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileCoupling]') AND type in (N'U'))
DROP TABLE [dbo].[FileCoupling]
GO
/****** Object:  Table [dbo].[Credit]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Credit]') AND type in (N'U'))
DROP TABLE [dbo].[Credit]
GO
/****** Object:  Table [dbo].[FolderCoupling]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FolderCoupling]') AND type in (N'U'))
DROP TABLE [dbo].[FolderCoupling]
GO
/****** Object:  Table [dbo].[Site]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Site]') AND type in (N'U'))
DROP TABLE [dbo].[Site]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 03/07/2013 03:55:35 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
DROP VIEW [dbo].[vw_aspnet_Applications]
GO
/****** Object:  Table [dbo].[SO]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SO]') AND type in (N'U'))
DROP TABLE [dbo].[SO]
GO
/****** Object:  Table [dbo].[SO_LI]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SO_LI]') AND type in (N'U'))
DROP TABLE [dbo].[SO_LI]
GO
/****** Object:  Table [dbo].[Package]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Package]') AND type in (N'U'))
DROP TABLE [dbo].[Package]
GO
/****** Object:  Table [dbo].[CreditType]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CreditType]') AND type in (N'U'))
DROP TABLE [dbo].[CreditType]
GO
/****** Object:  Table [dbo].[FileType]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileType]') AND type in (N'U'))
DROP TABLE [dbo].[FileType]
GO
/****** Object:  Table [dbo].[Folder]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Folder]') AND type in (N'U'))
DROP TABLE [dbo].[Folder]
GO
/****** Object:  Table [dbo].[Balance]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Balance]') AND type in (N'U'))
DROP TABLE [dbo].[Balance]
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_SchemaVersions]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_WebEvent_Events]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[AR]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AR]') AND type in (N'U'))
DROP TABLE [dbo].[AR]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
/****** Object:  Default [DF_AccountCredit_VersionTimestamp]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AccountCredit_VersionTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountCredit]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AccountCredit_VersionTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AccountCredit] DROP CONSTRAINT [DF_AccountCredit_VersionTimestamp]
END


End
GO
/****** Object:  Default [DF_AR_CurrentVersion]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AR_CurrentVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[AR]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AR_CurrentVersion]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AR] DROP CONSTRAINT [DF_AR_CurrentVersion]
END


End
GO
/****** Object:  Default [DF_AR_VersionTimestamp]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AR_VersionTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[AR]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AR_VersionTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AR] DROP CONSTRAINT [DF_AR_VersionTimestamp]
END


End
GO
/****** Object:  Default [DF_AR_SOTimestamp]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AR_SOTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[AR]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AR_SOTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AR] DROP CONSTRAINT [DF_AR_SOTimestamp]
END


End
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__08EA5793]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ap__Appli__08EA5793]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ap__Appli__08EA5793]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Applications] DROP CONSTRAINT [DF__aspnet_Ap__Appli__08EA5793]
END


End
GO
/****** Object:  Default [DF__aspnet_Me__Passw__239E4DCF]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Me__Passw__239E4DCF]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Me__Passw__239E4DCF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [DF__aspnet_Me__Passw__239E4DCF]
END


End
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__5BE2A6F2]    Script Date: 03/07/2013 03:55:33 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Pa__PathI__5BE2A6F2]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Pa__PathI__5BE2A6F2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [DF__aspnet_Pa__PathI__5BE2A6F2]
END


End
GO
/****** Object:  Default [DF__aspnet_Perso__Id__6754599E]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Perso__Id__6754599E]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Perso__Id__6754599E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [DF__aspnet_Perso__Id__6754599E]
END


End
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__44FF419A]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ro__RoleI__44FF419A]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ro__RoleI__44FF419A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [DF__aspnet_Ro__RoleI__44FF419A]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__UserI__0EA330E9]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__UserI__0EA330E9]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__UserI__0EA330E9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__UserI__0EA330E9]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__0F975522]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__Mobil__0F975522]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__Mobil__0F975522]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__Mobil__0F975522]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__108B795B]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__IsAno__108B795B]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__IsAno__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__IsAno__108B795B]
END


End
GO
/****** Object:  Default [DF_A_ID]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_A_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balance]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_A_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Balance] DROP CONSTRAINT [DF_A_ID]
END


End
GO
/****** Object:  Default [DF_A_CurrentVersion]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_A_CurrentVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balance]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_A_CurrentVersion]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Balance] DROP CONSTRAINT [DF_A_CurrentVersion]
END


End
GO
/****** Object:  Default [DF_A_VersionTimestamp]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_A_VersionTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balance]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_A_VersionTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Balance] DROP CONSTRAINT [DF_A_VersionTimestamp]
END


End
GO
/****** Object:  Default [DF_File_VersionTimestamp]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_File_VersionTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[File]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_File_VersionTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[File] DROP CONSTRAINT [DF_File_VersionTimestamp]
END


End
GO
/****** Object:  Default [DF_File_FileTypeID]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_File_FileTypeID]') AND parent_object_id = OBJECT_ID(N'[dbo].[File]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_File_FileTypeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[File] DROP CONSTRAINT [DF_File_FileTypeID]
END


End
GO
/****** Object:  Default [DF_File_Deleted]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_File_Deleted]') AND parent_object_id = OBJECT_ID(N'[dbo].[File]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_File_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[File] DROP CONSTRAINT [DF_File_Deleted]
END


End
GO
/****** Object:  Default [DF_FileType_ID]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_FileType_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileType]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_FileType_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FileType] DROP CONSTRAINT [DF_FileType_ID]
END


End
GO
/****** Object:  Default [DF_Package_Visible]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Package_Visible]') AND parent_object_id = OBJECT_ID(N'[dbo].[Package]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Package_Visible]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Package] DROP CONSTRAINT [DF_Package_Visible]
END


End
GO
/****** Object:  Default [DF_Site_VersionTimestamp]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Site_VersionTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[Site]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Site_VersionTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Site] DROP CONSTRAINT [DF_Site_VersionTimestamp]
END


End
GO
/****** Object:  Default [DF_SO_CurrentVersion]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SO_CurrentVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[SO]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SO_CurrentVersion]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SO] DROP CONSTRAINT [DF_SO_CurrentVersion]
END


End
GO
/****** Object:  Default [DF_SO_VersionTimestamp]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SO_VersionTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[SO]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SO_VersionTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SO] DROP CONSTRAINT [DF_SO_VersionTimestamp]
END


End
GO
/****** Object:  Default [DF_SO_SOTimestamp]    Script Date: 03/07/2013 03:55:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SO_SOTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[SO]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SO_SOTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SO] DROP CONSTRAINT [DF_SO_SOTimestamp]
END


End
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
DROP SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
DROP SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
DROP SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
DROP SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
DROP SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
DROP SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
DROP SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
DROP SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
DROP SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
DROP SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
DROP SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
DROP SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
DROP SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 03/07/2013 03:55:35 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_BasicAccess]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 03/07/2013 03:55:35 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 03/07/2013 03:55:35 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 03/07/2013 03:55:35 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 03/07/2013 03:55:35 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 03/07/2013 03:55:35 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 03/07/2013 03:55:35 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 03/07/2013 03:55:35 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 03/07/2013 03:55:35 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 03/07/2013 03:55:35 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 03/07/2013 03:55:35 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 03/07/2013 03:55:35 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 03/07/2013 03:55:35 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_WebEvent_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
DROP ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 03/07/2013 03:55:35 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 03/07/2013 03:55:35 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 03/07/2013 03:55:35 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 03/07/2013 03:55:35 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 03/07/2013 03:55:35 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 03/07/2013 03:55:35 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 03/07/2013 03:55:35 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 03/07/2013 03:55:35 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 03/07/2013 03:55:35 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 03/07/2013 03:55:35 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 03/07/2013 03:55:35 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 03/07/2013 03:55:35 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 03/07/2013 03:55:35 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]'
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]'
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]'
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 03/07/2013 03:55:36 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]'
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/07/2013 03:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Account](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND name = N'IX_Account')
CREATE UNIQUE NONCLUSTERED INDEX [IX_Account] ON [dbo].[Account] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[Account] ([ID], [Name], [UserID]) VALUES (N'f81548c9-df9c-425d-a616-5770c9c934f7', N'WebAccount', N'3e33ec73-461a-4cab-a2bd-de4feea1be20')
/****** Object:  Table [dbo].[AR]    Script Date: 03/07/2013 03:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AR](
	[ID] [uniqueidentifier] NOT NULL,
	[CurrentVersion] [bit] NOT NULL,
	[VersionNumber] [int] NOT NULL,
	[VersionTimestamp] [datetime] NOT NULL,
	[Number] [int] IDENTITY(1,1) NOT NULL,
	[Total] [money] NOT NULL,
	[Title] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ARTimestamp] [datetime] NOT NULL,
	[Canceled] [bit] NOT NULL,
	[ReferenceCode] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ReferenceID] [uniqueidentifier] NOT NULL,
	[ReferenceTable] [varchar](32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UserID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 03/07/2013 03:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredApplicationName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__aspnet_A__C93A4C98014935CB] PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ__aspnet_A__17477DE40425A276] UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ__aspnet_A__3091033107020F21] UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND name = N'aspnet_Applications_Index')
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'/', N'840f690a-b787-454f-a081-3506bfeb4ca3', NULL)
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApplicationPath] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApplicationVirtualPath] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MachineName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RequestUrl] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExceptionType] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Details] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__aspnet_W__7944C810797309D9] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + '' '' + @action + '' on '' + @object + '' TO ['' + @grantee + '']''
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = ''EXEC sp_droprolemember '' + '''''''' + @name + '''''', '''''' + USER_NAME(@user_id) + ''''''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
 CONSTRAINT [PK__aspnet_S__5A1E6BC11367E606] PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[Balance]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Balance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Balance](
	[ID] [uniqueidentifier] NOT NULL,
	[CurrentVersion] [bit] NOT NULL,
	[VersionNumber] [int] NOT NULL,
	[VersionTimestamp] [datetime] NOT NULL,
	[Balance] [money] NOT NULL,
	[AR] [money] NOT NULL,
	[AP] [money] NOT NULL,
	[SO] [money] NOT NULL,
	[PO] [money] NOT NULL,
	[Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ReferenceCode] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ReferenceID] [uniqueidentifier] NOT NULL,
	[ReferenceTable] [varchar](32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UserID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_A] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Folder]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Folder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Folder](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Folder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Folder] ([ID], [Name]) VALUES (N'6f3ad653-bab9-4e01-9880-4291d6748e0e', N'Script')
INSERT [dbo].[Folder] ([ID], [Name]) VALUES (N'844f7153-684e-44ee-9080-4df693fcfd26', N'Image')
INSERT [dbo].[Folder] ([ID], [Name]) VALUES (N'ffcf27fe-4bb7-4924-8f21-6a240eeed6a9', N'Resource')
INSERT [dbo].[Folder] ([ID], [Name]) VALUES (N'd5d97b63-55b0-49e8-9242-6bc4f9d42f11', N'Style')
INSERT [dbo].[Folder] ([ID], [Name]) VALUES (N'fcc02e1c-2980-4c9c-9887-9253dc8b046b', N'File')
INSERT [dbo].[Folder] ([ID], [Name]) VALUES (N'02c2dd02-da32-4b7d-966d-a362ac5cb797', N'MainSite')
INSERT [dbo].[Folder] ([ID], [Name]) VALUES (N'1d4d4c1b-6500-48de-a101-b8901c73adee', N'Page')
/****** Object:  Table [dbo].[FileType]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FileType](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Extension] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_FileType_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[FileType] ([ID], [Name], [Extension]) VALUES (N'00000000-0000-0000-0000-000000000001', N'Image', N'.jpg,.png,.gif,.jpeg')
INSERT [dbo].[FileType] ([ID], [Name], [Extension]) VALUES (N'00000000-0000-0000-0000-000000000002', N'Page', N'.html,.htm')
INSERT [dbo].[FileType] ([ID], [Name], [Extension]) VALUES (N'00000000-0000-0000-0000-000000000003', N'Script', N'.js,.json')
INSERT [dbo].[FileType] ([ID], [Name], [Extension]) VALUES (N'00000000-0000-0000-0000-000000000004', N'Text', N'.xml,.txt,.xsd,.xsl')
INSERT [dbo].[FileType] ([ID], [Name], [Extension]) VALUES (N'00000000-0000-0000-0000-000000000005', N'Style', N'.css')
INSERT [dbo].[FileType] ([ID], [Name], [Extension]) VALUES (N'00000000-0000-0000-0000-000000000006', N'Video', N'.mp4,.webm')
INSERT [dbo].[FileType] ([ID], [Name], [Extension]) VALUES (N'00000000-0000-0000-0000-000000000007', N'Audio', N'.mp3')
INSERT [dbo].[FileType] ([ID], [Name], [Extension]) VALUES (N'00000000-0000-0000-0000-000000000008', N'Other', N'Other')
/****** Object:  Table [dbo].[CreditType]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CreditType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CreditType](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_CreditType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CreditType] ([ID], [Name], [Notes]) VALUES (N'00000000-0000-0000-0000-000000000001', N'Account', N'Account')
INSERT [dbo].[CreditType] ([ID], [Name], [Notes]) VALUES (N'00000000-0000-0000-0000-000000000002', N'Site', N'Site')
INSERT [dbo].[CreditType] ([ID], [Name], [Notes]) VALUES (N'00000000-0000-0000-0000-000000000003', N'Page', N'Page')
INSERT [dbo].[CreditType] ([ID], [Name], [Notes]) VALUES (N'00000000-0000-0000-0000-000000000004', N'File', N'File')
INSERT [dbo].[CreditType] ([ID], [Name], [Notes]) VALUES (N'00000000-0000-0000-0000-000000000005', N'Image', N'Image')
INSERT [dbo].[CreditType] ([ID], [Name], [Notes]) VALUES (N'00000000-0000-0000-0000-000000000006', N'Disk Space', N'Disk Space')
INSERT [dbo].[CreditType] ([ID], [Name], [Notes]) VALUES (N'00000000-0000-0000-0000-000000000007', N'Page Builder', N'Page Builder')
INSERT [dbo].[CreditType] ([ID], [Name], [Notes]) VALUES (N'00000000-0000-0000-0000-000000000008', N'Other', N'Other')
/****** Object:  Table [dbo].[Package]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Package]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Package](
	[ID] [uniqueidentifier] NOT NULL,
	[SKU] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Name] [varchar](32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Cost] [money] NOT NULL,
	[Visible] [bit] NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Package]') AND name = N'IX_Package')
CREATE UNIQUE NONCLUSTERED INDEX [IX_Package] ON [dbo].[Package] 
(
	[SKU] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[Package] ([ID], [SKU], [Name], [Notes], [Cost], [Visible]) VALUES (N'00000000-0000-0000-0000-000000000001', N'PACKAGENEW', N'New Account Credit Package', N'Free Trial Credits', 0.0000, 0)
/****** Object:  Table [dbo].[SO_LI]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SO_LI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SO_LI](
	[ID] [uniqueidentifier] NOT NULL,
	[CurrentVersion] [bit] NOT NULL,
	[VersionNumber] [int] NOT NULL,
	[VersionTimestamp] [datetime] NOT NULL,
	[SOID] [uniqueidentifier] NOT NULL,
	[Number] [int] IDENTITY(1,1) NOT NULL,
	[SKU] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Title] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CostPerItem] [money] NOT NULL,
	[Quantity] [float] NOT NULL,
	[Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Canceled] [bit] NOT NULL,
	[ReferenceCode] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ReferenceID] [uniqueidentifier] NOT NULL,
	[ReferenceTable] [varchar](32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UserID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SO_LI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[SO]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SO](
	[ID] [uniqueidentifier] NOT NULL,
	[CurrentVersion] [bit] NOT NULL,
	[VersionNumber] [int] NOT NULL,
	[VersionTimestamp] [datetime] NOT NULL,
	[Number] [int] IDENTITY(1,1) NOT NULL,
	[SONumber] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Total] [money] NOT NULL,
	[Title] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SOTimestamp] [datetime] NOT NULL,
	[Canceled] [bit] NOT NULL,
	[ReferenceCode] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ReferenceID] [uniqueidentifier] NOT NULL,
	[ReferenceTable] [varchar](32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UserID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  '
GO
/****** Object:  Table [dbo].[Site]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Site]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Site](
	[ID] [uniqueidentifier] NOT NULL,
	[CurrentVersion] [bit] NOT NULL,
	[VersionNumber] [int] NOT NULL,
	[VersionTimestamp] [datetime] NOT NULL,
	[AccountID] [uniqueidentifier] NULL,
	[Name] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RootFolderID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Site] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Site]') AND name = N'IX_Site_1')
CREATE UNIQUE NONCLUSTERED INDEX [IX_Site_1] ON [dbo].[Site] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[Site] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [Name], [RootFolderID]) VALUES (N'8302ee9c-2b0a-4cbe-b21f-f86f96da7c6c', 1, 1, CAST(0x0000A1780023A8EC AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'MainSite', N'02c2dd02-da32-4b7d-966d-a362ac5cb797')
/****** Object:  Table [dbo].[FolderCoupling]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FolderCoupling]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FolderCoupling](
	[ID] [uniqueidentifier] NOT NULL,
	[ParentFolderID] [uniqueidentifier] NOT NULL,
	[ChildFolderID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_FolderCoupling] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[FolderCoupling] ([ID], [ParentFolderID], [ChildFolderID]) VALUES (N'30ebf0b9-7a3c-477a-903f-0c1748f8a172', N'02c2dd02-da32-4b7d-966d-a362ac5cb797', N'd5d97b63-55b0-49e8-9242-6bc4f9d42f11')
INSERT [dbo].[FolderCoupling] ([ID], [ParentFolderID], [ChildFolderID]) VALUES (N'cccc7736-f3d5-4269-b63d-17f17ee93772', N'ffcf27fe-4bb7-4924-8f21-6a240eeed6a9', N'fcc02e1c-2980-4c9c-9887-9253dc8b046b')
INSERT [dbo].[FolderCoupling] ([ID], [ParentFolderID], [ChildFolderID]) VALUES (N'ba954b62-3710-4fa4-a437-3400286ecac4', N'02c2dd02-da32-4b7d-966d-a362ac5cb797', N'6f3ad653-bab9-4e01-9880-4291d6748e0e')
INSERT [dbo].[FolderCoupling] ([ID], [ParentFolderID], [ChildFolderID]) VALUES (N'1be5ba57-ed35-4cd2-bb43-69be80091d6b', N'ffcf27fe-4bb7-4924-8f21-6a240eeed6a9', N'844f7153-684e-44ee-9080-4df693fcfd26')
INSERT [dbo].[FolderCoupling] ([ID], [ParentFolderID], [ChildFolderID]) VALUES (N'dd9459fa-c810-43e5-9b2d-92c4a87c269f', N'02c2dd02-da32-4b7d-966d-a362ac5cb797', N'ffcf27fe-4bb7-4924-8f21-6a240eeed6a9')
INSERT [dbo].[FolderCoupling] ([ID], [ParentFolderID], [ChildFolderID]) VALUES (N'64866ead-2f14-4a4f-bded-9b62bbf34447', N'02c2dd02-da32-4b7d-966d-a362ac5cb797', N'1d4d4c1b-6500-48de-a101-b8901c73adee')
/****** Object:  Table [dbo].[Credit]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Credit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Credit](
	[ID] [uniqueidentifier] NOT NULL,
	[SKU] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Cost] [money] NOT NULL,
	[Name] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CreditType] [uniqueidentifier] NOT NULL,
	[Credits] [int] NOT NULL,
 CONSTRAINT [PK_Credit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Credit]') AND name = N'IX_Credit')
CREATE UNIQUE NONCLUSTERED INDEX [IX_Credit] ON [dbo].[Credit] 
(
	[SKU] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[Credit] ([ID], [SKU], [Cost], [Name], [Notes], [CreditType], [Credits]) VALUES (N'00000000-0000-0000-0000-000000000001', N'WEBBUILDERCREDITACCOUNT', 0.0000, N'Account Credit', N'Account Credit', N'00000000-0000-0000-0000-000000000001', 1)
INSERT [dbo].[Credit] ([ID], [SKU], [Cost], [Name], [Notes], [CreditType], [Credits]) VALUES (N'00000000-0000-0000-0000-000000000002', N'WEBBUILDERCREDITSITE', 0.0000, N'Site Credit', N'Site Credit', N'00000000-0000-0000-0000-000000000002', 1)
INSERT [dbo].[Credit] ([ID], [SKU], [Cost], [Name], [Notes], [CreditType], [Credits]) VALUES (N'00000000-0000-0000-0000-000000000003', N'WEBBUILDERCREDITPAGE', 0.0000, N'Page Credit', N'Page Credit', N'00000000-0000-0000-0000-000000000003', 2)
INSERT [dbo].[Credit] ([ID], [SKU], [Cost], [Name], [Notes], [CreditType], [Credits]) VALUES (N'00000000-0000-0000-0000-000000000004', N'WEBBUILDERCREDITFILE', 0.0000, N'File Credit', N'File Credit', N'00000000-0000-0000-0000-000000000004', 5)
INSERT [dbo].[Credit] ([ID], [SKU], [Cost], [Name], [Notes], [CreditType], [Credits]) VALUES (N'00000000-0000-0000-0000-000000000005', N'WEBBUILDERCREDITIMAGE', 0.0000, N'Image Credit', N'Image Credit', N'00000000-0000-0000-0000-000000000005', 5)
INSERT [dbo].[Credit] ([ID], [SKU], [Cost], [Name], [Notes], [CreditType], [Credits]) VALUES (N'00000000-0000-0000-0000-000000000006', N'WEBBUILDERCREDITDISKSPACE', 0.0000, N'Disk Credit', N'Disk Credit', N'00000000-0000-0000-0000-000000000006', 100000000)
INSERT [dbo].[Credit] ([ID], [SKU], [Cost], [Name], [Notes], [CreditType], [Credits]) VALUES (N'00000000-0000-0000-0000-000000000007', N'WEBBUILDERCREDITBUILDERUSAGE', 0.0000, N'Builder Credit', N'Buider Credit', N'00000000-0000-0000-0000-000000000007', 50)
/****** Object:  Table [dbo].[FileCoupling]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileCoupling]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FileCoupling](
	[ID] [uniqueidentifier] NOT NULL,
	[FolderID] [uniqueidentifier] NOT NULL,
	[FileID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_FileCoupling] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'b25733ce-147a-4dfb-b9d8-123f6e841f2b', N'fcc02e1c-2980-4c9c-9887-9253dc8b046b', N'4abd5c4e-7bbb-4a7c-91e7-42d16db2d51b')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'2e0ed778-a6f8-44be-949e-33783c64f276', N'fcc02e1c-2980-4c9c-9887-9253dc8b046b', N'6d797dbe-6212-41f4-aa94-c6645b1a5dd3')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'9b9521eb-7a49-42c5-8429-5844e244d8ec', N'844f7153-684e-44ee-9080-4df693fcfd26', N'be3c36cf-6665-469a-b867-6a71f845559c')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'70fb8b80-1951-4c65-bbf6-5a3280270764', N'd5d97b63-55b0-49e8-9242-6bc4f9d42f11', N'94e7123f-e539-47e3-a7ee-6bfef6353162')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'e67f8715-42de-4d65-bf18-6256c39e2b77', N'844f7153-684e-44ee-9080-4df693fcfd26', N'134139c2-db60-41ed-a785-c853cfd12c84')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'50e62e6b-8414-4c02-970e-77585183fc2d', N'fcc02e1c-2980-4c9c-9887-9253dc8b046b', N'f497cd9d-e5d5-4c3b-8dfb-11d4c0a695b1')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'0e860f43-8a07-4dbe-be8c-7d9dc5de0f8e', N'd5d97b63-55b0-49e8-9242-6bc4f9d42f11', N'97d1cc8c-e383-4ff3-ad7a-6e180cb4b475')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'84c2fa9b-ab61-453f-91fc-81d321f7091a', N'fcc02e1c-2980-4c9c-9887-9253dc8b046b', N'cd46cfee-5cfa-45d7-b36e-8a8636400047')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'5855f5c1-e6f4-4a76-987a-9115f8c7a900', N'844f7153-684e-44ee-9080-4df693fcfd26', N'faac8b90-cbfe-421d-8d79-843d3f000e99')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'55bcaf6c-4016-423b-87ac-a83a54d562a2', N'd5d97b63-55b0-49e8-9242-6bc4f9d42f11', N'cba9b6bd-6662-42a0-b01e-f6ba70149210')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'6469e2f4-3353-49c5-934e-b22ebf026eed', N'fcc02e1c-2980-4c9c-9887-9253dc8b046b', N'07066a9d-646e-40dd-8fad-7e1af896eb34')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'd8ecc7e6-ceb2-4f79-94c1-b802d5802a5b', N'844f7153-684e-44ee-9080-4df693fcfd26', N'01c29535-ec18-48a1-8524-3818190921b1')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'3fe19f42-4240-497f-86b9-c0940b24f14b', N'fcc02e1c-2980-4c9c-9887-9253dc8b046b', N'cbe5d38f-c989-449d-af31-6368ee3c1bc9')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'bc8cc479-b99f-4a49-8355-d4496e60ca0d', N'844f7153-684e-44ee-9080-4df693fcfd26', N'dffb0a78-147e-4421-bea3-84c496a6eff5')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'6fb9cab6-b163-4d5e-b0ad-d7dd714faf0d', N'fcc02e1c-2980-4c9c-9887-9253dc8b046b', N'43f22f2c-908e-421c-a710-759c51874cb9')
INSERT [dbo].[FileCoupling] ([ID], [FolderID], [FileID]) VALUES (N'f6df24b9-2a6e-491f-b36b-e4f5688113dd', N'844f7153-684e-44ee-9080-4df693fcfd26', N'40cdf65a-7a1a-4f69-9860-eba0aec22ccb')
/****** Object:  Table [dbo].[File]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[File]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[File](
	[ID] [uniqueidentifier] NOT NULL,
	[CurrentVersion] [bit] NOT NULL,
	[VersionNumber] [int] NOT NULL,
	[VersionTimestamp] [datetime] NOT NULL,
	[FileTypeID] [uniqueidentifier] NULL,
	[FileName] [varchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FileURI] [varchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FilePath] [varchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FileSize] [bigint] NOT NULL,
	[Deleted] [bit] NULL,
	[TextFileContents] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'86effd37-afb4-43f0-a045-06e911b92745', 0, 1, CAST(0x0000A178010C743C AS DateTime), N'00000000-0000-0000-0000-000000000001', N'Marketing.gif', N'~/Get/WebAccount/MainSite/Resource/File/Marketing.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\Marketing.gif', 2488, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'e435a0cf-696b-4575-b20d-0ed37501662d', 0, 1, CAST(0x0000A17901658B11 AS DateTime), N'00000000-0000-0000-0000-000000000004', N'vxd.xml', N'~/Get/WebAccount/MainSite/Style/vxd.xml', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\vxd.xml', 14419, 1, N'System.Byte[]')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'd1bbfedb-5db0-4ad5-9b41-10c9ed9cce52', 0, 1, CAST(0x0000A17A003E9154 AS DateTime), N'00000000-0000-0000-0000-000000000006', N'out.webm', N'~/Get/WebAccount/MainSite/Resource/File/out1.webm', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\out1.webm', 44, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'f497cd9d-e5d5-4c3b-8dfb-11d4c0a695b1', 1, 1, CAST(0x0000A17901531359 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'Actor.gif', N'~/Get/WebAccount/MainSite/Resource/File/Actor.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\Actor.gif', 1214, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'fd220bb1-f3fb-4e81-91cd-177afdbe6bc8', 0, 1, CAST(0x0000A17A0012A184 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'Bookings.JPG', N'~/Get/WebAccount/MainSite/Style/Bookings.JPG', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\Bookings.JPG', 2809, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'318f97db-1b70-49f4-aaed-180ce983ca94', 0, 1, CAST(0x0000A17A0012A1C6 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'Break.JPG', N'~/Get/WebAccount/MainSite/Style/Break.JPG', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\Break.JPG', 2409, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'0f0166e6-d96c-4bad-9559-185c9d2f1532', 0, 1, CAST(0x0000A179015A2BB8 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'AP.gif', N'~/Get/WebAccount/MainSite/Style/AP.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\AP.gif', 2098, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'85515325-841a-4f19-858e-233a555d95a7', 0, 1, CAST(0x0000A1790163C6C7 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'Commit.JPG', N'~/Get/WebAccount/MainSite/Style/Commit.JPG', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\Commit.JPG', 4150, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'8de979f0-d5db-4939-8684-2a54e1a76809', 0, 1, CAST(0x0000A17901566736 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'ASPNET.GIF', N'~/Get/WebAccount/MainSite/Resource/File/ASPNET.GIF', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\ASPNET.GIF', 1091, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'd05365e8-b9a2-426a-9f40-2a92748e4571', 0, 1, CAST(0x0000A17901639FAF AS DateTime), N'00000000-0000-0000-0000-000000000001', N'body.gif', N'~/Get/WebAccount/MainSite/Style/body.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\body.gif', 1257, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'c98ef57c-246c-4012-8fef-34eac5ff1e41', 0, 1, CAST(0x0000A179015666D9 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'ASPNET.JPG', N'~/Get/WebAccount/MainSite/Resource/File/ASPNET.JPG', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\ASPNET.JPG', 971, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'01c29535-ec18-48a1-8524-3818190921b1', 1, 1, CAST(0x0000A17800F08CB8 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'antiquechair.gif', N'~/Get/WebAccount/MainSite/Resource/Image/antiquechair.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\Image\antiquechair.gif', 40515, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'8bbb4802-3e86-4225-82cf-3b80c74b8f0a', 0, 1, CAST(0x0000A17A003D37A8 AS DateTime), N'00000000-0000-0000-0000-000000000006', N'out.webm', N'~/Get/WebAccount/MainSite/Resource/File/out.webm', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\out.webm', 44, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'4939b391-3a01-4dce-9447-41dc4b69cb33', 0, 1, CAST(0x0000A17A001D629B AS DateTime), N'00000000-0000-0000-0000-000000000002', N'Home.html', N'~/Get/WebAccount/MainSite/Style/Home.html', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\Home.html', 8355, 1, N'System.Byte[]')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'4abd5c4e-7bbb-4a7c-91e7-42d16db2d51b', 1, 1, CAST(0x0000A17A0038363F AS DateTime), N'00000000-0000-0000-0000-000000000007', N'x.mp3', N'~/Get/WebAccount/MainSite/Resource/File/x.mp3', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\x.mp3', 1610, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'550d34f4-5671-4814-a176-438c3a759d64', 0, 1, CAST(0x0000A17901556C49 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'AP.gif', N'~/Get/WebAccount/MainSite/Resource/File/AP.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\AP.gif', 2098, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'79a5d0e1-511e-4dcb-9bbc-48a35f54454b', 0, 1, CAST(0x0000A1790163950E AS DateTime), N'00000000-0000-0000-0000-000000000001', N'audio.jpg', N'~/Get/WebAccount/MainSite/Style/audio.jpg', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\audio.jpg', 61057, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'cbe5d38f-c989-449d-af31-6368ee3c1bc9', 1, 1, CAST(0x0000A178010C74F4 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'mcsd.jpg', N'~/Get/WebAccount/MainSite/Resource/File/mcsd.jpg', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\mcsd.jpg', 11378, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'7b11aa58-5f9c-4276-a8b4-66c7aeb18651', 0, 1, CAST(0x0000A17A000FEF23 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'antiquechair.gif', N'~/Get/WebAccount/MainSite/Style/antiquechair.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\antiquechair.gif', 40515, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'be3c36cf-6665-469a-b867-6a71f845559c', 1, 1, CAST(0x0000A178010B7BDC AS DateTime), N'00000000-0000-0000-0000-000000000001', N'DiskStorage.gif', N'~/Get/WebAccount/MainSite/Resource/Image/DiskStorage.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\Image\DiskStorage.gif', 1644, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'94e7123f-e539-47e3-a7ee-6bfef6353162', 1, 1, CAST(0x0000A17A0036C99F AS DateTime), N'00000000-0000-0000-0000-000000000002', N'html5.html', N'~/Get/WebAccount/MainSite/Style/html51.html', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\html51.html', 2690, 0, N'System.Byte[]')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'97d1cc8c-e383-4ff3-ad7a-6e180cb4b475', 1, 1, CAST(0x0000A179015A2B50 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'AR.gif', N'~/Get/WebAccount/MainSite/Style/AR.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\AR.gif', 2223, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'a1d83132-3db0-4efc-9d83-71181d992b75', 0, 1, CAST(0x0000A17A0019E07C AS DateTime), N'00000000-0000-0000-0000-000000000001', N'cherry-wood.jpg', N'~/Get/WebAccount/MainSite/Style/cherry-wood1.jpg', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\cherry-wood1.jpg', 4390930, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'43f22f2c-908e-421c-a710-759c51874cb9', 1, 1, CAST(0x0000A17901556BE6 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'AR.gif', N'~/Get/WebAccount/MainSite/Resource/File/AR.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\AR.gif', 2223, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'ed5e0a7d-13b3-4893-899e-76a31d6a654c', 1, 1, CAST(0x0000A17800F02C30 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'fileupload.gif', N'fileupload.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Manage\fileupload.gif', 1392, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'07066a9d-646e-40dd-8fad-7e1af896eb34', 1, 1, CAST(0x0000A17A003835C5 AS DateTime), N'00000000-0000-0000-0000-000000000007', N'z.mp3', N'~/Get/WebAccount/MainSite/Resource/File/z.mp3', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\z.mp3', 1610, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'faac8b90-cbfe-421d-8d79-843d3f000e99', 1, 1, CAST(0x0000A17800F08D1F AS DateTime), N'00000000-0000-0000-0000-000000000001', N'antiquesbackground.jpg', N'~/Get/WebAccount/MainSite/Resource/Image/antiquesbackground.jpg', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\Image\antiquesbackground.jpg', 78580, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'dffb0a78-147e-4421-bea3-84c496a6eff5', 1, 1, CAST(0x0000A178010B7B07 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'DealValue.JPG', N'~/Get/WebAccount/MainSite/Resource/Image/DealValue.JPG', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\Image\DealValue.JPG', 1632, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'374d2c08-873d-4cfe-8127-89fdb3a92003', 1, 1, CAST(0x0000A17800F02BBE AS DateTime), N'00000000-0000-0000-0000-000000000001', N'files.GIF', N'files.GIF', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Manage\files.GIF', 1403, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'cd46cfee-5cfa-45d7-b36e-8a8636400047', 1, 1, CAST(0x0000A178010C7497 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'mcpi.jpg', N'~/Get/WebAccount/MainSite/Resource/File/mcpi.jpg', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\mcpi.jpg', 11772, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'40b8a0c4-6371-4879-8bc6-9485c86873b7', 0, 1, CAST(0x0000A17A0024B749 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'Actor.gif', N'~/Get/WebAccount/MainSite/Style/Actor.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\Actor.gif', 1214, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'b12acf49-fa66-4d41-8d58-a1cf400a3a9a', 0, 1, CAST(0x0000A1790163C659 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'Company.JPG', N'~/Get/WebAccount/MainSite/Style/Company.JPG', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\Company.JPG', 9702, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'6e79a530-afb0-4b96-9780-b3cffb40f04c', 0, 1, CAST(0x0000A17A0010FBB6 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'audio.jpg', N'~/Get/WebAccount/MainSite/Style/audio1.jpg', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\audio1.jpg', 61057, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'93d3bdeb-4316-4e3b-860d-c2d9ba2e7581', 0, 1, CAST(0x0000A17A0018FAED AS DateTime), N'00000000-0000-0000-0000-000000000001', N'antiquechair.gif', N'~/Get/WebAccount/MainSite/Style/antiquechair1.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\antiquechair1.gif', 40515, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'7f36edc2-d4a2-43cb-a6e2-c59c0ee5a629', 0, 1, CAST(0x0000A17A003A08DB AS DateTime), N'00000000-0000-0000-0000-000000000008', N'm2.mpg', N'~/Get/WebAccount/MainSite/Style/m2.mpg', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\m2.mpg', 3310831, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'02e1065f-1624-4f07-9142-c5ed549e269f', 0, 1, CAST(0x0000A179015313DC AS DateTime), N'00000000-0000-0000-0000-000000000001', N'a.gif', N'~/Get/WebAccount/MainSite/Resource/File/a.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\a.gif', 1157, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'6d797dbe-6212-41f4-aa94-c6645b1a5dd3', 1, 1, CAST(0x0000A178010C7535 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'mcse.jpg', N'~/Get/WebAccount/MainSite/Resource/File/mcse.jpg', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\mcse.jpg', 10997, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'134139c2-db60-41ed-a785-c853cfd12c84', 1, 1, CAST(0x0000A178010B7BA0 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'Delivery.gif', N'~/Get/WebAccount/MainSite/Resource/Image/Delivery.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\Image\Delivery.gif', 1886, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'168d0931-23d6-4d38-b076-da5411e6d6e2', 0, 1, CAST(0x0000A17A001D100F AS DateTime), N'00000000-0000-0000-0000-000000000001', N'Break.JPG', N'~/Get/WebAccount/MainSite/Style/Break1.JPG', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\Break1.JPG', 2409, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'2061356d-9fbf-4b43-88b9-db2f3a9dcce8', 0, 1, CAST(0x0000A17A0024B79C AS DateTime), N'00000000-0000-0000-0000-000000000001', N'Accounting.gif', N'~/Get/WebAccount/MainSite/Style/Accounting.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\Accounting.gif', 1935, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'3dc2a532-3fbb-496e-b26b-de2de8d1eb9b', 0, 1, CAST(0x0000A17A003D3A16 AS DateTime), N'00000000-0000-0000-0000-000000000006', N'NOVA.mp4', N'~/Get/WebAccount/MainSite/Resource/File/NOVA.mp4', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\NOVA.mp4', 16145417, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'50d4bf12-1217-40c1-8b26-e01a04f8e591', 0, 1, CAST(0x0000A17A003E526F AS DateTime), N'00000000-0000-0000-0000-000000000006', N'NOVA.mp4', N'~/Get/WebAccount/MainSite/Resource/File/NOVA1.mp4', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\NOVA1.mp4', 16145417, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'40cdf65a-7a1a-4f69-9860-eba0aec22ccb', 1, 1, CAST(0x0000A178010B7B5C AS DateTime), N'00000000-0000-0000-0000-000000000001', N'DeBookings.JPG', N'~/Get/WebAccount/MainSite/Resource/Image/DeBookings.JPG', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\Image\DeBookings.JPG', 3497, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'498239a2-e351-46f5-9321-eddee2050b68', 0, 1, CAST(0x0000A17A0019A03E AS DateTime), N'00000000-0000-0000-0000-000000000001', N'cherry-wood.jpg', N'~/Get/WebAccount/MainSite/Style/cherry-wood.jpg', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\cherry-wood.jpg', 4390930, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'63df7de3-4654-4ca9-8e19-ee6ae2908b40', 0, 1, CAST(0x0000A1790163C5F7 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'Chart.JPG', N'~/Get/WebAccount/MainSite/Style/Chart.JPG', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\Chart.JPG', 2562, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'8296b8dc-7e50-4a40-b39a-f09156239b48', 0, 1, CAST(0x0000A17A0010FC0F AS DateTime), N'00000000-0000-0000-0000-000000000001', N'body.gif', N'~/Get/WebAccount/MainSite/Style/body1.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\body1.gif', 1257, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'ab829093-bb88-4e64-bcbd-f60a6e385966', 0, 1, CAST(0x0000A1790153142A AS DateTime), N'00000000-0000-0000-0000-000000000001', N'Accounting.gif', N'~/Get/WebAccount/MainSite/Resource/File/Accounting.gif', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Resource\File\Accounting.gif', 1935, 1, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'cba9b6bd-6662-42a0-b01e-f6ba70149210', 1, 1, CAST(0x0000A17A001D0F83 AS DateTime), N'00000000-0000-0000-0000-000000000001', N'Bookings.JPG', N'~/Get/WebAccount/MainSite/Style/Bookings1.JPG', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\Bookings1.JPG', 2809, 0, N'')
INSERT [dbo].[File] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [FileTypeID], [FileName], [FileURI], [FilePath], [FileSize], [Deleted], [TextFileContents]) VALUES (N'42339471-fc5a-4712-afe1-f8899e0cc3f3', 0, 1, CAST(0x0000A17A00282567 AS DateTime), N'00000000-0000-0000-0000-000000000002', N'html5.html', N'~/Get/WebAccount/MainSite/Style/html5.html', N'C:\Users\Mark\Desktop\page.web2rev.net\page.web2rev.net\Get\WebAccount\MainSite\Style\html5.html', 2690, 1, N'System.Byte[]')
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredUserName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MobileAlias] [nvarchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_U__1788CC4D0BC6C43E] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index2')
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'840f690a-b787-454f-a081-3506bfeb4ca3', N'3e33ec73-461a-4cab-a2bd-de4feea1be20', N'mark', N'mark', NULL, 0, CAST(0x0000A17A00403BBA AS DateTime))
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 03/07/2013 03:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredPath] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__aspnet_P__CD67DC5859063A47] PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND name = N'aspnet_Paths_index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredRoleName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__aspnet_R__8AFACE1B4222D4EF] PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND name = N'aspnet_Roles_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END' 
END
GO
/****** Object:  Table [dbo].[AccountCredit]    Script Date: 03/07/2013 03:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccountCredit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccountCredit](
	[ID] [uniqueidentifier] NOT NULL,
	[CurrentVersion] [bit] NOT NULL,
	[VersionNumber] [int] NOT NULL,
	[VersionTimestamp] [datetime] NOT NULL,
	[AccountID] [uniqueidentifier] NOT NULL,
	[CreditTypeID] [uniqueidentifier] NOT NULL,
	[Credits] [int] NOT NULL,
 CONSTRAINT [PK_AccountCredit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'08e39372-5aad-4498-b88a-10d30daea9e8', 0, 1, CAST(0x0000A17800239F60 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000003', 2)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'08e39372-5aad-4498-b88a-10d30daea9e8', 0, 2, CAST(0x0000A17A001D62AB AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000003', 1)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'08e39372-5aad-4498-b88a-10d30daea9e8', 0, 3, CAST(0x0000A17A001D7E9D AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000003', 2)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'08e39372-5aad-4498-b88a-10d30daea9e8', 0, 4, CAST(0x0000A17A00282593 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000003', 1)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'08e39372-5aad-4498-b88a-10d30daea9e8', 0, 5, CAST(0x0000A17A0036C9C6 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000003', 0)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'08e39372-5aad-4498-b88a-10d30daea9e8', 1, 6, CAST(0x0000A17A0036D379 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000003', 4)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'570952fc-f8d6-48a4-ad74-28e883c1454a', 1, 1, CAST(0x0000A17800239F60 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000007', 20)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 1, CAST(0x0000A17800239F60 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 5)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 2, CAST(0x0000A17A0018A579 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 6)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 3, CAST(0x0000A17A0018FB37 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 5)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 4, CAST(0x0000A17A00190581 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 6)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 5, CAST(0x0000A17A0019A06A AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 5)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 6, CAST(0x0000A17A0019B345 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 6)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 7, CAST(0x0000A17A0019C514 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 7)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 8, CAST(0x0000A17A0019D5AD AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 8)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 9, CAST(0x0000A17A0019E08A AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 7)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 10, CAST(0x0000A17A001CE494 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 8)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 11, CAST(0x0000A17A001D0F93 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 7)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 12, CAST(0x0000A17A001D1015 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 6)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 13, CAST(0x0000A17A0024B761 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 5)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 14, CAST(0x0000A17A0024B7A3 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 4)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 15, CAST(0x0000A17A002833AC AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 5)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 16, CAST(0x0000A17A0028D9AC AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 6)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 17, CAST(0x0000A17A0036B72A AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 7)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 18, CAST(0x0000A17A0036EC5B AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 8)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 19, CAST(0x0000A17A0036F6B5 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 9)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 20, CAST(0x0000A17A00377ABE AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 10)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 0, 21, CAST(0x0000A17A003786F6 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 11)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'25a0e7da-b543-4bd7-a614-292bdacaed88', 1, 22, CAST(0x0000A17A0037BE34 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000005', 12)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 1, CAST(0x0000A17800239F60 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 100000)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 2, CAST(0x0000A17A0018A580 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 102562)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 3, CAST(0x0000A17A0018FB3B AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 62047)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 4, CAST(0x0000A17A00190584 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 102562)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 5, CAST(0x0000A17A0019A06F AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', -4288368)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 6, CAST(0x0000A17A0019B348 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 102562)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 7, CAST(0x0000A17A0019C517 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 143077)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 8, CAST(0x0000A17A0019D5B1 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 145886)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 9, CAST(0x0000A17A0019E090 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', -4245044)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 10, CAST(0x0000A17A001CE498 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 145886)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 11, CAST(0x0000A17A001CF7AD AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 160305)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 12, CAST(0x0000A17A0036B734 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 161519)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 13, CAST(0x0000A17A0036C9CF AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 158829)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 14, CAST(0x0000A17A0036D37D AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 161519)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 15, CAST(0x0000A17A0036EC5F AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 162490)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 16, CAST(0x0000A17A0036F6B9 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 164425)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 17, CAST(0x0000A17A00377AC3 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 165516)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 18, CAST(0x0000A17A003786FA AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 168004)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 19, CAST(0x0000A17A0037BE38 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 169161)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 20, CAST(0x0000A17A003835EC AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 167551)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 21, CAST(0x0000A17A0038364D AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 165941)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 22, CAST(0x0000A17A003A08FE AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', -3144890)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 23, CAST(0x0000A17A003C3F90 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 165941)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 24, CAST(0x0000A17A003D37D2 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 165897)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 25, CAST(0x0000A17A003D3A1F AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', -15979520)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 26, CAST(0x0000A17A003D9AFB AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', -15979476)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 27, CAST(0x0000A17A003DA17F AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 165941)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 28, CAST(0x0000A17A003E527E AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', -15979476)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 29, CAST(0x0000A17A003E9166 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', -15979520)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 0, 30, CAST(0x0000A17A003EC446 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 165897)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'595a12f9-e884-409e-b810-58c295205cf3', 1, 31, CAST(0x0000A17A003EFE83 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000006', 165941)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 0, 1, CAST(0x0000A17800239F60 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 5)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 0, 2, CAST(0x0000A17A001CF7A9 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 6)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 0, 3, CAST(0x0000A17A003835E1 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 5)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 0, 4, CAST(0x0000A17A00383646 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 4)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 0, 5, CAST(0x0000A17A003A08F0 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 3)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 0, 6, CAST(0x0000A17A003C3F8A AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 4)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 0, 7, CAST(0x0000A17A003D37B9 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 3)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 0, 8, CAST(0x0000A17A003D3A1B AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 2)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 0, 9, CAST(0x0000A17A003D9AF7 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 3)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 0, 10, CAST(0x0000A17A003DA17B AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 4)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 0, 11, CAST(0x0000A17A003E527B AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 3)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 0, 12, CAST(0x0000A17A003E9162 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 2)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 0, 13, CAST(0x0000A17A003EC442 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 3)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'5c9407c5-baab-44b6-8db2-8485bb2f3a91', 1, 14, CAST(0x0000A17A003EFE7E AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000004', 4)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'f50ceea7-0554-4656-a842-dfed631c2826', 0, 1, CAST(0x0000A17800239F60 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000002', 0)
INSERT [dbo].[AccountCredit] ([ID], [CurrentVersion], [VersionNumber], [VersionTimestamp], [AccountID], [CreditTypeID], [Credits]) VALUES (N'52885a5f-ac13-4c09-9451-f0854d845693', 1, 1, CAST(0x0000A17800239F60 AS DateTime), N'f81548c9-df9c-425d-a616-5770c9c934f7', N'00000000-0000-0000-0000-000000000001', 0)
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 03/07/2013 03:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MobilePIN] [nvarchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LoweredEmail] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PasswordQuestion] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PasswordAnswer] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__aspnet_M__1788CC4D1FCDBCEB] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND name = N'aspnet_Membership_index')
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'840f690a-b787-454f-a081-3506bfeb4ca3', N'3e33ec73-461a-4cab-a2bd-de4feea1be20', N'+O3fHa5yErg2vSxIXJ6Tz9S348M=', 1, N'MaloWNQrQIcNsP8oUELr/g==', NULL, N'mark.brito@gmail.com', N'mark.brito@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A176016AD8AC AS DateTime), CAST(0x0000A17A00403BBA AS DateTime), CAST(0x0000A176016AD8AC AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_P__CD67DC5960A75C0F] PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_P__3214EC06656C112C] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_ncindex2')
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PropertyValuesString] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_P__1788CC4C36B12243] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__aspnet_U__AF2760AD47DBAE45] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND name = N'aspnet_UsersInRoles_index')
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[CreateDefaultDirectores]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CreateDefaultDirectores]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CreateDefaultDirectores]
@SiteID uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON;
	declare @rootFolderID uniqueidentifier
	select @rootFolderID = newid()
	declare @pageFolderID uniqueidentifier
	select @pageFolderID = newid()
	declare @imageFolderID uniqueidentifier
	select @imageFolderID = newid()
	declare @fileFolderID uniqueidentifier 
	select @fileFolderID = newid()
	declare @styleFolderID uniqueidentifier
	select @styleFolderID = newid()
	declare @scriptFolderID uniqueidentifier
	select @scriptFolderID = newid()
	declare @resourceFolderID uniqueidentifier
	select @resourceFolderID = newid()
	declare @siteName varchar(64)
	select top 1 @siteName=Name from Site where ID=@SiteID and CurrentVersion=1
	Insert into folder values(@rootFolderID,@siteName);
	Insert into folder values(@pageFolderID,''Page'');
	Insert into folder values(@styleFolderID,''Style'');
	Insert into folder values(@scriptFolderID,''Script'');
	Insert into folder values(@resourceFolderID,''Resource'');
	Insert into folder values(@fileFolderID,''File'');
	Insert into folder values(@imageFolderID,''Image'');
	
	update Site set RootFolderID=@rootFolderID where ID=@SiteID and CurrentVersion=1

	Insert into FolderCoupling values (newid(),@rootFolderID,@pageFolderID)

	Insert into FolderCoupling values (newid(),@rootFolderID,@styleFolderID)

	Insert into FolderCoupling values (newid(),@rootFolderID,@scriptFolderID)
	
	Insert into FolderCoupling values (newid(),@rootFolderID,@resourceFolderID)

	Insert into FolderCoupling values (newid(),@resourceFolderID,@imageFolderID)

	Insert into FolderCoupling values (newid(),@resourceFolderID,@fileFolderID)
END
' 
END
GO
/****** Object:  Table [dbo].[PackageCredit]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PackageCredit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PackageCredit](
	[ID] [uniqueidentifier] NOT NULL,
	[PackageID] [uniqueidentifier] NOT NULL,
	[CreditID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PackageCredit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[PackageCredit] ([ID], [PackageID], [CreditID]) VALUES (N'00000000-0000-0000-0000-000000000001', N'00000000-0000-0000-0000-000000000001', N'00000000-0000-0000-0000-000000000001')
INSERT [dbo].[PackageCredit] ([ID], [PackageID], [CreditID]) VALUES (N'00000000-0000-0000-0000-000000000002', N'00000000-0000-0000-0000-000000000001', N'00000000-0000-0000-0000-000000000002')
INSERT [dbo].[PackageCredit] ([ID], [PackageID], [CreditID]) VALUES (N'00000000-0000-0000-0000-000000000003', N'00000000-0000-0000-0000-000000000001', N'00000000-0000-0000-0000-000000000003')
INSERT [dbo].[PackageCredit] ([ID], [PackageID], [CreditID]) VALUES (N'00000000-0000-0000-0000-000000000004', N'00000000-0000-0000-0000-000000000001', N'00000000-0000-0000-0000-000000000004')
INSERT [dbo].[PackageCredit] ([ID], [PackageID], [CreditID]) VALUES (N'00000000-0000-0000-0000-000000000005', N'00000000-0000-0000-0000-000000000001', N'00000000-0000-0000-0000-000000000005')
INSERT [dbo].[PackageCredit] ([ID], [PackageID], [CreditID]) VALUES (N'00000000-0000-0000-0000-000000000006', N'00000000-0000-0000-0000-000000000001', N'00000000-0000-0000-0000-000000000006')
INSERT [dbo].[PackageCredit] ([ID], [PackageID], [CreditID]) VALUES (N'00000000-0000-0000-0000-000000000007', N'00000000-0000-0000-0000-000000000001', N'00000000-0000-0000-0000-000000000007')
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  '
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'''', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 03/07/2013 03:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_UsersInRoles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
    WHERE @UserId = UserId

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N''aspnet_Membership''
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Roles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N''aspnet_Roles''
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N''aspnet_Profile''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N''aspnet_PersonalizationPerUser''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''aspnet_WebEvent_LogEvent'') AND (type = ''P''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N''aspnet_WebEvent_Events''
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N''aspnet_Users''
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N''aspnet_Applications''
            RETURN
        END
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 03/07/2013 03:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END' 
END
GO
/****** Object:  Default [DF_AccountCredit_VersionTimestamp]    Script Date: 03/07/2013 03:55:33 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AccountCredit_VersionTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountCredit]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AccountCredit_VersionTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AccountCredit] ADD  CONSTRAINT [DF_AccountCredit_VersionTimestamp]  DEFAULT (getdate()) FOR [VersionTimestamp]
END


End
GO
/****** Object:  Default [DF_AR_CurrentVersion]    Script Date: 03/07/2013 03:55:33 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AR_CurrentVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[AR]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AR_CurrentVersion]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_CurrentVersion]  DEFAULT ((0)) FOR [CurrentVersion]
END


End
GO
/****** Object:  Default [DF_AR_VersionTimestamp]    Script Date: 03/07/2013 03:55:33 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AR_VersionTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[AR]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AR_VersionTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_VersionTimestamp]  DEFAULT (getdate()) FOR [VersionTimestamp]
END


End
GO
/****** Object:  Default [DF_AR_SOTimestamp]    Script Date: 03/07/2013 03:55:33 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AR_SOTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[AR]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AR_SOTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_SOTimestamp]  DEFAULT (getdate()) FOR [ARTimestamp]
END


End
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__08EA5793]    Script Date: 03/07/2013 03:55:33 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ap__Appli__08EA5793]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ap__Appli__08EA5793]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Applications] ADD  CONSTRAINT [DF__aspnet_Ap__Appli__08EA5793]  DEFAULT (newid()) FOR [ApplicationId]
END


End
GO
/****** Object:  Default [DF__aspnet_Me__Passw__239E4DCF]    Script Date: 03/07/2013 03:55:33 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Me__Passw__239E4DCF]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Me__Passw__239E4DCF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Membership] ADD  CONSTRAINT [DF__aspnet_Me__Passw__239E4DCF]  DEFAULT ((0)) FOR [PasswordFormat]
END


End
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__5BE2A6F2]    Script Date: 03/07/2013 03:55:33 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Pa__PathI__5BE2A6F2]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Pa__PathI__5BE2A6F2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Paths] ADD  CONSTRAINT [DF__aspnet_Pa__PathI__5BE2A6F2]  DEFAULT (newid()) FOR [PathId]
END


End
GO
/****** Object:  Default [DF__aspnet_Perso__Id__6754599E]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Perso__Id__6754599E]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Perso__Id__6754599E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  CONSTRAINT [DF__aspnet_Perso__Id__6754599E]  DEFAULT (newid()) FOR [Id]
END


End
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__44FF419A]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ro__RoleI__44FF419A]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ro__RoleI__44FF419A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Roles] ADD  CONSTRAINT [DF__aspnet_Ro__RoleI__44FF419A]  DEFAULT (newid()) FOR [RoleId]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__UserI__0EA330E9]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__UserI__0EA330E9]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__UserI__0EA330E9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__UserI__0EA330E9]  DEFAULT (newid()) FOR [UserId]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__0F975522]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__Mobil__0F975522]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__Mobil__0F975522]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__Mobil__0F975522]  DEFAULT (NULL) FOR [MobileAlias]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__108B795B]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__IsAno__108B795B]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__IsAno__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__IsAno__108B795B]  DEFAULT ((0)) FOR [IsAnonymous]
END


End
GO
/****** Object:  Default [DF_A_ID]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_A_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balance]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_A_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_A_ID]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ID]
END


End
GO
/****** Object:  Default [DF_A_CurrentVersion]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_A_CurrentVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balance]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_A_CurrentVersion]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_A_CurrentVersion]  DEFAULT ((0)) FOR [CurrentVersion]
END


End
GO
/****** Object:  Default [DF_A_VersionTimestamp]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_A_VersionTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[Balance]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_A_VersionTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_A_VersionTimestamp]  DEFAULT (getdate()) FOR [VersionTimestamp]
END


End
GO
/****** Object:  Default [DF_File_VersionTimestamp]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_File_VersionTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[File]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_File_VersionTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[File] ADD  CONSTRAINT [DF_File_VersionTimestamp]  DEFAULT (getdate()) FOR [VersionTimestamp]
END


End
GO
/****** Object:  Default [DF_File_FileTypeID]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_File_FileTypeID]') AND parent_object_id = OBJECT_ID(N'[dbo].[File]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_File_FileTypeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[File] ADD  CONSTRAINT [DF_File_FileTypeID]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [FileTypeID]
END


End
GO
/****** Object:  Default [DF_File_Deleted]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_File_Deleted]') AND parent_object_id = OBJECT_ID(N'[dbo].[File]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_File_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[File] ADD  CONSTRAINT [DF_File_Deleted]  DEFAULT ((0)) FOR [Deleted]
END


End
GO
/****** Object:  Default [DF_FileType_ID]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_FileType_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_FileType_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FileType] ADD  CONSTRAINT [DF_FileType_ID]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ID]
END


End
GO
/****** Object:  Default [DF_Package_Visible]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Package_Visible]') AND parent_object_id = OBJECT_ID(N'[dbo].[Package]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Package_Visible]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Package] ADD  CONSTRAINT [DF_Package_Visible]  DEFAULT ((0)) FOR [Visible]
END


End
GO
/****** Object:  Default [DF_Site_VersionTimestamp]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Site_VersionTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[Site]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Site_VersionTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_Site_VersionTimestamp]  DEFAULT (getdate()) FOR [VersionTimestamp]
END


End
GO
/****** Object:  Default [DF_SO_CurrentVersion]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SO_CurrentVersion]') AND parent_object_id = OBJECT_ID(N'[dbo].[SO]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SO_CurrentVersion]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SO] ADD  CONSTRAINT [DF_SO_CurrentVersion]  DEFAULT ((0)) FOR [CurrentVersion]
END


End
GO
/****** Object:  Default [DF_SO_VersionTimestamp]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SO_VersionTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[SO]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SO_VersionTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SO] ADD  CONSTRAINT [DF_SO_VersionTimestamp]  DEFAULT (getdate()) FOR [VersionTimestamp]
END


End
GO
/****** Object:  Default [DF_SO_SOTimestamp]    Script Date: 03/07/2013 03:55:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SO_SOTimestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[SO]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SO_SOTimestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SO] ADD  CONSTRAINT [DF_SO_SOTimestamp]  DEFAULT (getdate()) FOR [SOTimestamp]
END


End
GO
/****** Object:  ForeignKey [FK_AccountCredit_Account]    Script Date: 03/07/2013 03:55:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccountCredit_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountCredit]'))
ALTER TABLE [dbo].[AccountCredit]  WITH CHECK ADD  CONSTRAINT [FK_AccountCredit_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccountCredit_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountCredit]'))
ALTER TABLE [dbo].[AccountCredit] CHECK CONSTRAINT [FK_AccountCredit_Account]
GO
/****** Object:  ForeignKey [FK_AccountCredit_CreditType]    Script Date: 03/07/2013 03:55:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccountCredit_CreditType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountCredit]'))
ALTER TABLE [dbo].[AccountCredit]  WITH CHECK ADD  CONSTRAINT [FK_AccountCredit_CreditType] FOREIGN KEY([CreditTypeID])
REFERENCES [dbo].[CreditType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AccountCredit_CreditType]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccountCredit]'))
ALTER TABLE [dbo].[AccountCredit] CHECK CONSTRAINT [FK_AccountCredit_CreditType]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__21B6055D]    Script Date: 03/07/2013 03:55:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__21B6055D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__Appli__21B6055D] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__21B6055D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__Appli__21B6055D]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__22AA2996]    Script Date: 03/07/2013 03:55:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__22AA2996]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__UserI__22AA2996] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__22AA2996]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__UserI__22AA2996]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__5AEE82B9]    Script Date: 03/07/2013 03:55:33 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__5AEE82B9]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pa__Appli__5AEE82B9] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__5AEE82B9]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths] CHECK CONSTRAINT [FK__aspnet_Pa__Appli__5AEE82B9]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__628FA481]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__628FA481]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__628FA481] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__628FA481]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__628FA481]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__68487DD7]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__68487DD7]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__68487DD7] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__68487DD7]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__68487DD7]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__693CA210]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__693CA210]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__UserI__693CA210] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__693CA210]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__UserI__693CA210]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__38996AB5]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__38996AB5]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pr__UserI__38996AB5] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__38996AB5]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile] CHECK CONSTRAINT [FK__aspnet_Pr__UserI__38996AB5]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__440B1D61]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__440B1D61]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Ro__Appli__440B1D61] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__440B1D61]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles] CHECK CONSTRAINT [FK__aspnet_Ro__Appli__440B1D61]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__0DAF0CB0]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0DAF0CB0]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__0DAF0CB0] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0DAF0CB0]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK__aspnet_Us__Appli__0DAF0CB0]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__4AB81AF0]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__4AB81AF0]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__RoleI__4AB81AF0] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__4AB81AF0]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__RoleI__4AB81AF0]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__49C3F6B7]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__49C3F6B7]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__49C3F6B7] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__49C3F6B7]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__UserI__49C3F6B7]
GO
/****** Object:  ForeignKey [FK_Credit_CreditType]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Credit_CreditType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Credit]'))
ALTER TABLE [dbo].[Credit]  WITH CHECK ADD  CONSTRAINT [FK_Credit_CreditType] FOREIGN KEY([CreditType])
REFERENCES [dbo].[CreditType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Credit_CreditType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Credit]'))
ALTER TABLE [dbo].[Credit] CHECK CONSTRAINT [FK_Credit_CreditType]
GO
/****** Object:  ForeignKey [FK_File_FileType1]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_File_FileType1]') AND parent_object_id = OBJECT_ID(N'[dbo].[File]'))
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_FileType1] FOREIGN KEY([FileTypeID])
REFERENCES [dbo].[FileType] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_File_FileType1]') AND parent_object_id = OBJECT_ID(N'[dbo].[File]'))
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_FileType1]
GO
/****** Object:  ForeignKey [FK_FileCoupling_Folder]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileCoupling_Folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileCoupling]'))
ALTER TABLE [dbo].[FileCoupling]  WITH CHECK ADD  CONSTRAINT [FK_FileCoupling_Folder] FOREIGN KEY([FolderID])
REFERENCES [dbo].[Folder] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileCoupling_Folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileCoupling]'))
ALTER TABLE [dbo].[FileCoupling] CHECK CONSTRAINT [FK_FileCoupling_Folder]
GO
/****** Object:  ForeignKey [FK_FolderCoupling_Folder]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FolderCoupling_Folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[FolderCoupling]'))
ALTER TABLE [dbo].[FolderCoupling]  WITH CHECK ADD  CONSTRAINT [FK_FolderCoupling_Folder] FOREIGN KEY([ParentFolderID])
REFERENCES [dbo].[Folder] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FolderCoupling_Folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[FolderCoupling]'))
ALTER TABLE [dbo].[FolderCoupling] CHECK CONSTRAINT [FK_FolderCoupling_Folder]
GO
/****** Object:  ForeignKey [FK_FolderCoupling_Folder1]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FolderCoupling_Folder1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FolderCoupling]'))
ALTER TABLE [dbo].[FolderCoupling]  WITH CHECK ADD  CONSTRAINT [FK_FolderCoupling_Folder1] FOREIGN KEY([ChildFolderID])
REFERENCES [dbo].[Folder] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FolderCoupling_Folder1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FolderCoupling]'))
ALTER TABLE [dbo].[FolderCoupling] CHECK CONSTRAINT [FK_FolderCoupling_Folder1]
GO
/****** Object:  ForeignKey [FK_PackageCredit_Credit]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PackageCredit_Credit]') AND parent_object_id = OBJECT_ID(N'[dbo].[PackageCredit]'))
ALTER TABLE [dbo].[PackageCredit]  WITH CHECK ADD  CONSTRAINT [FK_PackageCredit_Credit] FOREIGN KEY([CreditID])
REFERENCES [dbo].[Credit] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PackageCredit_Credit]') AND parent_object_id = OBJECT_ID(N'[dbo].[PackageCredit]'))
ALTER TABLE [dbo].[PackageCredit] CHECK CONSTRAINT [FK_PackageCredit_Credit]
GO
/****** Object:  ForeignKey [FK_PackageCredit_Package]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PackageCredit_Package]') AND parent_object_id = OBJECT_ID(N'[dbo].[PackageCredit]'))
ALTER TABLE [dbo].[PackageCredit]  WITH CHECK ADD  CONSTRAINT [FK_PackageCredit_Package] FOREIGN KEY([PackageID])
REFERENCES [dbo].[Package] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PackageCredit_Package]') AND parent_object_id = OBJECT_ID(N'[dbo].[PackageCredit]'))
ALTER TABLE [dbo].[PackageCredit] CHECK CONSTRAINT [FK_PackageCredit_Package]
GO
/****** Object:  ForeignKey [FK_Site_Account]    Script Date: 03/07/2013 03:55:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Site_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Site]'))
ALTER TABLE [dbo].[Site]  WITH CHECK ADD  CONSTRAINT [FK_Site_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Site_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Site]'))
ALTER TABLE [dbo].[Site] CHECK CONSTRAINT [FK_Site_Account]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_WebEvent_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_CreateUser] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_FindUsersByEmail] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_FindUsersByName] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetAllUsers] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetNumberOfUsersOnline] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetNumberOfUsersOnline] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetPassword] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetPasswordWithFormat] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByEmail] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByEmail] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByName] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByName] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByUserId] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByUserId] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_ResetPassword] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_SetPassword] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UnlockUser] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UpdateUser] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UpdateUserInfo] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Paths_CreatePath] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Personalization_GetApplicationId] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] TO [aspnet_Personalization_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_FindState] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] TO [aspnet_Personalization_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_ResetUserState] TO [aspnet_Personalization_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_DeleteInactiveProfiles] TO [aspnet_Profile_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_DeleteProfiles] TO [aspnet_Profile_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetProfiles] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetProperties] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_SetProperties] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_WebEvent_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_CreateRole] TO [aspnet_Roles_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_DeleteRole] TO [aspnet_Roles_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_GetAllRoles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_RoleExists] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_WebEvent_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Users_DeleteUser] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_AddUsersToRoles] TO [aspnet_Roles_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_FindUsersInRole] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetRolesForUser] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetRolesForUser] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetUsersInRoles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_IsUserInRole] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_IsUserInRole] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles] TO [aspnet_Roles_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_WebEvent_LogEvent] TO [aspnet_WebEvent_FullAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_MembershipUsers] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Profiles] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Roles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_UsersInRoles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_Paths] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_Shared] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_User] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess')
BEGIN
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Membership_BasicAccess', @membername=N'aspnet_Membership_FullAccess'
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Membership_BasicAccess', @membername=N'system'

END
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess')
BEGIN
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Membership_FullAccess', @membername=N'system'

END
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess')
BEGIN
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Membership_ReportingAccess', @membername=N'aspnet_Membership_FullAccess'
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Membership_ReportingAccess', @membername=N'system'

END
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess')
BEGIN
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Personalization_BasicAccess', @membername=N'aspnet_Personalization_FullAccess'
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Personalization_BasicAccess', @membername=N'system'

END
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess')
BEGIN
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Personalization_FullAccess', @membername=N'system'

END
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess')
BEGIN
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Personalization_ReportingAccess', @membername=N'aspnet_Personalization_FullAccess'
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Personalization_ReportingAccess', @membername=N'system'

END
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess')
BEGIN
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Profile_BasicAccess', @membername=N'aspnet_Profile_FullAccess'
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Profile_BasicAccess', @membername=N'system'

END
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess')
BEGIN
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Profile_FullAccess', @membername=N'system'

END
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess')
BEGIN
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Profile_ReportingAccess', @membername=N'aspnet_Profile_FullAccess'
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Profile_ReportingAccess', @membername=N'system'

END
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess')
BEGIN
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Roles_BasicAccess', @membername=N'aspnet_Roles_FullAccess'
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Roles_BasicAccess', @membername=N'system'

END
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess')
BEGIN
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Roles_FullAccess', @membername=N'system'

END
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess')
BEGIN
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Roles_ReportingAccess', @membername=N'aspnet_Roles_FullAccess'
EXEC dbo.sp_addrolemember @rolename=N'aspnet_Roles_ReportingAccess', @membername=N'system'

END
GO
