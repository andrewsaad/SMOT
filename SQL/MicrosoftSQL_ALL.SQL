
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

/****** Object:  StoredProcedure [proc_EvaluationsLoadByPrimaryKey]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EvaluationsLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EvaluationsLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_EvaluationsLoadByPrimaryKey]
(
	@EvaluationID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EvaluationID],
		[EventID],
		[MemberID],
		[Organizing],
		[Time],
		[Behaviour]
	FROM [Evaluations]
	WHERE
		([EvaluationID] = @EvaluationID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EvaluationsLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_EvaluationsLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EvaluationsLoadAll]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EvaluationsLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EvaluationsLoadAll];
GO

CREATE PROCEDURE [proc_EvaluationsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EvaluationID],
		[EventID],
		[MemberID],
		[Organizing],
		[Time],
		[Behaviour]
	FROM [Evaluations]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EvaluationsLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_EvaluationsLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EvaluationsUpdate]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EvaluationsUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EvaluationsUpdate];
GO

CREATE PROCEDURE [proc_EvaluationsUpdate]
(
	@EvaluationID int,
	@EventID int = NULL,
	@MemberID int = NULL,
	@Organizing int = NULL,
	@Time datetime = NULL,
	@Behaviour int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Evaluations]
	SET
		[EventID] = @EventID,
		[MemberID] = @MemberID,
		[Organizing] = @Organizing,
		[Time] = @Time,
		[Behaviour] = @Behaviour
	WHERE
		[EvaluationID] = @EvaluationID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EvaluationsUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_EvaluationsUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_EvaluationsInsert]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EvaluationsInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EvaluationsInsert];
GO

CREATE PROCEDURE [proc_EvaluationsInsert]
(
	@EvaluationID int = NULL output,
	@EventID int = NULL,
	@MemberID int = NULL,
	@Organizing int = NULL,
	@Time datetime = NULL,
	@Behaviour int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Evaluations]
	(
		[EventID],
		[MemberID],
		[Organizing],
		[Time],
		[Behaviour]
	)
	VALUES
	(
		@EventID,
		@MemberID,
		@Organizing,
		@Time,
		@Behaviour
	)

	SET @Err = @@Error

	SELECT @EvaluationID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EvaluationsInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_EvaluationsInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EvaluationsDelete]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EvaluationsDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EvaluationsDelete];
GO

CREATE PROCEDURE [proc_EvaluationsDelete]
(
	@EvaluationID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Evaluations]
	WHERE
		[EvaluationID] = @EvaluationID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EvaluationsDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_EvaluationsDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EventLoadByPrimaryKey]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_EventLoadByPrimaryKey]
(
	@EventID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EventID],
		[EventTypeID],
		[MemberID],
		[EventName],
		[EventPlace],
		[EventDate],
		[EventTimeFrom],
		[EventTimeTo],
		[EventTshirt],
		[MainImagePath]
	FROM [Event]
	WHERE
		([EventID] = @EventID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EventLoadAll]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventLoadAll];
GO

CREATE PROCEDURE [proc_EventLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EventID],
		[EventTypeID],
		[MemberID],
		[EventName],
		[EventPlace],
		[EventDate],
		[EventTimeFrom],
		[EventTimeTo],
		[EventTshirt],
		[MainImagePath]
	FROM [Event]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EventUpdate]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventUpdate];
GO

CREATE PROCEDURE [proc_EventUpdate]
(
	@EventID int,
	@EventTypeID int = NULL,
	@MemberID int = NULL,
	@EventName nvarchar(500) = NULL,
	@EventPlace nvarchar(500) = NULL,
	@EventDate datetime = NULL,
	@EventTimeFrom datetime = NULL,
	@EventTimeTo datetime = NULL,
	@EventTshirt nvarchar(500) = NULL,
	@MainImagePath nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Event]
	SET
		[EventTypeID] = @EventTypeID,
		[MemberID] = @MemberID,
		[EventName] = @EventName,
		[EventPlace] = @EventPlace,
		[EventDate] = @EventDate,
		[EventTimeFrom] = @EventTimeFrom,
		[EventTimeTo] = @EventTimeTo,
		[EventTshirt] = @EventTshirt,
		[MainImagePath] = @MainImagePath
	WHERE
		[EventID] = @EventID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_EventInsert]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventInsert];
GO

CREATE PROCEDURE [proc_EventInsert]
(
	@EventID int = NULL output,
	@EventTypeID int = NULL,
	@MemberID int = NULL,
	@EventName nvarchar(500) = NULL,
	@EventPlace nvarchar(500) = NULL,
	@EventDate datetime = NULL,
	@EventTimeFrom datetime = NULL,
	@EventTimeTo datetime = NULL,
	@EventTshirt nvarchar(500) = NULL,
	@MainImagePath nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Event]
	(
		[EventTypeID],
		[MemberID],
		[EventName],
		[EventPlace],
		[EventDate],
		[EventTimeFrom],
		[EventTimeTo],
		[EventTshirt],
		[MainImagePath]
	)
	VALUES
	(
		@EventTypeID,
		@MemberID,
		@EventName,
		@EventPlace,
		@EventDate,
		@EventTimeFrom,
		@EventTimeTo,
		@EventTshirt,
		@MainImagePath
	)

	SET @Err = @@Error

	SELECT @EventID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EventDelete]    Script Date: 7/24/2015 6:30:29 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventDelete];
GO

CREATE PROCEDURE [proc_EventDelete]
(
	@EventID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Event]
	WHERE
		[EventID] = @EventID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventDelete Error on Creation'
GO

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

/****** Object:  StoredProcedure [proc_EventTypeLoadByPrimaryKey]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventTypeLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventTypeLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_EventTypeLoadByPrimaryKey]
(
	@EventTypeID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EventTypeID],
		[EventTypeName]
	FROM [EventType]
	WHERE
		([EventTypeID] = @EventTypeID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventTypeLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventTypeLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EventTypeLoadAll]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventTypeLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventTypeLoadAll];
GO

CREATE PROCEDURE [proc_EventTypeLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EventTypeID],
		[EventTypeName]
	FROM [EventType]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventTypeLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventTypeLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EventTypeUpdate]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventTypeUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventTypeUpdate];
GO

CREATE PROCEDURE [proc_EventTypeUpdate]
(
	@EventTypeID int,
	@EventTypeName nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [EventType]
	SET
		[EventTypeName] = @EventTypeName
	WHERE
		[EventTypeID] = @EventTypeID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventTypeUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventTypeUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_EventTypeInsert]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventTypeInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventTypeInsert];
GO

CREATE PROCEDURE [proc_EventTypeInsert]
(
	@EventTypeID int = NULL output,
	@EventTypeName nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [EventType]
	(
		[EventTypeName]
	)
	VALUES
	(
		@EventTypeName
	)

	SET @Err = @@Error

	SELECT @EventTypeID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventTypeInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventTypeInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EventTypeDelete]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EventTypeDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EventTypeDelete];
GO

CREATE PROCEDURE [proc_EventTypeDelete]
(
	@EventTypeID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [EventType]
	WHERE
		[EventTypeID] = @EventTypeID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EventTypeDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_EventTypeDelete Error on Creation'
GO

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

/****** Object:  StoredProcedure [proc_TasksLoadByPrimaryKey]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TasksLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TasksLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_TasksLoadByPrimaryKey]
(
	@TaskID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TaskID],
		[MemberID],
		[TaskName],
		[TaskResult],
		[Notes]
	FROM [Tasks]
	WHERE
		([TaskID] = @TaskID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TasksLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_TasksLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_TasksLoadAll]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TasksLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TasksLoadAll];
GO

CREATE PROCEDURE [proc_TasksLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TaskID],
		[MemberID],
		[TaskName],
		[TaskResult],
		[Notes]
	FROM [Tasks]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TasksLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_TasksLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_TasksUpdate]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TasksUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TasksUpdate];
GO

CREATE PROCEDURE [proc_TasksUpdate]
(
	@TaskID int,
	@MemberID int = NULL,
	@TaskName nvarchar(500) = NULL,
	@TaskResult nvarchar(50) = NULL,
	@Notes nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Tasks]
	SET
		[MemberID] = @MemberID,
		[TaskName] = @TaskName,
		[TaskResult] = @TaskResult,
		[Notes] = @Notes
	WHERE
		[TaskID] = @TaskID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TasksUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_TasksUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_TasksInsert]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TasksInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TasksInsert];
GO

CREATE PROCEDURE [proc_TasksInsert]
(
	@TaskID int = NULL output,
	@MemberID int = NULL,
	@TaskName nvarchar(500) = NULL,
	@TaskResult nvarchar(50) = NULL,
	@Notes nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Tasks]
	(
		[MemberID],
		[TaskName],
		[TaskResult],
		[Notes]
	)
	VALUES
	(
		@MemberID,
		@TaskName,
		@TaskResult,
		@Notes
	)

	SET @Err = @@Error

	SELECT @TaskID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TasksInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_TasksInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_TasksDelete]    Script Date: 7/24/2015 6:30:30 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TasksDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TasksDelete];
GO

CREATE PROCEDURE [proc_TasksDelete]
(
	@TaskID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Tasks]
	WHERE
		[TaskID] = @TaskID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TasksDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_TasksDelete Error on Creation'
GO
