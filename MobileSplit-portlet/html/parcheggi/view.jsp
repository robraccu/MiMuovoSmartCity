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
<%@ include file="/html/parcheggi/initparcheggi.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<portlet:defineObjects />

<fmt:setBundle basename="content.LanguageMobile"/>

<%String friendly_url=layout.getGroup().getFriendlyURL();

%>
<script>
var friendly_url_js="<%=friendly_url%>"
</script>
<!-------------- Start of parcheggi page ------------------------------------------------------>
	<div id="parcheggi_page" data-role="page" data-theme="a">

		<div data-role="header"  >
			<div data-role="controlgroup" data-type="horizontal" id="header_elements" class="ui-btn-left">
			<a href="..<%=friendly_url%><fmt:message key='homepage'/>" data-role="button" data-direction="reverse" id="btnToHome" >
       	 		<img src=<fmt:message key="imagesPath"/><fmt:message key="home"/>></img>
			</a> 
			</div>
			<h1><fmt:message key="parcheggi"/></h1>
			<div class="ui-btn-right">
			<!-- preparo il menu per selezionare l'ordinamento (alfabetico o per disponibilità) dei parcheggi -->		
			<select name="selectsort" id="selectsort" data-native-menu="false">
   				<option value="disponibilit"><fmt:message key='orddispLbl'/></option>
   				<option value="nome"><fmt:message key='ordnomeLbl'/></option>
			</select> 
			</div> 
		</div>
		
			
		<div data-role="content" >    
			
			  
			
			<!-- preparo l'"accordion" che contiene la lista dei parcheggi con i relativi dettagli -->		
			<div data-role="collapsible-set" id="elenco_parcheggi"></div>
		<div id="dummy" style="height:20px;"></div>
		</div>
		<div class='footer-wrapper'>
    	<div data-role="footer"  data-theme="a"   >
			
		</div><!-- /footer -->
		</div>
		
	</div><!-- /page -->

