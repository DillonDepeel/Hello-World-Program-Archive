<%@ Page Language="C#" %>
<%@ Assembly Name="Hello" %>
<%@ Import Namespace="Hello" %>

<html>
<head>
    <script runat="server">
     String name;
     String greeting;
     void name_change(Object Source, EventArgs E)
     {
         HelloService helloService = new HelloService();
         name = Name.Value;
         greeting = helloService.ReturnGreeting(name);
     }
    </script>
</head>

<body style="font: 10pt verdana">
<h3>MyHello - Hello.HelloMethod </h3>

<form runat="server">
    <font face="Verdana"><b>Please enter your name: </b>
    <INPUT id="Name" VALUE="" TYPE="TEXT" runat="server" OnServerChange = "name_change">
    <p>
    </font>
</form>

<h3>Greeting : <%=greeting%></h3>

<h4><SOAP XML Request Message></h4>
