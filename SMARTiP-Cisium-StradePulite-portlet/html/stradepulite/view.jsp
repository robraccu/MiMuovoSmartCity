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

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page import="javax.portlet.WindowState" %>
<%@page import="javax.portlet.PortletURL"%>
<%@page import="javax.portlet.RenderResponse"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<portlet:defineObjects />
<fmt:setBundle basename="content.LanguageStradePulite"/>

<%
	PortletURL portletURL = renderResponse.createRenderURL();
	WindowState ws=portletURL.getWindowState();
	
%>
<script>
var stateWin="";


if('<%=ws%>'=='<%=WindowState.MAXIMIZED%>'){
stateWin='<%=ws%>';

$("#content_strade").css("height","700px");
$("#iframe_strade").css("height","700px");
}else{
	stateWin='<%=ws%>';

	
	$("#content_strade").css("height","250px");
}
</script>
<div id="content_strade">
	<iframe src="http://www.gruppohera.it/statico/bologna/db_pulizia_strade.php" id="iframe_strade"></iframe>
</div>
<div id="offerto">
	<fmt:message key="servizio"/> <a href="http://www.gruppohera.it/" target="_blank"><fmt:message key="gruppo"/> </a>
</div>