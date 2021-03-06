
/*
'===============================================================================
'  Generated From - CSharp_dOOdads_BusinessEntity.vbgen
' 
'  ** IMPORTANT  ** 
'  How to Generate your stored procedures:
' 
'  SQL        = SQL_StoredProcs.vbgen
'  ACCESS     = Access_StoredProcs.vbgen
'  ORACLE     = Oracle_StoredProcs.vbgen
'  FIREBIRD   = FirebirdStoredProcs.vbgen
'  POSTGRESQL = PostgreSQL_StoredProcs.vbgen
'
'  The supporting base class SqlClientEntity is in the Architecture directory in "dOOdads".
'  
'  This object is 'abstract' which means you need to inherit from it to be able
'  to instantiate it.  This is very easilly done. You can override properties and
'  methods in your derived class, this allows you to regenerate this class at any
'  time and not worry about overwriting custom code. 
'
'  NEVER EDIT THIS FILE.
'
'  public class YourObject :  _YourObject
'  {
'
'  }
'
'===============================================================================
*/

// Generated by MyGeneration Version # (1.3.0.3)

using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Specialized;

using MyGeneration.dOOdads;

namespace DAL
{
	public abstract class _Evaluations : SqlClientEntity
	{
		public _Evaluations()
		{
			this.QuerySource = "Evaluations";
			this.MappingName = "Evaluations";

		}	

		//=================================================================
		//  public Overrides void AddNew()
		//=================================================================
		//
		//=================================================================
		public override void AddNew()
		{
			base.AddNew();
			
		}
		
		
		public override void FlushData()
		{
			this._whereClause = null;
			this._aggregateClause = null;
			base.FlushData();
		}
		
