
/****** Object:  StoredProcedure [proc_HomeImageSliderLoadByPrimaryKey]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_HomeImageSliderLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_HomeImageSliderLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_HomeImageSliderLoadByPrimaryKey]
(
	@HomeImageSliderID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[HomeImageSliderID],
		[ImagePath],
		[ImageTitle],
		[ImageDescription],
		[ImageLink]
	FROM [HomeImageSlider]
	WHERE
		([HomeImageSliderID] = @HomeImageSliderID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_HomeImageSliderLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_HomeImageSliderLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_HomeImageSliderLoadAll]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_HomeImageSliderLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_HomeImageSliderLoadAll];
GO

CREATE PROCEDURE [proc_HomeImageSliderLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[HomeImageSliderID],
		[ImagePath],
		[ImageTitle],
		[ImageDescription],
		[ImageLink]
	FROM [HomeImageSlider]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_HomeImageSliderLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_HomeImageSliderLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_HomeImageSliderUpdate]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_HomeImageSliderUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_HomeImageSliderUpdate];
GO

CREATE PROCEDURE [proc_HomeImageSliderUpdate]
(
	@HomeImageSliderID int,
	@ImagePath nvarchar(500) = NULL,
	@ImageTitle nvarchar(500) = NULL,
	@ImageDescription nvarchar(500) = NULL,
	@ImageLink nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [HomeImageSlider]
	SET
		[ImagePath] = @ImagePath,
		[ImageTitle] = @ImageTitle,
		[ImageDescription] = @ImageDescription,
		[ImageLink] = @ImageLink
	WHERE
		[HomeImageSliderID] = @HomeImageSliderID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_HomeImageSliderUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_HomeImageSliderUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_HomeImageSliderInsert]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_HomeImageSliderInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_HomeImageSliderInsert];
GO

CREATE PROCEDURE [proc_HomeImageSliderInsert]
(
	@HomeImageSliderID int = NULL output,
	@ImagePath nvarchar(500) = NULL,
	@ImageTitle nvarchar(500) = NULL,
	@ImageDescription nvarchar(500) = NULL,
	@ImageLink nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [HomeImageSlider]
	(
		[ImagePath],
		[ImageTitle],
		[ImageDescription],
		[ImageLink]
	)
	VALUES
	(
		@ImagePath,
		@ImageTitle,
		@ImageDescription,
		@ImageLink
	)

	SET @Err = @@Error

	SELECT @HomeImageSliderID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_HomeImageSliderInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_HomeImageSliderInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_HomeImageSliderDelete]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_HomeImageSliderDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_HomeImageSliderDelete];
GO

CREATE PROCEDURE [proc_HomeImageSliderDelete]
(
	@HomeImageSliderID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [HomeImageSlider]
	WHERE
		[HomeImageSliderID] = @HomeImageSliderID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_HomeImageSliderDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_HomeImageSliderDelete Error on Creation'
GO
