
/****** Object:  StoredProcedure [proc_PageContentLoadByPrimaryKey]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_PageContentLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_PageContentLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_PageContentLoadByPrimaryKey]
(
	@PageID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PageID],
		[PageTitle],
		[PlaceHolder1],
		[PlaceHolder2],
		[PlaceHolder3]
	FROM [PageContent]
	WHERE
		([PageID] = @PageID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PageContentLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_PageContentLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_PageContentLoadAll]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_PageContentLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_PageContentLoadAll];
GO

CREATE PROCEDURE [proc_PageContentLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PageID],
		[PageTitle],
		[PlaceHolder1],
		[PlaceHolder2],
		[PlaceHolder3]
	FROM [PageContent]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PageContentLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_PageContentLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_PageContentUpdate]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_PageContentUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_PageContentUpdate];
GO

CREATE PROCEDURE [proc_PageContentUpdate]
(
	@PageID int,
	@PageTitle nvarchar(500) = NULL,
	@PlaceHolder1 nvarchar(500) = NULL,
	@PlaceHolder2 nvarchar(500) = NULL,
	@PlaceHolder3 nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [PageContent]
	SET
		[PageTitle] = @PageTitle,
		[PlaceHolder1] = @PlaceHolder1,
		[PlaceHolder2] = @PlaceHolder2,
		[PlaceHolder3] = @PlaceHolder3
	WHERE
		[PageID] = @PageID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PageContentUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_PageContentUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_PageContentInsert]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_PageContentInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_PageContentInsert];
GO

CREATE PROCEDURE [proc_PageContentInsert]
(
	@PageID int = NULL output,
	@PageTitle nvarchar(500) = NULL,
	@PlaceHolder1 nvarchar(500) = NULL,
	@PlaceHolder2 nvarchar(500) = NULL,
	@PlaceHolder3 nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [PageContent]
	(
		[PageTitle],
		[PlaceHolder1],
		[PlaceHolder2],
		[PlaceHolder3]
	)
	VALUES
	(
		@PageTitle,
		@PlaceHolder1,
		@PlaceHolder2,
		@PlaceHolder3
	)

	SET @Err = @@Error

	SELECT @PageID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PageContentInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_PageContentInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_PageContentDelete]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_PageContentDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_PageContentDelete];
GO

CREATE PROCEDURE [proc_PageContentDelete]
(
	@PageID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [PageContent]
	WHERE
		[PageID] = @PageID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PageContentDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_PageContentDelete Error on Creation'
GO
