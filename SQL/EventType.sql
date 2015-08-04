
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
