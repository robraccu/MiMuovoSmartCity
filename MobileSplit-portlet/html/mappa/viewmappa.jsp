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
<%@ include file="/html/mappa/initmappa.jsp" %>
<%@ page import="java.util.ResourceBundle" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<portlet:defineObjects />

<fmt:setBundle basename="content.LanguageMobile"/>

<%
String friendly_url=layout.getGroup().getFriendlyURL();
 %>

<link rel="apple-touch-icon" href=<fmt:message key="imagesPath"/><fmt:message key="smartip_back"/>/>

  	<!-- Start of mappa_page -->
	<div id="mappa_page" data-role="page" data-theme="a" data-back-btn="true">    
    	<div data-role="header" data-theme="a" data-position="inline" >
       	 	<div data-role="controlgroup" data-type="horizontal" id="header_elements" class="ui-btn-left">
       	 	<a href="..<%=friendly_url%><fmt:message key='homepage'/>" data-role="button" data-direction="reverse" id="btnToHome" >
       	 		<img src=<fmt:message key="imagesPath"/><fmt:message key="home"/>></img>
			</a> 
			
			</div>
       	 	<div data-role="fieldcontain" id="map_layers" class="ui-title" >
				<select  name="select_layer" id="select_layer" multiple="multiple" data-native-menu="false" onchange="getFirstOptionValue()" data-mini="true">
					<option ><fmt:message key='layermenuLbl'/></option>
					<option value="fermatebus" id="fermatebus_check"><fmt:message key='fermate'/></option>
					<option value="accessibility" id="accessibility_check"><fmt:message key='luoghiAccessibili'/></option>
					<option value="parcheggi" id="parcheggi_check" ><fmt:message key='parcheggi'/></option>
					<option value="ciclopedpub" id="ciclopedpub_check"><fmt:message key='pisteCiclabili'/></option>
					<option value="eventi" id="eventi_check"><fmt:message key='problCircolazione'/></option>
					<option value="camera" id="telecamere_check"><fmt:message key='telecamere'/></option>
					<option value="traffico" id="traffico_check"><fmt:message key='traffico'/></option>
				</select>
			</div>
			<div data-role="controlgroup" data-type="horizontal" id="map_elements" class="ui-btn-right">
					<a href="javascript:ShowInfoLayer();" data-transition="pop" data-role="button" data-direction="reverse" id="infolayers" data-inline="true" >
						<img src=<fmt:message key="imagesPath"/><fmt:message key="info"/>></img>
					</a> 
					<a href="#"  data-role="button"data-direction="reverse" id="position_check" data-inline="true" >
						<img src=<fmt:message key="imagesPath"/><fmt:message key="location"/>></img>
					</a>
					<a href="#indicazioni_page" data-role="button"data-direction="reverse" id="indicazioni_check" data-inline="true" >
						<img src=<fmt:message key="imagesPath"/><fmt:message key="indicazioni"/>></img>
					</a> 					
		  
		   </div>	
		 
   		</div><!-- /header -->
		
   	 	<div data-role="content" id="mappa_content" >   
			
		<div id="map_canvas"></div>
		
	<script>
	
	
		</script>
	 
    	</div><!-- /content -->   


		<div class='footer-wrapper'>
    	<div data-role="footer"  data-theme="a"   >
			
		</div><!-- /footer -->
		</div>
	</div><!-- /page -->
<!-------------- Start of infopark page ------------------------------------------------------>
	<div id="infopark_page" data-role="page" data-theme="a" >
	
		<div data-role="header" >
		<h1><fmt:message key="infoparktitle"/></h1>
		
	
   		</div><!-- /header -->
		<div data-role="content" id="infopark_content"> 
			<a href="#mappa_page"  id="infopark_back" data-role="button" data-icon="arrow-l" data-transition="fade" ><fmt:message key="infoback"/></a>
			<div id="infopark_detail" class="ui-bar-c ui-corner-all ui-shadow" ></div>
		</div>
		<div class='footer-wrapper'>
    	<div data-role="footer"  data-theme="a"   >
			
		</div><!-- /footer -->
		</div>
	</div><!-- /page -->
	
