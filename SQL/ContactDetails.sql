
/****** Object:  StoredProcedure [proc_ContactDetailsLoadByPrimaryKey]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ContactDetailsLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ContactDetailsLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_ContactDetailsLoadByPrimaryKey]
(
	@ContactDetailsID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ContactDetailsID],
		[Location],
		[Email],
		[Facebook],
		[Description],
		[Telephone]
	FROM [ContactDetails]
	WHERE
		([ContactDetailsID] = @ContactDetailsID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ContactDetailsLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_ContactDetailsLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ContactDetailsLoadAll]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ContactDetailsLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ContactDetailsLoadAll];
GO

CREATE PROCEDURE [proc_ContactDetailsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ContactDetailsID],
		[Location],
		[Email],
		[Facebook],
		[Description],
		[Telephone]
	FROM [ContactDetails]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ContactDetailsLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_ContactDetailsLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ContactDetailsUpdate]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ContactDetailsUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ContactDetailsUpdate];
GO

CREATE PROCEDURE [proc_ContactDetailsUpdate]
(
	@ContactDetailsID int,
	@Location nvarchar(500) = NULL,
	@Email nvarchar(500) = NULL,
	@Facebook nvarchar(500) = NULL,
	@Description nvarchar(500) = NULL,
	@Telephone nvarchar(50) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [ContactDetails]
	SET
		[Location] = @Location,
		[Email] = @Email,
		[Facebook] = @Facebook,
		[Description] = @Description,
		[Telephone] = @Telephone
	WHERE
		[ContactDetailsID] = @ContactDetailsID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ContactDetailsUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_ContactDetailsUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_ContactDetailsInsert]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ContactDetailsInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ContactDetailsInsert];
GO

CREATE PROCEDURE [proc_ContactDetailsInsert]
(
	@ContactDetailsID int = NULL output,
	@Location nvarchar(500) = NULL,
	@Email nvarchar(500) = NULL,
	@Facebook nvarchar(500) = NULL,
	@Description nvarchar(500) = NULL,
	@Telephone nvarchar(50) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [ContactDetails]
	(
		[Location],
		[Email],
		[Facebook],
		[Description],
		[Telephone]
	)
	VALUES
	(
		@Location,
		@Email,
		@Facebook,
		@Description,
		@Telephone
	)

	SET @Err = @@Error

	SELECT @ContactDetailsID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ContactDetailsInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_ContactDetailsInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ContactDetailsDelete]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ContactDetailsDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ContactDetailsDelete];
GO

CREATE PROCEDURE [proc_ContactDetailsDelete]
(
	@ContactDetailsID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ContactDetails]
	WHERE
		[ContactDetailsID] = @ContactDetailsID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ContactDetailsDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_ContactDetailsDelete Error on Creation'
GO
