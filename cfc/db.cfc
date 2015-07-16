<cfcomponent hint="Database Functionality" output="false">
	<cfset this.dsn = "expense_db" />
	
	//Constructor
	<cffunction name="init" access="public" returntype="void">
		//Use localStorage flag to check if database is already created
		<cfscript>
			var dbCreated = localStorage.dbCreated;
			if (!isDefined("dbCreated"))
				{ localStorage.dbCreated = false; }
		</cfscript>

				<cfscript>
					tableName = 'test';
					columns = 
						[
							{'name':'name','type':'text'},
							{'name':'id','type':'integer primary key'}
						];
					createTable(tableName, columns);
					localStorage.dbCreated = true;
				</cfscript>



	</cffunction>

	<cffunction name="createTable" access="public" returntype="void">
		<cfargument name="tableName" type="string" required="true">
		<cfargument name="columns" type="array" required="false">

		<cfset arrayRow = 1 />
		<cfset arrayLength = arrayLen(columns) />

		<cfquery datasource="#this.dsn#">
			create table if not exists #tableName# (
				<cfloop array="#columns#" index="col">
					#col.name# #col.type#
					<cfif arrayRow lt arrayLength>
						,
					</cfif>
				</cfloop>
			);
		</cfquery>
	</cffunction>
</cfcomponent>