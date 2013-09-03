<%--
/**
* Copyright (c) 2000-2010 Liferay, Inc. All rights reserved.
*
* This library is free software; you can redistribute it and/or modify it under
* the terms of the GNU Lesser General Public License as published by the Free
* Software Foundation; either version 2.1 of the License, or (at your option)
* any later version.
*
* This library is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
* details.
*/
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.rmi.RemoteException"%>
<%@page import="it.tper.solweb.tperit.webservices.hellobus_asmx.HelloBusSoapProxy"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<%
HelloBusSoapProxy sampleHelloBusSoapProxyid= new HelloBusSoapProxy();
java.lang.String result =null;
String fermatareq=request.getParameter("fermata_r");
String lineareq=request.getParameter("linea_r");
String orareq=request.getParameter("ora_r");
int metodoreq=Integer.parseInt(request.getParameter("metodo_r"));
try {
	switch(metodoreq){
	case 1:
		
	result = sampleHelloBusSoapProxyid.queryHellobus(fermatareq,lineareq , orareq);
	System.out.println(result);
	out.print(result.split("TperHellobus:")[1]);
	break;
	case 2:
		result = sampleHelloBusSoapProxyid.queryResale(fermatareq);
		out.print(result);
		break;
	}
} catch (RemoteException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} 
    
%>
