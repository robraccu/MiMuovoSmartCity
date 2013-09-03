
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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<portlet:defineObjects />

<fmt:setBundle basename="content.LanguageMobile"/>
<%

/*Verifica utente loggato*/
String friendly_url=layout.getGroup().getFriendlyURL();

%>
<script>
var friendly_url_js="<%=friendly_url%>";
</script>
	<!-- Start of home_page -->
   	<div id="home_page" data-role="page" data-theme="a" data-back-btn="false">    
    <!--	<div data-role="header" data-theme="a" data-position="inline"   >
    	<h1><fmt:message key="homeLbl"/></h1>
    	</div>-->
    	<!-- /header -->
    	<div data-role="content" id="home_content" >   
    		<fieldset class="ui-grid-b" id="page_icon_group">
				<div class="ui-block-a" ><div class="iconHome"><a href="..<%=friendly_url%><fmt:message key="buspage"/>" rel="external" id="mappebus"><img src=<fmt:message key="imagesPath"/><fmt:message key="fermatebus_home"/> /></a></div>
					<label class="home_icon_label" for="mappebus"><fmt:message key="busLbl"/></label>
				</div>
				<div class="ui-block-b" ><div class="iconHome"><a href="..<%=friendly_url%><fmt:message key="mappapage"/>" rel="external" id="mappa"><img src=<fmt:message key="imagesPath"/><fmt:message key="mappa_home"/> /></a></div>
					<label class="home_icon_label" for="mappa"><fmt:message key="mappaLbl"/></label>
				</div>
				<div class="ui-block-c"><div class="iconHome"><a href="..<%=friendly_url%><fmt:message key="parcheggipage"/>" ><img src=<fmt:message key="imagesPath"/><fmt:message key="parcheggi_home"/> id="parcheggi"></a></div>
					<label class="home_icon_label" for="parcheggi"><fmt:message key="parcheggi"/></label>
				</div>
	  		</fieldset> 
	  		<fieldset class="ui-grid-b" id="page_icon_group">
	  			<div class="ui-block-a"><div class="iconHome"><a href="..<%=friendly_url%>/eventi"><img src=<fmt:message key="imagesPath"/><fmt:message key="eventi_home"/>  id="eventi"></a></div>
					<label class="home_icon_label" for="eventi"><fmt:message key="problCircolazione"/></label>
				</div>	  			
	  			<div class="ui-block-b" ><div class="iconHome"><a href="..<%=friendly_url%><fmt:message key="indicazionipage"/>" rel="external" id="indicazioni"><img src=<fmt:message key="imagesPath"/><fmt:message key="itinerari_home"/> /></a></div>
					<label class="home_icon_label" for="indicazioni"><fmt:message key="indicazionititle"/></label>
				</div>				
				<div class="ui-block-c" ><div class="iconHome"><a href="..<%=friendly_url%><fmt:message key="ciclopedpubpage"/>" rel="external" id="pisteciclabili"><img src=<fmt:message key="imagesPath"/><fmt:message key="pisteciclabili_home"/> /></a></div>
					<label class="home_icon_label" for="pisteciclabili"><fmt:message key="pisteCiclabili"/></label>
				</div>				
	  		</fieldset>
	  		<fieldset class="ui-grid-b" id="page_icon_group"> 			
				<div class="ui-block-a" ><div class="iconHome"><a href="..<%=friendly_url%><fmt:message key="accessibilitypage"/>" rel="external" id="disabili"><img src=<fmt:message key="imagesPath"/><fmt:message key="disabili_home"/> /></a></div>
					<label class="home_icon_label" for="disabili"><fmt:message key="luoghiAccessibili"/></label>
				</div>
				<div class="ui-block-b" ><div class="iconHome"><a href="..<%=friendly_url%><fmt:message key="stradepage"/>" rel="external" id="stradepulite"><img src=<fmt:message key="imagesPath"/><fmt:message key="stradepulite_home"/> /></a></div>
					<label class="home_icon_label" for="stradepulite"><fmt:message key="stradeLbl"/></label>				
				</div>
				<div class="ui-block-c" ><div class="iconHome"><a href="..<%=friendly_url%><fmt:message key="informazionipage"/>" rel="external" id="informazioni"><img src=<fmt:message key="imagesPath"/><fmt:message key="informazioni_home"/> /></a></div>
					<label class="home_icon_label" for="informazioni"><fmt:message key="informazioniLbl"/></label>			
				</div>
	  		</fieldset>
	  		<fieldset class="ui-grid-b" id="page_icon_group">
	  		<div class="ui-block-a" ></div>				
	  		</fieldset>
	  		<div id="cisium_logo">
	  			<img src=<fmt:message key="imagesPath"/><fmt:message key="cisium-logo"/>>
	  		</div>
	  	<span>
    	<a id="linktoDesktop" href="http://smart.comune.bologna.it/gioca/" target="_blank"><fmt:message key="linktoOpinione"/></a>
    	</span>
    	<span style="float:right;">
    	<a id="linktoDesktop" href="..<%=friendly_url%>/home-desktop" ><fmt:message key="linktoDesktop"/></a>
    	</span>
    	</div><!-- /content -->
    	
    	<div class='footer-wrapper'>
    	<div data-role="footer"  data-theme="a">
    	   </div>
			
		</div><!-- /footer -->
		
	</div><!-- /page -->
<!-- Start of informazioni_page -->
   	<div id="informazioni_page" data-role="page" data-theme="a" data-back-btn="false">    
    	<div data-role="header" data-theme="a" data-position="inline"   >
    	<div data-role="controlgroup" data-type="horizontal" id="header_elements" class="ui-btn-left">
       	 	<a href="..<%=friendly_url%><fmt:message key='homepage'/>" data-role="button" data-direction="reverse" id="btnToHome" >
       	 		<img src=<fmt:message key="imagesPath"/><fmt:message key="home"/>></img>
			</a> 
			
			</div>
    	<h1><fmt:message key="informazioniLbl"/></h1>
    	</div><!-- /header -->
    	<div data-role="content" id="informazioni_content" >   
    	<div style="text-align:center;"><fmt:message key="intestazione"/></div>
    	<div id="img_partners">
    	<p><img style="width:200px;" src=<fmt:message key="imagesPartnerPath"/><fmt:message key="logo-regione-emilia-romagna"/>></img></p>
    	<p><img style="width:150px;" src=<fmt:message key="imagesPartnerPath"/><fmt:message key="logo-comune-bologna"/>></img></p>
    	<p><img style="width:150px;" src=<fmt:message key="imagesPartnerPath"/><fmt:message key="logo-engineering"/>></img></p>
       	</div>	
       	<div style="text-align:center;"><fmt:message key="collaborazione"/></div>
       	<div id="img_collaborator">
    	<p><img style="width:100px;" src=<fmt:message key="imagesPartnerPath"/><fmt:message key="logo-tper"/>></img></p>
       	</div>
       	<div style="text-align:center;"><fmt:message key="progetto"/></div>
       	<div id="img_project">
    	<img style="width:150px; margin-right:20px;" src=<fmt:message key="imagesPartnerPath"/><fmt:message key="logo-smartip"/>></img>
    	<img style="width:60px;" src=<fmt:message key="imagesPartnerPath"/><fmt:message key="logo-europa"/>></img>
       	</div>
 
    	</div><!-- /content -->
    	
    	<div class='footer-wrapper'>
    	<div data-role="footer"  data-theme="a">
    	   </div>
			
		</div><!-- /footer -->
		
	</div><!-- /page -->
	