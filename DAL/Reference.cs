
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
	public abstract class _Reference : SqlClientEntity
	{
		public _Reference()
		{
			this.QuerySource = "Reference";
			this.MappingName = "Reference";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ReferenceLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int ReferenceID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.ReferenceID, ReferenceID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ReferenceLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter ReferenceID
			{
				get
				{
					return new SqlParameter("@ReferenceID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter LogoPath
			{
				get
				{
					return new SqlParameter("@LogoPath", SqlDbType.NVarChar, 500);
				}
			}
			
			public static SqlParameter LogoLink
			{
				get
				{
					return new SqlParameter("@LogoLink", SqlDbType.NVarChar, 500);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string ReferenceID = "ReferenceID";
            public const string LogoPath = "LogoPath";
            public const string LogoLink = "LogoLink";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ReferenceID] = _Reference.PropertyNames.ReferenceID;
					ht[LogoPath] = _Reference.PropertyNames.LogoPath;
					ht[LogoLink] = _Reference.PropertyNames.LogoLink;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string ReferenceID = "ReferenceID";
            public const string LogoPath = "LogoPath";
            public const string LogoLink = "LogoLink";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ReferenceID] = _Reference.ColumnNames.ReferenceID;
					ht[LogoPath] = _Reference.ColumnNames.LogoPath;
					ht[LogoLink] = _Reference.ColumnNames.LogoLink;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string ReferenceID = "s_ReferenceID";
            public const string LogoPath = "s_LogoPath";
            public const string LogoLink = "s_LogoLink";

		}
		#endregion		
		
		#region Properties
	
		public virtual int ReferenceID
	    {
			get
	        {
				return base.Getint(ColumnNames.ReferenceID);
			}
			set
	        {
				base.Setint(ColumnNames.ReferenceID, value);
			}
		}

		public virtual string LogoPath
	    {
			get
	        {
				return base.Getstring(ColumnNames.LogoPath);
			}
			set
	        {
				base.Setstring(ColumnNames.LogoPath, value);
			}
		}

		public virtual string LogoLink
	    {
			get
	        {
				return base.Getstring(ColumnNames.LogoLink);
			}
			set
	        {
				base.Setstring(ColumnNames.LogoLink, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_ReferenceID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ReferenceID) ? string.Empty : base.GetintAsString(ColumnNames.ReferenceID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ReferenceID);
				else
					this.ReferenceID = base.SetintAsString(ColumnNames.ReferenceID, value);
			}
		}

		public virtual string s_LogoPath
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.LogoPath) ? string.Empty : base.GetstringAsString(ColumnNames.LogoPath);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.LogoPath);
				else
					this.LogoPath = base.SetstringAsString(ColumnNames.LogoPath, value);
			}
		}

		public virtual string s_LogoLink
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.LogoLink) ? string.Empty : base.GetstringAsString(ColumnNames.LogoLink);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.LogoLink);
				else
					this.LogoLink = base.SetstringAsString(ColumnNames.LogoLink, value);
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
				
				
				public WhereParameter ReferenceID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ReferenceID, Parameters.ReferenceID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter LogoPath
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.LogoPath, Parameters.LogoPath);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter LogoLink
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.LogoLink, Parameters.LogoLink);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter ReferenceID
		    {
				get
		        {
					if(_ReferenceID_W == null)
	        	    {
						_ReferenceID_W = TearOff.ReferenceID;
					}
					return _ReferenceID_W;
				}
			}

			public WhereParameter LogoPath
		    {
				get
		        {
					if(_LogoPath_W == null)
	        	    {
						_LogoPath_W = TearOff.LogoPath;
					}
					return _LogoPath_W;
				}
			}

			public WhereParameter LogoLink
		    {
				get
		        {
					if(_LogoLink_W == null)
	        	    {
						_LogoLink_W = TearOff.LogoLink;
					}
					return _LogoLink_W;
				}
			}

			private WhereParameter _ReferenceID_W = null;
			private WhereParameter _LogoPath_W = null;
			private WhereParameter _LogoLink_W = null;

			public void WhereClauseReset()
			{
				_ReferenceID_W = null;
				_LogoPath_W = null;
				_LogoLink_W = null;

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
				
				
				public AggregateParameter ReferenceID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ReferenceID, Parameters.ReferenceID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter LogoPath
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.LogoPath, Parameters.LogoPath);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter LogoLink
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.LogoLink, Parameters.LogoLink);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter ReferenceID
		    {
				get
		        {
					if(_ReferenceID_W == null)
	        	    {
						_ReferenceID_W = TearOff.ReferenceID;
					}
					return _ReferenceID_W;
				}
			}

			public AggregateParameter LogoPath
		    {
				get
		        {
					if(_LogoPath_W == null)
	        	    {
						_LogoPath_W = TearOff.LogoPath;
					}
					return _LogoPath_W;
				}
			}

			public AggregateParameter LogoLink
		    {
				get
		        {
					if(_LogoLink_W == null)
	        	    {
						_LogoLink_W = TearOff.LogoLink;
					}
					return _LogoLink_W;
				}
			}

			private AggregateParameter _ReferenceID_W = null;
			private AggregateParameter _LogoPath_W = null;
			private AggregateParameter _LogoLink_W = null;

			public void AggregateClauseReset()
			{
				_ReferenceID_W = null;
				_LogoPath_W = null;
				_LogoLink_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ReferenceInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.ReferenceID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ReferenceUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ReferenceDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.ReferenceID);
			p.SourceColumn = ColumnNames.ReferenceID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.ReferenceID);
			p.SourceColumn = ColumnNames.ReferenceID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.LogoPath);
			p.SourceColumn = ColumnNames.LogoPath;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.LogoLink);
			p.SourceColumn = ColumnNames.LogoLink;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
