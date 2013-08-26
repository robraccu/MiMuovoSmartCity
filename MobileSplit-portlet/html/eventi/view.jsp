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
<%@ include file="/html/homeguest/init.jsp" %>
<%@ include file="/html/eventi/initeventi.jsp" %>
<%@ page import="java.util.ResourceBundle" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<portlet:defineObjects />

<fmt:setBundle basename="content.LanguageMobile"/>

<%
 
String friendly_url=layout.getGroup().getFriendlyURL();
%>
<script>
var friendly_url_js="<%=friendly_url%>"
</script>
<!-------------- Start of eventi page ------------------------------------------------------>
	<div id="eventi_page" data-role="page" data-theme="a">

		<div data-role="header"  >
			<div data-role="controlgroup" data-type="horizontal" id="header_elements" class="ui-btn-left">
       	 	<a href="..<%=friendly_url%><fmt:message key='homepage'/>" data-role="button" data-direction="reverse" id="btnToHome" >
       	 		<img src=<fmt:message key="imagesPath"/><fmt:message key="home"/>></img>
			</a> 
			</div> 
			<h1 id="title_events"><fmt:message key="problCircolazione"/></h1>
			<div class="ui-btn-right">
				<select  name="select_layer" id="select_ord"  data-native-menu="false"  data-mini="true">
					
					<option value="tipo" id="type_check" selected="selected"><fmt:message key="tipoLbl"/></option>
					<option value="position" id="position_check"><fmt:message key="vicinoLbl"/></option>
				</select>
			</div>
    			
			
		</div>
		 
			
		<div data-role="content" >         
			
			<ul data-role="listview" id="tabella_eventi" >
				
			</ul>
			<div id="dummy" style="height:30px;"></div>
		
		
		</div>	
		<div class='footer-wrapper'>
    	<div data-role="footer"  data-theme="a">
			
		</div><!-- /footer -->
		</div>
	</div><!-- /page -->
	
