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
<%@ include file="/html/eventi/initEventi.jsp" %>
<%@ page import="javax.portlet.WindowState" %>
<%@page import="javax.portlet.PortletURL"%>
<%@page import="javax.portlet.RenderResponse"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<portlet:defineObjects />
<fmt:setBundle basename="content.LanguageEventi"/>
<%
	PortletURL portletURL = renderResponse.createRenderURL();
	WindowState ws=portletURL.getWindowState();
	
%>

<script>
	var stateWin="";
	
	
		if('<%=ws%>'=='<%=WindowState.MAXIMIZED%>'){
		stateWin='<%=ws%>';
		 var filerefcss=document.createElement("link");
		  filerefcss.setAttribute("rel", "stylesheet");
		  filerefcss.setAttribute("type", "text/css");
		  filerefcss.setAttribute("href", "<%=request.getContextPath()%>/css/maximized.css");
		document.getElementsByTagName("head")[0].appendChild(filerefcss);	
		
	}
		var filerefjs=document.createElement('script');
		  filerefjs.setAttribute("type","text/javascript");
		  filerefjs.setAttribute("src", "<%=request.getContextPath()%>/js/EventiPortlet.js");
		document.getElementsByTagName("head")[0].appendChild(filerefjs);
		
		
</script>
  	<!-- Start of first page -->
         	<div id="tabella_eventi">
					<div id="captionRow">
						<div class="caption" id="image">
						<b> # </b>  
						</div>
						 <div class="caption" id="evento">
						 	<b><a href="javascript:OrderByType(event_rows);" id="eventcol"><fmt:message key="eventcolLbl"/> &uArr;</a> </b>  
                   		 </div>
                   		 <div class="caption" id="messaggio">
						 	<b><a href="javascript:OrderByMessage(event_rows);" id="messagecol"><fmt:message key="messagecolLbl"/></a> </b>  
                   		 </div>
 	                     <div class="caption" id="data">
						 	<b><a href="javascript:OrderByStartDate(event_rows);" id="startdatacol"><fmt:message key="startdatacolLbl"/></a></b>  
                   		 </div> 
                   		 <div class="caption" id="data">
						 	<b><a href="javascript:OrderByEndDate(event_rows);" id="enddatacol"><fmt:message key="enddatacolLbl"/></a></b>  
                   		 </div> 
 					</div>
 					<div id="loading_eventi"><fmt:message key="loadeventiLbl"/></div>
         	</div>
