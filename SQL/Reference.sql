
/****** Object:  StoredProcedure [proc_ReferenceLoadByPrimaryKey]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ReferenceLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ReferenceLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_ReferenceLoadByPrimaryKey]
(
	@ReferenceID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReferenceID],
		[LogoPath],
		[LogoLink]
	FROM [Reference]
	WHERE
		([ReferenceID] = @ReferenceID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ReferenceLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_ReferenceLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ReferenceLoadAll]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ReferenceLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ReferenceLoadAll];
GO

CREATE PROCEDURE [proc_ReferenceLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReferenceID],
		[LogoPath],
		[LogoLink]
	FROM [Reference]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ReferenceLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_ReferenceLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ReferenceUpdate]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ReferenceUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ReferenceUpdate];
GO

CREATE PROCEDURE [proc_ReferenceUpdate]
(
	@ReferenceID int,
	@LogoPath nvarchar(500) = NULL,
	@LogoLink nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Reference]
	SET
		[LogoPath] = @LogoPath,
		[LogoLink] = @LogoLink
	WHERE
		[ReferenceID] = @ReferenceID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ReferenceUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_ReferenceUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_ReferenceInsert]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ReferenceInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ReferenceInsert];
GO

CREATE PROCEDURE [proc_ReferenceInsert]
(
	@ReferenceID int = NULL output,
	@LogoPath nvarchar(500) = NULL,
	@LogoLink nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Reference]
	(
		[LogoPath],
		[LogoLink]
	)
	VALUES
	(
		@LogoPath,
		@LogoLink
	)

	SET @Err = @@Error

	SELECT @ReferenceID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ReferenceInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_ReferenceInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ReferenceDelete]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ReferenceDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ReferenceDelete];
GO

CREATE PROCEDURE [proc_ReferenceDelete]
(
	@ReferenceID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Reference]
	WHERE
		[ReferenceID] = @ReferenceID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ReferenceDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_ReferenceDelete Error on Creation'
GO
