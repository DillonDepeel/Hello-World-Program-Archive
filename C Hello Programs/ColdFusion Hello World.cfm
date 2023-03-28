<cfinvoke component="HelloWorld" method="setValue">
	<cfinvokeargument name="value" value="4" />
</cfinvoke>

<cfinvoke component="HelloWorld" method="getValue" returnvariable="result" />

<cfoutput>#result#</cfoutput>
