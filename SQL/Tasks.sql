
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
