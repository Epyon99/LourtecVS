USE [SchoolGradesDB]
GO

DELETE FROM [dbo].[Grades]
GO

DELETE FROM [dbo].[ParentStudent]
GO

DELETE FROM [dbo].[Parents]
GO

DELETE FROM [dbo].[Subjects]
GO

DELETE FROM [dbo].[Students]
GO

DELETE FROM [dbo].[Teachers]
GO

DELETE FROM [dbo].[Memberships]
GO

DELETE FROM [dbo].[UsersInRoles]
GO

DELETE FROM [dbo].[Users]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

DECLARE @AppId nvarchar(MAX)
Set @AppId = (SELECT [ApplicationId]  FROM [SchoolGradesDB].[dbo].[Applications] Where [ApplicationName] = '/')

DECLARE @StudentRoleId nvarchar(MAX)
Set @StudentRoleId = (SELECT [RoleId] FROM [SchoolGradesDB].[dbo].[Roles] WHERE [RoleName] = 'Student')

DECLARE @TeacherRoleId nvarchar(MAX)
Set @TeacherRoleId = (SELECT [RoleId] FROM [SchoolGradesDB].[dbo].[Roles] WHERE [RoleName] = 'Teacher')

DECLARE @ParentRoleId nvarchar(MAX)
Set @ParentRoleId = (SELECT [RoleId] FROM [SchoolGradesDB].[dbo].[Roles] WHERE [RoleName] = 'Parent')

INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'66fc7861-704c-4416-9260-4fdc79d2dc5d', N'DuboisM', 0, CAST(0x00009CDD00EB0426 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'e93c63c3-08e2-46f6-a6bd-a2f8c53f9b37', N'GruberE', 0, CAST(0x00009CDD00ED62F4 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'255c219b-05a4-444f-88fc-c08f0c93350c', N'LeeA', 0, CAST(0x00009CDD00EBD72F AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'31b8b5fc-0721-4dc5-8c59-eee67ce74d9f', N'LeeC', 0, CAST(0x00009CE600CFFDB5 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'68dd9127-2441-43ff-b769-d4b4bfd07e9e', N'LeeM', 0, CAST(0x00009CE3012E63D6 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'5eef2d92-2f34-4313-8a57-20ace46740d5', N'LeeO', 0, CAST(0x00009CE600CF12A2 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'65cdd26f-2753-4f0f-a5dc-faf140ce22fb', N'LiuD', 0, CAST(0x00009CFF00C0C46A AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'2613de15-c226-4e80-997c-346be1c53dbe', N'LiuJ', 0, CAST(0x00009CDD00FB071E AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'05317edf-71f7-4c27-b765-06070be0d46f', N'LiuK', 0, CAST(0x00009CDD00FB252C AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'869474ad-1966-4c0c-8702-49a35b12c0c1', N'LiuR', 0, CAST(0x00009CDD00FB43AD AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'd8b38604-7fec-463a-a1b7-9c5c200bb59f', N'LyonR', 0, CAST(0x00009CDD00EB300B AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'ba8f065a-bb63-4a60-9515-b88fdab58930', N'LyonW', 0, CAST(0x00009CDD00EBBBAB AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'c1a9944a-3017-4be5-8334-32d817a4298f', N'MulvadO', 0, CAST(0x00009CDD00ECFEA7 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'ddf197ba-2262-429d-9234-929a523d638e', N'MuZ', 0, CAST(0x00009CDD00ECDE82 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'57b96f71-0c3b-4735-be2c-660b5546381d', N'NicoE', 0, CAST(0x00009CDD00E6F9A7 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'855a299a-78f4-429f-8e95-9eacb13fb660', N'OliveiraS', 0, CAST(0x00009CDD00ED43C1 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'9ecbd25d-a811-4a74-9db0-8b92cbc826f9', N'OrtonJ', 0, CAST(0x00009CDD00ED933F AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'271152c7-1163-4b8f-83ab-6403ed58401c', N'SousaF', 0, CAST(0x00009CE30130B5E1 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'c82b5841-b7e8-4b7e-91ee-a106cac858b4', N'SundaramV', 0, CAST(0x00009CDD00EC7847 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'445fe367-2843-43b4-8b87-9bc935500a4e', N'ThakurA', 0, CAST(0x00009CDD00EC9828 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'cc233f8d-8735-4e75-95cb-7d7b6dc5da7c', N'TurnerO', 0, CAST(0x00009CDD00ECC0F2 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'e8ecee6c-a1da-469f-9b5a-59312ceb148c', N'ValdezR', 0, CAST(0x00009D0201027003 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'4e1eac11-f78b-40ad-ad32-14c5fade7b2e', N'WarrenJ', 0, CAST(0x00009CDD00E66B75 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (@AppId, N'7d7bff1a-05df-443e-a35e-158ca82eef7b', N'WeberM', 0, CAST(0x00009CDD00ED2178 AS DateTime))

INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'4e1eac11-f78b-40ad-ad32-14c5fade7b2e', @TeacherRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'e8ecee6c-a1da-469f-9b5a-59312ceb148c', @TeacherRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'57b96f71-0c3b-4735-be2c-660b5546381d', @TeacherRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'05317edf-71f7-4c27-b765-06070be0d46f', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'7d7bff1a-05df-443e-a35e-158ca82eef7b', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'5eef2d92-2f34-4313-8a57-20ace46740d5', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'c1a9944a-3017-4be5-8334-32d817a4298f', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'869474ad-1966-4c0c-8702-49a35b12c0c1', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'271152c7-1163-4b8f-83ab-6403ed58401c', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'cc233f8d-8735-4e75-95cb-7d7b6dc5da7c', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'9ecbd25d-a811-4a74-9db0-8b92cbc826f9', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'ddf197ba-2262-429d-9234-929a523d638e', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'445fe367-2843-43b4-8b87-9bc935500a4e', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'855a299a-78f4-429f-8e95-9eacb13fb660', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'c82b5841-b7e8-4b7e-91ee-a106cac858b4', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'e93c63c3-08e2-46f6-a6bd-a2f8c53f9b37', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'ba8f065a-bb63-4a60-9515-b88fdab58930', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'255c219b-05a4-444f-88fc-c08f0c93350c', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'31b8b5fc-0721-4dc5-8c59-eee67ce74d9f', @StudentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'2613de15-c226-4e80-997c-346be1c53dbe', @ParentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'66fc7861-704c-4416-9260-4fdc79d2dc5d', @ParentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'd8b38604-7fec-463a-a1b7-9c5c200bb59f', @ParentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'68dd9127-2441-43ff-b769-d4b4bfd07e9e', @ParentRoleId)
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'65cdd26f-2753-4f0f-a5dc-faf140ce22fb', @ParentRoleId)

INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'66fc7861-704c-4416-9260-4fdc79d2dc5d', N'password', 0, N'aanqHXoWu/xlM049nL1CqA==', N'duboism@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00EB0410 AS DateTime), CAST(0x00009CDD00EB0426 AS DateTime), CAST(0x00009CDD00EB0410 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'e93c63c3-08e2-46f6-a6bd-a2f8c53f9b37', N'password', 0, N'uEAHZdctegB5EemwXaq+pg==', N'grubere@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00ED61EC AS DateTime), CAST(0x00009CDD00ED62F4 AS DateTime), CAST(0x00009CDD00ED61EC AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'255c219b-05a4-444f-88fc-c08f0c93350c', N'password=', 0, N'kon+Lb+Zpm+aBWsrBWE7yg==', N'leea@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00EBD700 AS DateTime), CAST(0x00009CDD00EBD72F AS DateTime), CAST(0x00009CDD00EBD700 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'31b8b5fc-0721-4dc5-8c59-eee67ce74d9f', N'password', 0, N'+DZ8PtZZ6OhcPu8PA5qvCg==', N'leec@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00EC0004 AS DateTime), CAST(0x00009CE600CFFDB5 AS DateTime), CAST(0x00009CDD00EC0004 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'68dd9127-2441-43ff-b769-d4b4bfd07e9e', N'password', 0, N'SEVNEu7QCbcTEXqCPLuFzg==', N'leem@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00EB4CB8 AS DateTime), CAST(0x00009CE3012E63D6 AS DateTime), CAST(0x00009CDD00EB4CB8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'5eef2d92-2f34-4313-8a57-20ace46740d5', N'password', 0, N'MSOoXwzo6mnjtaeDB7Sm7A==', N'leeo@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00EC1E7C AS DateTime), CAST(0x00009CE600CF12A2 AS DateTime), CAST(0x00009CDD00EC1E7C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'65cdd26f-2753-4f0f-a5dc-faf140ce22fb', N'password', 0, N'MtBVsNLrW/A5nijXAoNVWg==', N'liud@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00FAE2F4 AS DateTime), CAST(0x00009CFF00C0C46A AS DateTime), CAST(0x00009CDD00FAE2F4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'2613de15-c226-4e80-997c-346be1c53dbe', N'password', 0, N'q0eHW5XrgZGoTwhaRSDpJQ==', N'liuj@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00FB061C AS DateTime), CAST(0x00009CDD00FB071E AS DateTime), CAST(0x00009CDD00FB061C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'05317edf-71f7-4c27-b765-06070be0d46f', N'password', 0, N'/QigusuWqAgSypiEz9VuWg==', N'liuk@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00FB2494 AS DateTime), CAST(0x00009CDD00FB252C AS DateTime), CAST(0x00009CDD00FB2494 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'869474ad-1966-4c0c-8702-49a35b12c0c1', N'password', 0, N'4ACqLjD03tFmwgsBqokZUQ==', N'liur@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00FB430C AS DateTime), CAST(0x00009CDD00FB43AD AS DateTime), CAST(0x00009CDD00FB430C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'd8b38604-7fec-463a-a1b7-9c5c200bb59f', N'password', 0, N'+gtVxNYxIOeQUFqNTq/BBw==', N'lyonr@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00EB2F6C AS DateTime), CAST(0x00009CDD00EB300B AS DateTime), CAST(0x00009CDD00EB2F6C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'ba8f065a-bb63-4a60-9515-b88fdab58930', N'password', 0, N'RXekNkpEjsfJHWaXqPqu4g==', N'lyonw@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00EBBAE0 AS DateTime), CAST(0x00009CDD00EBBBAB AS DateTime), CAST(0x00009CDD00EBBAE0 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'c1a9944a-3017-4be5-8334-32d817a4298f', N'password', 0, N'fHxQDoex7xniH/nVXK3Okw==', N'mulvado@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00ECFE50 AS DateTime), CAST(0x00009CDD00ECFEA7 AS DateTime), CAST(0x00009CDD00ECFE50 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'ddf197ba-2262-429d-9234-929a523d638e', N'password', 0, N'vkWU5KNpq5kTFjI3WqDCFQ==', N'muz@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00ECDD80 AS DateTime), CAST(0x00009CDD00ECDE82 AS DateTime), CAST(0x00009CDD00ECDD80 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'57b96f71-0c3b-4735-be2c-660b5546381d', N'password', 0, N'SJ6SpYRaVDWKcsTheacJ5w==', N'NicoE@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00E6F94C AS DateTime), CAST(0x00009CDD00E6F9A7 AS DateTime), CAST(0x00009CDD00E6F94C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'855a299a-78f4-429f-8e95-9eacb13fb660', N'password', 0, N'uIjF6FQQoZTGVKU343GOfQ==', N'oliveiras@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00ED4374 AS DateTime), CAST(0x00009CDD00ED43C1 AS DateTime), CAST(0x00009CDD00ED4374 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'9ecbd25d-a811-4a74-9db0-8b92cbc826f9', N'password', 0, N'TsLMXXhskjGU3Blkw9LBTA==', N'ortonj@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00ED9324 AS DateTime), CAST(0x00009CDD00ED933F AS DateTime), CAST(0x00009CDD00ED9324 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'271152c7-1163-4b8f-83ab-6403ed58401c', N'password', 0, N'WpxJv2qyK4kncUFBXo4y3A==', N'sousaf@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00EC3CF4 AS DateTime), CAST(0x00009CE30130B5E1 AS DateTime), CAST(0x00009CDD00EC3CF4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'c82b5841-b7e8-4b7e-91ee-a106cac858b4', N'password', 0, N'oEnVkdpl7CLV01rHMvZZuQ==', N'sundaramv@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00EC778C AS DateTime), CAST(0x00009CDD00EC7847 AS DateTime), CAST(0x00009CDD00EC778C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'445fe367-2843-43b4-8b87-9bc935500a4e', N'password', 0, N'q+3V137jUNxFyHLoouek4w==', N'thakura@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00EC9730 AS DateTime), CAST(0x00009CDD00EC9828 AS DateTime), CAST(0x00009CDD00EC9730 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'cc233f8d-8735-4e75-95cb-7d7b6dc5da7c', N'password', 0, N'X+5f/bUEJTJD0DHB4LsvfA==', N'turnero@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00ECC034 AS DateTime), CAST(0x00009CDD00ECC0F2 AS DateTime), CAST(0x00009CDD00ECC034 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'e8ecee6c-a1da-469f-9b5a-59312ceb148c', N'password', 0, N'c8kXx0bD9ROlgmB8jNqM4Q==', N'ValdezR@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00E5FC2C AS DateTime), CAST(0x00009D0201027003 AS DateTime), CAST(0x00009CDD00E5FC2C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'4e1eac11-f78b-40ad-ad32-14c5fade7b2e', N'password', 0, N'ZjYds3801Dbtz4K++TlQLw==', N'warrenj@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00E66A54 AS DateTime), CAST(0x00009CDD00E66B75 AS DateTime), CAST(0x00009CDD00E66A54 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (@AppId, N'7d7bff1a-05df-443e-a35e-158ca82eef7b', N'password', 0, N'E9SrMWvErwhPgNob0kMqZQ==', N'weberm@fineartschool.net', NULL, NULL, 1, 0, CAST(0x00009CDD00ED2178 AS DateTime), CAST(0x00009CDD00ED2178 AS DateTime), CAST(0x00009CDD00ED2178 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)

INSERT [dbo].[Teachers] ([UserId], [FirstName], [LastName], [Class]) VALUES (N'4e1eac11-f78b-40ad-ad32-14c5fade7b2e', N'Jason', N'Warren', N'4B')
INSERT [dbo].[Teachers] ([UserId], [FirstName], [LastName], [Class]) VALUES (N'e8ecee6c-a1da-469f-9b5a-59312ceb148c', N'Rachel', N'Valdez', N'3C')
INSERT [dbo].[Teachers] ([UserId], [FirstName], [LastName], [Class]) VALUES (N'57b96f71-0c3b-4735-be2c-660b5546381d', N'Elena', N'Nicolello', N'2A')

INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'05317edf-71f7-4c27-b765-06070be0d46f', N'Kevin', N'Liu', N'j0422528.jpg', N'e8ecee6c-a1da-469f-9b5a-59312ceb148c')
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'7d7bff1a-05df-443e-a35e-158ca82eef7b', N'Martin', N'Weber', N'j0439330.jpg', N'e8ecee6c-a1da-469f-9b5a-59312ceb148c')
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'5eef2d92-2f34-4313-8a57-20ace46740d5', N'Oliver', N'Lee', N'j0446466.jpg', N'e8ecee6c-a1da-469f-9b5a-59312ceb148c')
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'c1a9944a-3017-4be5-8334-32d817a4298f', N'Olga', N'Mulvad', N'j0399784.jpg', N'4e1eac11-f78b-40ad-ad32-14c5fade7b2e')
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'869474ad-1966-4c0c-8702-49a35b12c0c1', N'Run', N'Liu', N'j0262967.jpg', N'4e1eac11-f78b-40ad-ad32-14c5fade7b2e')
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'271152c7-1163-4b8f-83ab-6403ed58401c', N'Fernando', N'Sousa', N'j0439406.jpg', N'e8ecee6c-a1da-469f-9b5a-59312ceb148c')
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'cc233f8d-8735-4e75-95cb-7d7b6dc5da7c', N'Olinda', N'Turner', N'j0410095.jpg', N'e8ecee6c-a1da-469f-9b5a-59312ceb148c')
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'9ecbd25d-a811-4a74-9db0-8b92cbc826f9', N'Jon', N'Orton', N'j0409726.jpg', N'e8ecee6c-a1da-469f-9b5a-59312ceb148c')
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'445fe367-2843-43b4-8b87-9bc935500a4e', N'Abhijit', N'Thakur', N'j0409369.jpg', N'e8ecee6c-a1da-469f-9b5a-59312ceb148c')
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'855a299a-78f4-429f-8e95-9eacb13fb660', N'Susana', N'Oliveira', N'j0439336.jpg', N'e8ecee6c-a1da-469f-9b5a-59312ceb148c')
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'c82b5841-b7e8-4b7e-91ee-a106cac858b4', N'Vijay', N'Sundaram', N'j0409726.jpg', N'e8ecee6c-a1da-469f-9b5a-59312ceb148c')
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'e93c63c3-08e2-46f6-a6bd-a2f8c53f9b37', N'Eric', N'Gruber', N'j0439331.jpg', N'e8ecee6c-a1da-469f-9b5a-59312ceb148c')
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'ba8f065a-bb63-4a60-9515-b88fdab58930', N'William', N'Lyon', N'j0442459.jpg', NULL)
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'255c219b-05a4-444f-88fc-c08f0c93350c', N'Aaron', N'Lee', N'j0442243.jpg', N'4e1eac11-f78b-40ad-ad32-14c5fade7b2e')
INSERT [dbo].[Students] ([UserId], [FirstName], [LastName], [ImageName], [TeacherUserId]) VALUES (N'31b8b5fc-0721-4dc5-8c59-eee67ce74d9f', N'Christina', N'Lee', N'j0411707.jpg', N'4e1eac11-f78b-40ad-ad32-14c5fade7b2e')

INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (0, N'Math')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (1, N'Reading')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (2, N'Writing')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (3, N'Science')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (4, N'Geography')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (5, N'English')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (6, N'Spanish')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (7, N'History')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (8, N'Sports')

INSERT [dbo].[Parents] ([UserId], [FirstName], [LastName]) VALUES (N'66fc7861-704c-4416-9260-4fdc79d2dc5d', N'Marie', N'Dubois')
INSERT [dbo].[Parents] ([UserId], [FirstName], [LastName]) VALUES (N'd8b38604-7fec-463a-a1b7-9c5c200bb59f', N'Robert', N'Lyon')
INSERT [dbo].[Parents] ([UserId], [FirstName], [LastName]) VALUES (N'68dd9127-2441-43ff-b769-d4b4bfd07e9e', N'Mark', N'Lee')
INSERT [dbo].[Parents] ([UserId], [FirstName], [LastName]) VALUES (N'65cdd26f-2753-4f0f-a5dc-faf140ce22fb', N'David', N'Liu')

INSERT [dbo].[ParentStudent] ([Parents_UserId], [Students_UserId]) VALUES (N'66fc7861-704c-4416-9260-4fdc79d2dc5d', N'ba8f065a-bb63-4a60-9515-b88fdab58930')
INSERT [dbo].[ParentStudent] ([Parents_UserId], [Students_UserId]) VALUES (N'd8b38604-7fec-463a-a1b7-9c5c200bb59f', N'ba8f065a-bb63-4a60-9515-b88fdab58930')
INSERT [dbo].[ParentStudent] ([Parents_UserId], [Students_UserId]) VALUES (N'68dd9127-2441-43ff-b769-d4b4bfd07e9e', N'5eef2d92-2f34-4313-8a57-20ace46740d5')
INSERT [dbo].[ParentStudent] ([Parents_UserId], [Students_UserId]) VALUES (N'68dd9127-2441-43ff-b769-d4b4bfd07e9e', N'255c219b-05a4-444f-88fc-c08f0c93350c')
INSERT [dbo].[ParentStudent] ([Parents_UserId], [Students_UserId]) VALUES (N'68dd9127-2441-43ff-b769-d4b4bfd07e9e', N'31b8b5fc-0721-4dc5-8c59-eee67ce74d9f')
INSERT [dbo].[ParentStudent] ([Parents_UserId], [Students_UserId]) VALUES (N'65cdd26f-2753-4f0f-a5dc-faf140ce22fb', N'05317edf-71f7-4c27-b765-06070be0d46f')
INSERT [dbo].[ParentStudent] ([Parents_UserId], [Students_UserId]) VALUES (N'65cdd26f-2753-4f0f-a5dc-faf140ce22fb', N'869474ad-1966-4c0c-8702-49a35b12c0c1')

SET IDENTITY_INSERT [dbo].[Grades] ON
INSERT [dbo].[Grades] ([Id], [Assessment], [Comments], [AssessmentDate], [SubjectId], [StudentUserId]) VALUES (1, N'B+', N'A fine effort - Improving!', CAST(0x00009CE300000000 AS DateTime), 0, N'5eef2d92-2f34-4313-8a57-20ace46740d5')
INSERT [dbo].[Grades] ([Id], [Assessment], [Comments], [AssessmentDate], [SubjectId], [StudentUserId]) VALUES (2, N'A+', N'Fantastic concentration and diligence', CAST(0x00009CE400000000 AS DateTime), 0, N'05317edf-71f7-4c27-b765-06070be0d46f')
INSERT [dbo].[Grades] ([Id], [Assessment], [Comments], [AssessmentDate], [SubjectId], [StudentUserId]) VALUES (3, N'C-', N'More effort needed! Too easily distracted.', CAST(0x00009CE400000000 AS DateTime), 5, N'05317edf-71f7-4c27-b765-06070be0d46f')
INSERT [dbo].[Grades] ([Id], [Assessment], [Comments], [AssessmentDate], [SubjectId], [StudentUserId]) VALUES (4, N'B+', N'Well what an improvmement. Good work!', CAST(0x00009CDD00000000 AS DateTime), 2, N'05317edf-71f7-4c27-b765-06070be0d46f')
INSERT [dbo].[Grades] ([Id], [Assessment], [Comments], [AssessmentDate], [SubjectId], [StudentUserId]) VALUES (5, N'C+', N'Needs to try harder', CAST(0x00009CE600000000 AS DateTime), 6, N'05317edf-71f7-4c27-b765-06070be0d46f')
INSERT [dbo].[Grades] ([Id], [Assessment], [Comments], [AssessmentDate], [SubjectId], [StudentUserId]) VALUES (6, N'C+', N'V Good', CAST(0x00009CE601101BC4 AS DateTime), 7, N'05317edf-71f7-4c27-b765-06070be0d46f')
INSERT [dbo].[Grades] ([Id], [Assessment], [Comments], [AssessmentDate], [SubjectId], [StudentUserId]) VALUES (7, N'B+', N'Must do better', CAST(0x00009CDA00000000 AS DateTime), 3, N'05317edf-71f7-4c27-b765-06070be0d46f')
INSERT [dbo].[Grades] ([Id], [Assessment], [Comments], [AssessmentDate], [SubjectId], [StudentUserId]) VALUES (8, N'B', N'OK so far', CAST(0x00009CD900000000 AS DateTime), 5, N'05317edf-71f7-4c27-b765-06070be0d46f')
INSERT [dbo].[Grades] ([Id], [Assessment], [Comments], [AssessmentDate], [SubjectId], [StudentUserId]) VALUES (9, N'B+', N'Very good effort', CAST(0x00009D0200000000 AS DateTime), 0, N'e93c63c3-08e2-46f6-a6bd-a2f8c53f9b37')
INSERT [dbo].[Grades] ([Id], [Assessment], [Comments], [AssessmentDate], [SubjectId], [StudentUserId]) VALUES (10, N'D', N'Could do better', CAST(0x00009E3F00000000 AS DateTime), 3, N'e93c63c3-08e2-46f6-a6bd-a2f8c53f9b37')
INSERT [dbo].[Grades] ([Id], [Assessment], [Comments], [AssessmentDate], [SubjectId], [StudentUserId]) VALUES (11, N'B+', N'VG', CAST(0x00009D1800000000 AS DateTime), 7, N'e93c63c3-08e2-46f6-a6bd-a2f8c53f9b37')
SET IDENTITY_INSERT [dbo].[Grades] OFF