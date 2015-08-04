
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