<!-------------- Start of infoevent page ------------------------------------------------------>
	<div id="infoevent_page" data-role="page" data-theme="a">
	
		<div data-role="header" >
		<h1><fmt:message key="infoeventtitle"/></h1>
		
		
   		</div><!-- /header -->
		<div data-role="content" id="infoevent_content"> 
			<a href="#mappa_page"  id="infoevent_back" data-role="button" data-icon="arrow-l" data-transition="fade" ><fmt:message key="infoback"/></a>
			<div id="infoevent_detail" class="ui-bar-c ui-corner-all ui-shadow" >
			<ul data-role="listview" >
			
			</ul>
			
			</div>
		</div>
		<div class='footer-wrapper'>
    	<div data-role="footer"  data-theme="a"   >
			
		</div><!-- /footer -->
		</div>
	</div><!-- /page -->	
	<!-------------- Start of infocamera page ------------------------------------------------------>
	<div id="infocamera_page" data-role="page" data-theme="a">
	
		<div data-role="header" >
		<h1><fmt:message key="infocameratitle"/></h1>
		
		
   		</div><!-- /header -->
		<div data-role="content" id="infocamera_content"> 
			<a href="#mappa_page"  id="infocamera_back" data-role="button" data-icon="arrow-l" data-transition="fade" ><fmt:message key="infoback"/></a>
			<div id="infocamera_detail" class="ui-bar-c ui-corner-all ui-shadow" >
			<ul data-role="listview" >
			
			</ul>
			
			</div>
		</div>
		<div class='footer-wrapper'>
    	<div data-role="footer"  data-theme="a"   >
			
		</div><!-- /footer -->
		</div>
	</div><!-- /page -->	
<!-------------- Start of infoaccessibility page ------------------------------------------------------>	
<div id="infoaccessibility_page" data-role="page" data-theme="a">
	
		<div data-role="header" >
		<h1><fmt:message key="infoaccessibilitytitle"/></h1>
		
		
   		</div><!-- /header -->
		<div data-role="content" id="infoaccessibility_content"> 
			<a href="#mappa_page"  id="infoaccessibility_back" data-role="button" data-icon="arrow-l" data-transition="fade" ><fmt:message key="infoback"/></a>
			<div id="infoaccessibility_detail" class="ui-bar-c ui-corner-all ui-shadow" >
			<iframe id="linkA" style="width:250px; height:300px;"></iframe><!-- iframe che contiene la pagina di dettaglio relativo a un luogo segnalato da "Liberi di muoversi" -->
			
			</div>
		</div>
		<div class='footer-wrapper'>
    	<div data-role="footer"  data-theme="a"   >
			
		</div><!-- /footer -->
		</div>
	</div><!-- /page -->	


<!-------------- Start of infolayer page ------------------------------------------------------>
	<div id="infolayer_page" data-role="page" data-theme="a">

		<div data-role="header"  >
			<a href="#mappa_page" data-icon="arrow-l" data-transition="pop" id="btnToMap"><fmt:message key="infolayerback"/></a>
			
			<h1><fmt:message key="infolayertitle"/></h1>
		
		</div>
		 <div data-role="content" >    
		 <div id="dummy" style="height:30px;"></div>
			<ul data-role="listview" data-dividertheme="a"  >
				<li data-role="list-divider"><fmt:message key="secTraffico"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="fluido"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="fluidoStr"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="heavy"/> class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="heavyStr"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="congested"/> class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="congestedStr"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="coda"/> class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="codaStr"/></li>
				<li data-role="list-divider"><fmt:message key="secPark"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="parking_small"/> class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="parking_smallStr"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="parchimetro"/> class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="parchimetroStr"/></li>
				<li data-role="list-divider"><fmt:message key="secProblemi"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="lavori_small"/> class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="lavoriLbl"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="abnormaltraffic_small"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="limitazioniLbl"/></li>
				<li data-role="list-divider"><fmt:message key="secTelecamere"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="rita_small"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="rita_smallStr"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="sirio_small"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="sirio_smallStr"/></li>		
				<li data-role="list-divider"><fmt:message key="secCiclo"/></li>
				<li><div><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_ciclabile1"/>  class="ui-li-icon"></div>&nbsp;&nbsp;&nbsp;&nbsp;<div><fmt:message key="ciclabileStr1"/></div></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_ciclabile2"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="ciclabileStr2"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_ciclabile3"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="ciclabileStr3"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_itinerario"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="itinerarioStr1"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_pedciclabile1"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="pedciclabileStr1"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_pedciclabile2"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="pedciclabileStr2"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_pedciclabile3"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="pedciclabileStr3"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_percnat1"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="percnatStr1"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_percnat2"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="percnatStr2"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclopark_small"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="ciclopark_smallStr"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="cicloracks_small"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="cicloracks_smallStr"/></li>
				<li data-role="list-divider"><fmt:message key="secAccessibili"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="la_green_small"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="la_green_smallStr"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="la_yellow_small"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="la_yellow_smallStr"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="la_red_small"/>  class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="la_red_smallStr"/></li>
				<li data-role="list-divider"><fmt:message key="secBus"/></li>
				<li><img src=<fmt:message key="imagesPath"/><fmt:message key="busstop_small"/> class="ui-li-icon">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="busstop_smallStr"/></li>
				
			</ul>
		 </div>
		<div id="dummy" style="height:30px;"></div>
		
		<div class='footer-wrapper'>
    	<div data-role="footer"  data-theme="a"   >
			
		</div><!-- /footer -->
		</div>
		
	</div><!-- /page -->
