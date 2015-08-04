
/****** Object:  StoredProcedure [proc_EventImageLoadByPrimaryKey]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventImageLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventImageLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_EventImageLoadByPrimaryKey]
(
	@EventImageID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EventImageID],
		[EventID],
		[ImagePath],
		[Description]
	FROM [EventImage]
	WHERE
		([EventImageID] = @EventImageID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventImageLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventImageLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EventImageLoadAll]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventImageLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventImageLoadAll];
GO

CREATE PROCEDURE [proc_EventImageLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EventImageID],
		[EventID],
		[ImagePath],
		[Description]
	FROM [EventImage]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventImageLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventImageLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EventImageUpdate]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventImageUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventImageUpdate];
GO

CREATE PROCEDURE [proc_EventImageUpdate]
(
	@EventImageID int,
	@EventID int = NULL,
	@ImagePath nvarchar(500) = NULL,
	@Description nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [EventImage]
	SET
		[EventID] = @EventID,
		[ImagePath] = @ImagePath,
		[Description] = @Description
	WHERE
		[EventImageID] = @EventImageID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventImageUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventImageUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_EventImageInsert]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventImageInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventImageInsert];
GO

CREATE PROCEDURE [proc_EventImageInsert]
(
	@EventImageID int = NULL output,
	@EventID int = NULL,
	@ImagePath nvarchar(500) = NULL,
	@Description nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [EventImage]
	(
		[EventID],
		[ImagePath],
		[Description]
	)
	VALUES
	(
		@EventID,
		@ImagePath,
		@Description
	)

	SET @Err = @@Error

	SELECT @EventImageID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventImageInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventImageInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EventImageDelete]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventImageDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventImageDelete];
GO

CREATE PROCEDURE [proc_EventImageDelete]
(
	@EventImageID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [EventImage]
	WHERE
		[EventImageID] = @EventImageID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventImageDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventImageDelete Error on Creation'
GO
