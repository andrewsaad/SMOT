
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
	public abstract class _EventImage : SqlClientEntity
	{
		public _EventImage()
		{
			this.QuerySource = "EventImage";
			this.MappingName = "EventImage";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_EventImageLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int EventImageID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.EventImageID, EventImageID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_EventImageLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter EventImageID
			{
				get
				{
					return new SqlParameter("@EventImageID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter EventID
			{
				get
				{
					return new SqlParameter("@EventID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter ImagePath
			{
				get
				{
					return new SqlParameter("@ImagePath", SqlDbType.NVarChar, 500);
				}
			}
			
			public static SqlParameter Description
			{
				get
				{
					return new SqlParameter("@Description", SqlDbType.NVarChar, 500);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string EventImageID = "EventImageID";
            public const string EventID = "EventID";
            public const string ImagePath = "ImagePath";
            public const string Description = "Description";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[EventImageID] = _EventImage.PropertyNames.EventImageID;
					ht[EventID] = _EventImage.PropertyNames.EventID;
					ht[ImagePath] = _EventImage.PropertyNames.ImagePath;
					ht[Description] = _EventImage.PropertyNames.Description;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string EventImageID = "EventImageID";
            public const string EventID = "EventID";
            public const string ImagePath = "ImagePath";
            public const string Description = "Description";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[EventImageID] = _EventImage.ColumnNames.EventImageID;
					ht[EventID] = _EventImage.ColumnNames.EventID;
					ht[ImagePath] = _EventImage.ColumnNames.ImagePath;
					ht[Description] = _EventImage.ColumnNames.Description;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string EventImageID = "s_EventImageID";
            public const string EventID = "s_EventID";
            public const string ImagePath = "s_ImagePath";
            public const string Description = "s_Description";

		}
		#endregion		
		
		#region Properties
	
		public virtual int EventImageID
	    {
			get
	        {
				return base.Getint(ColumnNames.EventImageID);
			}
			set
	        {
				base.Setint(ColumnNames.EventImageID, value);
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

		public virtual string ImagePath
	    {
			get
	        {
				return base.Getstring(ColumnNames.ImagePath);
			}
			set
	        {
				base.Setstring(ColumnNames.ImagePath, value);
			}
		}

		public virtual string Description
	    {
			get
	        {
				return base.Getstring(ColumnNames.Description);
			}
			set
	        {
				base.Setstring(ColumnNames.Description, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_EventImageID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.EventImageID) ? string.Empty : base.GetintAsString(ColumnNames.EventImageID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.EventImageID);
				else
					this.EventImageID = base.SetintAsString(ColumnNames.EventImageID, value);
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

		public virtual string s_ImagePath
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ImagePath) ? string.Empty : base.GetstringAsString(ColumnNames.ImagePath);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ImagePath);
				else
					this.ImagePath = base.SetstringAsString(ColumnNames.ImagePath, value);
			}
		}

		public virtual string s_Description
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Description) ? string.Empty : base.GetstringAsString(ColumnNames.Description);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Description);
				else
					this.Description = base.SetstringAsString(ColumnNames.Description, value);
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
				
				
				public WhereParameter EventImageID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.EventImageID, Parameters.EventImageID);
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

				public WhereParameter ImagePath
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ImagePath, Parameters.ImagePath);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Description
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Description, Parameters.Description);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter EventImageID
		    {
				get
		        {
					if(_EventImageID_W == null)
	        	    {
						_EventImageID_W = TearOff.EventImageID;
					}
					return _EventImageID_W;
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

			public WhereParameter ImagePath
		    {
				get
		        {
					if(_ImagePath_W == null)
	        	    {
						_ImagePath_W = TearOff.ImagePath;
					}
					return _ImagePath_W;
				}
			}

			public WhereParameter Description
		    {
				get
		        {
					if(_Description_W == null)
	        	    {
						_Description_W = TearOff.Description;
					}
					return _Description_W;
				}
			}

			private WhereParameter _EventImageID_W = null;
			private WhereParameter _EventID_W = null;
			private WhereParameter _ImagePath_W = null;
			private WhereParameter _Description_W = null;

			public void WhereClauseReset()
			{
				_EventImageID_W = null;
				_EventID_W = null;
				_ImagePath_W = null;
				_Description_W = null;

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
				
				
				public AggregateParameter EventImageID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.EventImageID, Parameters.EventImageID);
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

				public AggregateParameter ImagePath
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ImagePath, Parameters.ImagePath);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Description
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Description, Parameters.Description);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter EventImageID
		    {
				get
		        {
					if(_EventImageID_W == null)
	        	    {
						_EventImageID_W = TearOff.EventImageID;
					}
					return _EventImageID_W;
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

			public AggregateParameter ImagePath
		    {
				get
		        {
					if(_ImagePath_W == null)
	        	    {
						_ImagePath_W = TearOff.ImagePath;
					}
					return _ImagePath_W;
				}
			}

			public AggregateParameter Description
		    {
				get
		        {
					if(_Description_W == null)
	        	    {
						_Description_W = TearOff.Description;
					}
					return _Description_W;
				}
			}

			private AggregateParameter _EventImageID_W = null;
			private AggregateParameter _EventID_W = null;
			private AggregateParameter _ImagePath_W = null;
			private AggregateParameter _Description_W = null;

			public void AggregateClauseReset()
			{
				_EventImageID_W = null;
				_EventID_W = null;
				_ImagePath_W = null;
				_Description_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_EventImageInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.EventImageID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_EventImageUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_EventImageDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.EventImageID);
			p.SourceColumn = ColumnNames.EventImageID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.EventImageID);
			p.SourceColumn = ColumnNames.EventImageID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.EventID);
			p.SourceColumn = ColumnNames.EventID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ImagePath);
			p.SourceColumn = ColumnNames.ImagePath;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Description);
			p.SourceColumn = ColumnNames.Description;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}