<!-------------- Start of infofermatebus page ------------------------------------------------------>	
<div id="infofermatebus_page" data-role="page" data-theme="a">
	
		<div data-role="header" >
		<h1><fmt:message key="infofermatebustitle"/></h1>
		
		
   		</div><!-- /header -->
		<div data-role="content" id="infofermatebus_content"> 
			<a href="#mappa_page"  id="infofermatebus_back" data-role="button" data-icon="arrow-l" data-transition="fade" ><fmt:message key="infoback"/></a>
			<div id="infofermatebus_detail" class="ui-bar-c ui-corner-all ui-shadow" >
			
			<b><fmt:message key="prossimiBus"/></b>
			<div id="prox2bus"></div>
			<!-- preparo l'"accordion" che contiene la lista delle linee con i relativi dettagli -->		
			<b><fmt:message key="prossimiBusFerm"/></b>
			<div data-role="collapsible-set" id="elenco_linee" data-inset="true"></div></br>
			<div data-role="collapsible-set" id="rivenditore" data-inset="true"></div>
			<div id="dummy" style="height:20px;"></div>
			</div>
		</div>
		
		<div class='footer-wrapper'>
    	<div data-role="footer"  data-theme="a"   >
			
		</div><!-- /footer -->
		</div>
	</div><!-- /page -->	

	
<!-- Start of indicazioni_page -->
   	<div id="indicazioni_page" data-role="page" data-theme="a" data-back-btn="false">    
    	<div data-role="header" data-theme="a" data-position="inline"  id="indicazioni_header" >
    	<div data-role="controlgroup" data-type="horizontal" id="map_elements" class="ui-btn-left">
       	 	<a href="..<%=friendly_url%><fmt:message key='homepage'/>" data-role="button" data-direction="reverse" id="btnToHome" >
       	 		<img src=<fmt:message key="imagesPath"/><fmt:message key="home"/>></img>
			</a> 
			</div>
    	<h1><fmt:message key="indicazionititle"/></h1>
    	<div data-role="navbar">
				
				<ul>
					<li><a href="#"  class="ui-btn-active ui-state-persist" id="cercapunto_tab"><fmt:message key="cercaPunto"/></a></li>
					<li><a href="#" id="cercapercorsi_tab"><fmt:message key="cercaItinerario"/></a></li>
				</ul>
			</div><!-- /navbar -->
    	</div>
    	<div data-role="content" id="indicazioni_content" > 
    		<div id="cercapuntoDiv">
    		<div>
    			<div data-role="fieldcontain">	
    				<label for="punto"><b><fmt:message key="cercaItinerario"/></b></label>
					<input name="punto" type="text" id="punto" value=""></input>
				</div> 
				</div>
				<div id="calcresetDiv">
					<a href="#" data-role="button" id="calcpoint" onclick="ShowPoint()" data-inline="true"><fmt:message key="mostra"/></a>			 
					<a href="#" data-role="button"id="resetpoint" onclick="ResetRoute()" data-inline="true"><fmt:message key="annulla"/></a>
				</div>
					
    		</div>
    		
    		<div id="cercapercorsiDiv">
    		<div>
    			<div data-role="fieldcontain">	
    				<label for="partenza"><b><fmt:message key="partenzaLbl"/></b></label>
					<input name="partenza" type="text" id="partenza" value=""></input>
				</div> 
				<div data-role="fieldcontain">	
					<label for="arrivo"><b><fmt:message key="arrivoLbl"/></b></label>
					<input name="arrivo" type="text" id="arrivo" value=""></input>
				</div>
			</div> 
			<div id="calcresetDiv">
			<a href="#" data-role="button" id="calcroute" onclick="CalcRoute()" data-inline="true"><fmt:message key="calcola"/></a>			 
			<a href="#" data-role="button"id="resetroute" onclick="ResetRoute()" data-inline="true"><fmt:message key="annulla"/></a>
			</div>
			<div><fmt:message key="vaimappa"/>
			 <a href="#mappa_page" ><img src=<fmt:message key="imagesPath"/><fmt:message key="map_link"/> id="mapRoute_link"/></a>
			</div>	
				<fieldset data-role="controlgroup" data-type="horizontal" id="travelMode">
					<input type="radio" id="autoMode" name="travelModeradio" checked="checked" onclick="ShowRoute('driving')" value="driving"/>
					<label for="autoMode">In auto</label>
					<input type="radio" id="walkMode" name="travelModeradio" onclick="ShowRoute('walking')" value="walking" />
					<label for="walkMode">A piedi</label>	
				</fieldset>
			<fieldset data-role="controlgroup" id="radiobtnbox"></fieldset>
			<div data-role="collapsible" id="routeDetailsAcc">
  				 <h3>Dettagli</h3>
   				<div id="routeDetails"></div>
			</div>
    		<div id="searchResultList">
    		<ul></ul>
    		</div>
    	</div>
    	</div>
		<div class='footer-wrapper'>
    	<div data-role="footer"  data-theme="a"   >
			
		</div><!-- /footer -->
		</div>
	</div><!-- /page -->
	
	