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
<%@ include file="/html/parcheggi/init.jsp" %>
<%@ page import="javax.portlet.WindowState" %>
<%@page import="javax.portlet.PortletURL"%>
<%@page import="javax.portlet.RenderResponse"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setBundle basename="content.LanguageParcheggi"/>

<portlet:defineObjects />

<%
	PortletURL portletURL = renderResponse.createRenderURL();
	WindowState ws=portletURL.getWindowState();
%>

<script>
	
	if("<%=ws%>"=="<%=WindowState.MAXIMIZED%>"){
		var filerefjs=document.createElement('script');
		  filerefjs.setAttribute("type","text/javascript");
		  filerefjs.setAttribute("src", "<%=request.getContextPath()%>/js/ParcheggiPortletMaximized.js");
		document.getElementsByTagName("head")[0].appendChild(filerefjs);
		
		 var filerefcss=document.createElement("link");
		  filerefcss.setAttribute("rel", "stylesheet");
		  filerefcss.setAttribute("type", "text/css");
		  filerefcss.setAttribute("href", "<%=request.getContextPath()%>/css/maximized.css");
		document.getElementsByTagName("head")[0].appendChild(filerefcss);
		
	}else if("<%=ws%>"=="<%=WindowState.NORMAL%>"){
		var filerefjs=document.createElement('script');
		  filerefjs.setAttribute("type","text/javascript");
		  filerefjs.setAttribute("src", "<%=request.getContextPath()%>/js/ParcheggiPortlet.js");
		document.getElementsByTagName("head")[0].appendChild(filerefjs);	
	}
	
</script>

<div id="parcheggi">
	
	<span id="lblPosti"><fmt:message key="lblPosti"/></span><span id="lblParcheggi"><fmt:message key="lblParcheggi"/></span>
	<span id="ordinabtn"><fmt:message key="ordinabtn"/> <a href="#" id="ordinamento"><fmt:message key="ordnomeLbl"/></a></span>
	<div class='accordian' id='elenco_parcheggi'>
		<fmt:message key="elencoParcheggiLbl"/>
	</div>
</div>