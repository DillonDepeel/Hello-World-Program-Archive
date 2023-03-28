<cfcomponent displayname="HelloWorld"
	hint="This component is a more advanced Hello World example.">
	
	<cffunction name="sayHello"
		returntype="string"
		access="remote"
		output="false"
		hint="This method says hello to a something a specific number of times.">
		
		<cfargument name="thing"
			default="World"
			hint="What to say hello to."
			required="no"
			type="string" />
		<cfargument name="times"
			default="1"
			hint="The number of times to say hello."
			required="no"
			type="string" />
		
		<!--- declare local variables --->
		<cfset var string = "" />
		<cfset var x = 0 />
		
		<!--- loop the specified number of times --->
		<cfloop from="1" to="#arguments.times#" index="x">
			<cfset string = "#string#Hello #arguments.thing#!<br>" />
		</cfloop>
		
		<!--- return the generated string --->
		<cfreturn string />
	</cffunction>
	
</cfcomponent>
