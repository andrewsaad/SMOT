
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
