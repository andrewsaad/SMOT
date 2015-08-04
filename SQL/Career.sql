
USE [SmotWebDB]
GO

/****** Object:  StoredProcedure [proc_CareerLoadByPrimaryKey]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CareerLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CareerLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_CareerLoadByPrimaryKey]
(
	@CareerID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CareerID],
		[Name],
		[Email],
		[FilePath],
		[Description]
	FROM [Career]
	WHERE
		([CareerID] = @CareerID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CareerLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_CareerLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CareerLoadAll]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CareerLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CareerLoadAll];
GO

CREATE PROCEDURE [proc_CareerLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CareerID],
		[Name],
		[Email],
		[FilePath],
		[Description]
	FROM [Career]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CareerLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_CareerLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CareerUpdate]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CareerUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CareerUpdate];
GO

CREATE PROCEDURE [proc_CareerUpdate]
(
	@CareerID int,
	@Name nvarchar(500) = NULL,
	@Email nvarchar(500) = NULL,
	@FilePath nvarchar(500) = NULL,
	@Description nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Career]
	SET
		[Name] = @Name,
		[Email] = @Email,
		[FilePath] = @FilePath,
		[Description] = @Description
	WHERE
		[CareerID] = @CareerID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CareerUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_CareerUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_CareerInsert]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CareerInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CareerInsert];
GO

CREATE PROCEDURE [proc_CareerInsert]
(
	@CareerID int = NULL output,
	@Name nvarchar(500) = NULL,
	@Email nvarchar(500) = NULL,
	@FilePath nvarchar(500) = NULL,
	@Description nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Career]
	(
		[Name],
		[Email],
		[FilePath],
		[Description]
	)
	VALUES
	(
		@Name,
		@Email,
		@FilePath,
		@Description
	)

	SET @Err = @@Error

	SELECT @CareerID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CareerInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_CareerInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CareerDelete]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CareerDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CareerDelete];
GO

CREATE PROCEDURE [proc_CareerDelete]
(
	@CareerID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Career]
	WHERE
		[CareerID] = @CareerID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CareerDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_CareerDelete Error on Creation'
GO
