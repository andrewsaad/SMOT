
/****** Object:  StoredProcedure [proc_MembersLoadByPrimaryKey]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_MembersLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_MembersLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_MembersLoadByPrimaryKey]
(
	@MemberID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[MemberID],
		[MemberName],
		[MemberTelephone],
		[MemberEmail],
		[MemberImagePath]
	FROM [Members]
	WHERE
		([MemberID] = @MemberID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_MembersLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_MembersLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_MembersLoadAll]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_MembersLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_MembersLoadAll];
GO

CREATE PROCEDURE [proc_MembersLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[MemberID],
		[MemberName],
		[MemberTelephone],
		[MemberEmail],
		[MemberImagePath]
	FROM [Members]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_MembersLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_MembersLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_MembersUpdate]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_MembersUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_MembersUpdate];
GO

CREATE PROCEDURE [proc_MembersUpdate]
(
	@MemberID int,
	@MemberName nvarchar(500) = NULL,
	@MemberTelephone nvarchar(50) = NULL,
	@MemberEmail nvarchar(500) = NULL,
	@MemberImagePath nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Members]
	SET
		[MemberName] = @MemberName,
		[MemberTelephone] = @MemberTelephone,
		[MemberEmail] = @MemberEmail,
		[MemberImagePath] = @MemberImagePath
	WHERE
		[MemberID] = @MemberID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_MembersUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_MembersUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_MembersInsert]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_MembersInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_MembersInsert];
GO

CREATE PROCEDURE [proc_MembersInsert]
(
	@MemberID int = NULL output,
	@MemberName nvarchar(500) = NULL,
	@MemberTelephone nvarchar(50) = NULL,
	@MemberEmail nvarchar(500) = NULL,
	@MemberImagePath nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Members]
	(
		[MemberName],
		[MemberTelephone],
		[MemberEmail],
		[MemberImagePath]
	)
	VALUES
	(
		@MemberName,
		@MemberTelephone,
		@MemberEmail,
		@MemberImagePath
	)

	SET @Err = @@Error

	SELECT @MemberID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_MembersInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_MembersInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_MembersDelete]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_MembersDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_MembersDelete];
GO

CREATE PROCEDURE [proc_MembersDelete]
(
	@MemberID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Members]
	WHERE
		[MemberID] = @MemberID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_MembersDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_MembersDelete Error on Creation'
GO