		//=================================================================
		//  	public Function LoadAll() As Boolean
		//=================================================================
		//  Loads all of the records in the database, and sets the currentRow to the first row
		//=================================================================
		public bool LoadAll() 
		{
			ListDictionary parameters = null;
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_EvaluationsLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int EvaluationID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.EvaluationID, EvaluationID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_EvaluationsLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter EvaluationID
			{
				get
				{
					return new SqlParameter("@EvaluationID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter EventID
			{
				get
				{
					return new SqlParameter("@EventID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter MemberID
			{
				get
				{
					return new SqlParameter("@MemberID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter Organizing
			{
				get
				{
					return new SqlParameter("@Organizing", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter Time
			{
				get
				{
					return new SqlParameter("@Time", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter Behaviour
			{
				get
				{
					return new SqlParameter("@Behaviour", SqlDbType.Int, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string EvaluationID = "EvaluationID";
            public const string EventID = "EventID";
            public const string MemberID = "MemberID";
            public const string Organizing = "Organizing";
            public const string Time = "Time";
            public const string Behaviour = "Behaviour";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[EvaluationID] = _Evaluations.PropertyNames.EvaluationID;
					ht[EventID] = _Evaluations.PropertyNames.EventID;
					ht[MemberID] = _Evaluations.PropertyNames.MemberID;
					ht[Organizing] = _Evaluations.PropertyNames.Organizing;
					ht[Time] = _Evaluations.PropertyNames.Time;
					ht[Behaviour] = _Evaluations.PropertyNames.Behaviour;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string EvaluationID = "EvaluationID";
            public const string EventID = "EventID";
            public const string MemberID = "MemberID";
            public const string Organizing = "Organizing";
            public const string Time = "Time";
            public const string Behaviour = "Behaviour";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[EvaluationID] = _Evaluations.ColumnNames.EvaluationID;
					ht[EventID] = _Evaluations.ColumnNames.EventID;
					ht[MemberID] = _Evaluations.ColumnNames.MemberID;
					ht[Organizing] = _Evaluations.ColumnNames.Organizing;
					ht[Time] = _Evaluations.ColumnNames.Time;
					ht[Behaviour] = _Evaluations.ColumnNames.Behaviour;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string EvaluationID = "s_EvaluationID";
            public const string EventID = "s_EventID";
            public const string MemberID = "s_MemberID";
            public const string Organizing = "s_Organizing";
            public const string Time = "s_Time";
            public const string Behaviour = "s_Behaviour";

		}
		#endregion		
		
		#region Properties
	
		public virtual int EvaluationID
	    {
			get
	        {
				return base.Getint(ColumnNames.EvaluationID);
			}
			set
	        {
				base.Setint(ColumnNames.EvaluationID, value);
			}
		}

		public virtual int EventID
	    {
			get
	        {
				return base.Getint(ColumnNames.EventID);
			}
			set
	        {
				base.Setint(ColumnNames.EventID, value);
			}
		}

		public virtual int MemberID
	    {
			get
	        {
				return base.Getint(ColumnNames.MemberID);
			}
			set
	        {
				base.Setint(ColumnNames.MemberID, value);
			}
		}

		public virtual int Organizing
	    {
			get
	        {
				return base.Getint(ColumnNames.Organizing);
			}
			set
	        {
				base.Setint(ColumnNames.Organizing, value);
			}
		}

		public virtual DateTime Time
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.Time);
			}
			set
	        {
				base.SetDateTime(ColumnNames.Time, value);
			}
		}

		public virtual int Behaviour
	    {
			get
	        {
				return base.Getint(ColumnNames.Behaviour);
			}
			set
	        {
				base.Setint(ColumnNames.Behaviour, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_EvaluationID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.EvaluationID) ? string.Empty : base.GetintAsString(ColumnNames.EvaluationID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.EvaluationID);
				else
					this.EvaluationID = base.SetintAsString(ColumnNames.EvaluationID, value);
			}
		}

		public virtual string s_EventID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.EventID) ? string.Empty : base.GetintAsString(ColumnNames.EventID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.EventID);
				else
					this.EventID = base.SetintAsString(ColumnNames.EventID, value);
			}
		}

		public virtual string s_MemberID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.MemberID) ? string.Empty : base.GetintAsString(ColumnNames.MemberID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.MemberID);
				else
					this.MemberID = base.SetintAsString(ColumnNames.MemberID, value);
			}
		}

		public virtual string s_Organizing
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Organizing) ? string.Empty : base.GetintAsString(ColumnNames.Organizing);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Organizing);
				else
					this.Organizing = base.SetintAsString(ColumnNames.Organizing, value);
			}
		}

		public virtual string s_Time
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Time) ? string.Empty : base.GetDateTimeAsString(ColumnNames.Time);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Time);
				else
					this.Time = base.SetDateTimeAsString(ColumnNames.Time, value);
			}
		}

		public virtual string s_Behaviour
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Behaviour) ? string.Empty : base.GetintAsString(ColumnNames.Behaviour);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Behaviour);
				else
					this.Behaviour = base.SetintAsString(ColumnNames.Behaviour, value);
			}
		}


		#endregion		
	
		#region Where Clause
		public class WhereClause
		{
			public WhereClause(BusinessEntity entity)
			{
				this._entity = entity;
			}
			
			public TearOffWhereParameter TearOff
			{
				get
				{
					if(_tearOff == null)
					{
						_tearOff = new TearOffWhereParameter(this);
					}

					return _tearOff;
				}
			}

			#region WhereParameter TearOff's
			public class TearOffWhereParameter
			{
				public TearOffWhereParameter(WhereClause clause)
				{
					this._clause = clause;
				}
				
				
				public WhereParameter EvaluationID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.EvaluationID, Parameters.EvaluationID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter EventID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.EventID, Parameters.EventID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter MemberID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.MemberID, Parameters.MemberID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Organizing
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Organizing, Parameters.Organizing);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Time
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Time, Parameters.Time);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Behaviour
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Behaviour, Parameters.Behaviour);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter EvaluationID
		    {
				get
		        {
					if(_EvaluationID_W == null)
	        	    {
						_EvaluationID_W = TearOff.EvaluationID;
					}
					return _EvaluationID_W;
				}
			}

			public WhereParameter EventID
		    {
				get
		        {
					if(_EventID_W == null)
	        	    {
						_EventID_W = TearOff.EventID;
					}
					return _EventID_W;
				}
			}

			public WhereParameter MemberID
		    {
				get
		        {
					if(_MemberID_W == null)
	        	    {
						_MemberID_W = TearOff.MemberID;
					}
					return _MemberID_W;
				}
			}

			public WhereParameter Organizing
		    {
				get
		        {
					if(_Organizing_W == null)
	        	    {
						_Organizing_W = TearOff.Organizing;
					}
					return _Organizing_W;
				}
			}

			public WhereParameter Time
		    {
				get
		        {
					if(_Time_W == null)
	        	    {
						_Time_W = TearOff.Time;
					}
					return _Time_W;
				}
			}

			public WhereParameter Behaviour
		    {
				get
		        {
					if(_Behaviour_W == null)
	        	    {
						_Behaviour_W = TearOff.Behaviour;
					}
					return _Behaviour_W;
				}
			}

			private WhereParameter _EvaluationID_W = null;
			private WhereParameter _EventID_W = null;
			private WhereParameter _MemberID_W = null;
			private WhereParameter _Organizing_W = null;
			private WhereParameter _Time_W = null;
			private WhereParameter _Behaviour_W = null;

			public void WhereClauseReset()
			{
				_EvaluationID_W = null;
				_EventID_W = null;
				_MemberID_W = null;
				_Organizing_W = null;
				_Time_W = null;
				_Behaviour_W = null;

				this._entity.Query.FlushWhereParameters();

			}
	
			private BusinessEntity _entity;
			private TearOffWhereParameter _tearOff;
			
		}
	
		public WhereClause Where
		{
			get
			{
				if(_whereClause == null)
				{
					_whereClause = new WhereClause(this);
				}
		
				return _whereClause;
			}
		}
		
		private WhereClause _whereClause = null;	
		#endregion
	
		#region Aggregate Clause
		public class AggregateClause
		{
			public AggregateClause(BusinessEntity entity)
			{
				this._entity = entity;
			}
			
			public TearOffAggregateParameter TearOff
			{
				get
				{
					if(_tearOff == null)
					{
						_tearOff = new TearOffAggregateParameter(this);
					}

					return _tearOff;
				}
			}

			#region AggregateParameter TearOff's
			public class TearOffAggregateParameter
			{
				public TearOffAggregateParameter(AggregateClause clause)
				{
					this._clause = clause;
				}
				
				
				public AggregateParameter EvaluationID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.EvaluationID, Parameters.EvaluationID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter EventID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.EventID, Parameters.EventID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter MemberID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.MemberID, Parameters.MemberID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Organizing
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Organizing, Parameters.Organizing);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Time
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Time, Parameters.Time);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Behaviour
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Behaviour, Parameters.Behaviour);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter EvaluationID
		    {
				get
		        {
					if(_EvaluationID_W == null)
	        	    {
						_EvaluationID_W = TearOff.EvaluationID;
					}
					return _EvaluationID_W;
				}
			}

			public AggregateParameter EventID
		    {
				get
		        {
					if(_EventID_W == null)
	        	    {
						_EventID_W = TearOff.EventID;
					}
					return _EventID_W;
				}
			}

			public AggregateParameter MemberID
		    {
				get
		        {
					if(_MemberID_W == null)
	        	    {
						_MemberID_W = TearOff.MemberID;
					}
					return _MemberID_W;
				}
			}

			public AggregateParameter Organizing
		    {
				get
		        {
					if(_Organizing_W == null)
	        	    {
						_Organizing_W = TearOff.Organizing;
					}
					return _Organizing_W;
				}
			}

			public AggregateParameter Time
		    {
				get
		        {
					if(_Time_W == null)
	        	    {
						_Time_W = TearOff.Time;
					}
					return _Time_W;
				}
			}

			public AggregateParameter Behaviour
		    {
				get
		        {
					if(_Behaviour_W == null)
	        	    {
						_Behaviour_W = TearOff.Behaviour;
					}
					return _Behaviour_W;
				}
			}

			private AggregateParameter _EvaluationID_W = null;
			private AggregateParameter _EventID_W = null;
			private AggregateParameter _MemberID_W = null;
			private AggregateParameter _Organizing_W = null;
			private AggregateParameter _Time_W = null;
			private AggregateParameter _Behaviour_W = null;

			public void AggregateClauseReset()
			{
				_EvaluationID_W = null;
				_EventID_W = null;
				_MemberID_W = null;
				_Organizing_W = null;
				_Time_W = null;
				_Behaviour_W = null;

				this._entity.Query.FlushAggregateParameters();

			}
	
			private BusinessEntity _entity;
			private TearOffAggregateParameter _tearOff;
			
		}
	
		public AggregateClause Aggregate
		{
			get
			{
				if(_aggregateClause == null)
				{
					_aggregateClause = new AggregateClause(this);
				}
		
				return _aggregateClause;
			}
		}
		
		private AggregateClause _aggregateClause = null;	
		#endregion
	
		protected override IDbCommand GetInsertCommand() 
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_EvaluationsInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.EvaluationID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_EvaluationsUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_EvaluationsDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.EvaluationID);
			p.SourceColumn = ColumnNames.EvaluationID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.EvaluationID);
			p.SourceColumn = ColumnNames.EvaluationID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.EventID);
			p.SourceColumn = ColumnNames.EventID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.MemberID);
			p.SourceColumn = ColumnNames.MemberID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Organizing);
			p.SourceColumn = ColumnNames.Organizing;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Time);
			p.SourceColumn = ColumnNames.Time;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Behaviour);
			p.SourceColumn = ColumnNames.Behaviour;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
