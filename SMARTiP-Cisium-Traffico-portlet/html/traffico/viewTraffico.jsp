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
<%@ include file="/html/traffico/init.jsp" %>
<%@ page import="javax.portlet.WindowState" %>
<%@ page import="javax.portlet.PortletURL"%>
<%@ page import="javax.portlet.RenderResponse"%>
<%@ page import="javax.portlet.RenderRequest "%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<portlet:defineObjects />

<fmt:setBundle basename="content.LanguageTraffico"/>

<%
PortletURL portletURL = renderResponse.createRenderURL();
WindowState ws=portletURL.getWindowState();
PortletURL maxUrl = renderResponse.createRenderURL();
maxUrl.setWindowState(WindowState.MAXIMIZED);
%>



<div class="inlineDiv">
	<!-- predispongo il menu contenente i layer da poter visualizzare sulla mappa -->
	<select id="select-layers" multiple="multiple">
	<option value="7"><fmt:message key="fermate"/></option>
	<option value="6"><fmt:message key="luoghiAccessibili"/></option>
	<option value="2"><fmt:message key="parcheggi"/></option>
	<option value="4"><fmt:message key="pisteCiclabili"/></option>
	<option value="3"><fmt:message key="problCircolazione"/></option>
	<option value="5"><fmt:message key="telecamere"/></option>
	<option value="1"><fmt:message key="traffico"/></option>
	
	</select>
</div>

<div class="inlineDiv">		
	<div id="dialog" title="Legenda">
		<!-- qui viene creata la legenda dei layer  -->
		<dl>
		<dt><a href="#" class="linklayer" id="linklayer_1"><fmt:message key="secTraffico"/></a></dt>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="fluido"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="fluidoStr"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="heavy"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="heavyStr"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="congested"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="congestedStr"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="coda"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="codaStr"/></dd>
		<dt><a href="#" class="linklayer" id="linklayer_2"><fmt:message key="secPark"/></a></dt>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="parking_small"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="parking_smallStr"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="parchimetro"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="parchimetroStr"/></dd>
		<dt><a href="#" class="linklayer" id="linklayer_3"><fmt:message key="secProblemi"/></a></dt>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="lavori_small"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="lavori_smallStr"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="abnormaltraffic_small"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="abnormaltraffic_smallStr"/></dd>
		<dt><a href="#" class="linklayer" id="linklayer_4"><fmt:message key="secCiclo"/></a></dt>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_ciclabile1"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="ciclabileStr1"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_ciclabile2"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="ciclabileStr2"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_ciclabile3"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="ciclabileStr3"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_itinerario"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="itinerarioStr1"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_pedciclabile1"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="pedciclabileStr1"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_pedciclabile2"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="pedciclabileStr2"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_pedciclabile3"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="pedciclabileStr3"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_percnat1"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="percnatStr1"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclo_percnat2"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="percnatStr2"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="ciclopark_small"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="ciclopark_smallStr"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="cicloracks_small"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="cicloracks_smallStr"/></dd>
		<dt><a href="#" class="linklayer" id="linklayer_5"><fmt:message key="secTelecamere"/></a></dt>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="rita_small"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="rita_smallStr"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="sirio_small"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="sirio_smallStr"/></dd>
		<dt><a href="#" class="linklayer" id="linklayer_6"><fmt:message key="secAccessibili"/></a></dt>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="la_green_small"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="la_green_smallStr"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="la_yellow_small"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="la_yellow_smallStr"/></dd>
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="la_red_small"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="la_red_smallStr"/></dd>
		<dt><a href="#" class="linklayer" id="linklayer_7"><fmt:message key="secBus"/></a></dt>	
		<dd><img src=<fmt:message key="imagesPath"/><fmt:message key="busstop_small"/>>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:message key="busstop_smallStr"/></dd>

		</dl>
	</div>
	<button id="opener"><fmt:message key="legenda"/></button>
</div>
<div class="inlineDiv" id="cercaviaDiv">
<input  name="cercavia" type="text" id="cercavia"  ></input>
<button id="cercavia_btn" onclick="javascript:ShowStreet()"><img src="<%=request.getContextPath()%>/images/icon-search-black.png"></button>
</div>
<div class="inlineDiv" id="percorsoDiv">
	<div id="displayDiv">
		<a href="<%= maxUrl %>" id="displayMaxView"><fmt:message key="ricerca"/></a>
	</div>
	<div  id="route_mask" >
		<div id="toggleText">
			<p class="avviso"><fmt:message key="sceglipercorso"/></p>
			
			<div class="spacer">			
				<label for="partenza"><fmt:message key="partenzaLbl"/></label>
				<input class="inputPerWidth" name="partenza" type="text" id="partenza" value=""></input>
			</div>
			<div class="spacer">			
				<label for="arrivo"><fmt:message key="arrivoLbl"/></label>
				<input class="inputPerWidth" name="arrivo" type="text" id="arrivo" value=""></input>
			</div>
			<button id="calcroute" onclick="javascript:CalcRoute()"><fmt:message key="calcola"/></button>
			<button id="resetroute" onclick="javascript:ResetRoute()"><fmt:message key="reset"/></button>
		
		<div id="travelModeDiv">
			<label  id="lblTravelMode"><fmt:message key="percorsiSugg"/></label>
			<div id="divTravelModeBtn">
				<input type="radio"  id="autoMode" name="radio" checked="checked" onclick="ShowRoute('driving')"/>
				<label for="autoMode" id="travelModeDivBtn"><fmt:message key="inAuto"/></label>
				<input type="radio"   id="walkMode" name="radio" onclick="ShowRoute('walking')" />
				<label for="walkMode" id="travelModeDivBtn"><fmt:message key="aPiedi"/></label>
			</div>
		</div>
		<div id="radiobtndiv"></div>
		<div id="routeDetailsBtn">
		<h3><a href="#"><fmt:message key="dettagli"/></a></h3>
		<div id="routeDetails" title="Dettagli percorso"></div>
		</div>
		</div>	
	</div>
</div>

<div id="mapcanvas"></div>	
<iframe id="linkA"></iframe><!-- iframe che contiene la pagina di dettaglio relativo a un luogo segnalato da "Liberi di muoversi" -->
<div style="width: 100%;"><!-- non cancellare questo DIV !!! --></div>

<script>
	
	$( "#linkA" ).dialog({
	   title: "Dettagli",
	   height:500,
	   width:500,
	   autoOpen: false,
		show: "blind",
		modal:true,
		hide: "blind"/*,
		position:[800,300]*/
	});
	markerPoint="";
	if("<%=ws%>"=="<%=WindowState.MAXIMIZED%>"){
		toggle();
		document.getElementById("displayMaxView").style.display = "none";
		document.getElementById("route_mask").style.width = "300px";
		document.getElementById("percorsoDiv").style.marginTop= "30px";
	}else{
		document.getElementById("cercaviaDiv").style.display = "none";
	}
	var milliseconds = new Date().getTime();
	
	var script = document.createElement("script");
	script.type = "text/javascript";
	script.src = "http://maps.google.com/maps/api/js?libraries=places&sensor=false&callback=loadScript";
	document.body.appendChild(script);
	
	function loadScript(){
		
		view_traffico=true;
		view_parcheggio=true;
		view_eventi=true;
		view_position=true;
		view_telecamere=true;
		view_ciclopedpub=true;
		view_accessibility=true;
		view_fermatebus=true;
		view_lineebus=true;
		directionsService = new google.maps.DirectionsService();
		var styleArray = [
			                 {
			                    featureType: "transit.station.bus",
			                    stylers: [
			                              { visibility: "off" }
			                            ]
			                  }
			                ];
			
		var myOptions = {
							maxZoom:19,
							zoom: 13,
							center: new google.maps.LatLng(44.495465,11.339042),
							styles: styleArray,
							mapTypeId: google.maps.MapTypeId.ROADMAP
						};
		map = new google.maps.Map(document.getElementById("mapcanvas"),myOptions);
		
		//mostro subito il layer del traffico quando viene caricata la mappa		    	
	   	 $("#select-layers").multiselect("widget").find(":checkbox[value='1']").each(function() {
	    		     this.click();   
	    		});
		
		directionsDisplay = new google.maps.DirectionsRenderer();
		directionsDisplay.setMap(map);
		geocoder = new google.maps.Geocoder();
	    sw= new google.maps.LatLng(44.424043,11.229445);
		ne=new google.maps.LatLng(44.555486,11.438165);
		bounds= new google.maps.LatLngBounds(sw, ne);
		
		
		//impostazione dell'autocompletamento per i campi di ricerca di un percorso e di una via
		var cercavia= document.getElementById('cercavia');
		var partenza = document.getElementById('partenza');
		var arrivo= document.getElementById('arrivo');
		var options = {
				 bounds: bounds,
				types: ["geocode"]
	 		
		  	};
		autocomplete_cercavia = new google.maps.places.Autocomplete(cercavia, options);
		autocomplete_partenza = new google.maps.places.Autocomplete(partenza, options);
		autocomplete_arrivo = new google.maps.places.Autocomplete(arrivo, options);

	}

	//inizializzo il menu
	$("#select-layers").multiselect({
		header:false,
		noneSelectedText: visualizza,
		selectedText: visualizzati
	});
	//al caricamento della pagina il menu deve resettarsi
	$("#select-layers").multiselect("uncheckAll");
	//quando viene selezionato un elemento del menu viene mostrato o nascosto il rispettivo layer
	$("#select-layers").bind("multiselectclick multiselectcheckAll multiselectuncheckAll", function(event, ui){

			value_layer=parseInt(ui.value);
		
						
			switch(value_layer){
				case 1:
					GetTrafficForMap();
				  break;
				case 2:
					GetParcheggiForMap();
				  break;
				case 3:
					GetEventiForMap();
				  break;
				case 4:
					GetCiclopedpubForMap();
				  break;
				case 5:
					GetTelecamereForMap();
				  break;
				case 6:
					GetAccessibilityForMap();
					 break;
				case 7:
					GetFermateBusForMap();
					 break;
				default:
					var check=0;
				}
	
	
	});
	
	
	
	$( "#dialog" ).dialog({
		autoOpen: false,
		show: "blind",
		hide: "blind"
	});

	$( "#opener" ).click(function() {
		//il popup verrà mostrato a destra della mappa
		var posy=$("#mapcanvas").offset().top-$(window).scrollTop();
		var posx=parseInt($("#mapcanvas").offset().left)+parseInt($("#mapcanvas")[0].offsetWidth);
		$( "#dialog" ).dialog( "option", "position", [posx,posy] );
		$( "#dialog" ).dialog( "open" );
		
		return false;
	});
	
	//apre o chiude la maschera di ricerca di un percorso
	function toggle() {
		var perd = document.getElementById("percorsoDiv");
		var ele = document.getElementById("toggleText");
		//var btn = document.getElementById("displayBtn");
		//var btnClose = document.getElementById("close");
		var route_mask = document.getElementById("route_mask");
		if(ele.style.display == "block"){
			perd.style.display = "inline";
	    	ele.style.display = "none";
			route_mask.style.borderWidth="0px 0px";
	  	}else{
			perd.style.display = "block";
			ele.style.display = "block";
			route_mask.style.borderWidth="3px";
		}
	}
	//funzione richiamata quando si vuole visualizzare un punto sulla mappa
	function ShowStreet(){
		//cancello eventuale marker relativo ad un punto precedentemente cercato sulla mappa
		if(markerPoint)
		markerPoint.setMap(null);
		//ottengo il punto da cercare
		 var place = autocomplete_cercavia.getPlace();
		 if(place){
			
		  map.setCenter(place.geometry.location);
		   map.setZoom(17);
		   markerPoint=new google.maps.Marker({
				map: map});
		 
		  	  var image = new google.maps.MarkerImage(
		      place.icon, new google.maps.Size(71, 71),
		      new google.maps.Point(0, 0), new google.maps.Point(17, 34),
		      new google.maps.Size(35, 35));
		  	markerPoint.setIcon(image);
		  	markerPoint.setPosition(place.geometry.location);
		    	  var infowindow = new google.maps.InfoWindow({
		    		    content: place.name,
		    		    maxWidth: 200
		    		});
		    	  google.maps.event.addListener(markerPoint, 'click', function() {
		    		  infowindow.open(map,markerPoint);
		    		});
		      }
			    		//carico il layer del traffico se non è attivo
						if($("#select-layers option[value='1']")[0].selected==false){
			    		$("#select-layers").multiselect("widget").find(":checkbox[value='1']").each(function() {
			    		    this.click();
			    		   
			    		}); 
			    	  } 
	}

	//funzione richiamata per iniziare il processo di calcolo del percorso
	//verificando la correttezza degli indirizzi immessi e richiamando la funzione che
	//interroga le API di Google
	 function CalcRoute(){
		$("#radiobtndiv").html("");//elimino i precedenti radio button
		
		 var start =document.getElementById("partenza").value;
		  var end = document.getElementById("arrivo").value;
		
		 //verifico che sia l'indirizzo di partenza che quello di arrivo siano corretti
		  geocoder.geocode( { 'address': start,'region':"Bologna, Bo"}, function(results, status) {
		      if (status == google.maps.GeocoderStatus.OK) {
		    	  geocoder.geocode( { 'address': end,'region':"Bologna, Bo"}, function(results, status) {
		    		if (status == google.maps.GeocoderStatus.OK) {
		    			ShowRoute("driving");//effettua la richesta di percorso a google
		    			$("#travelModeDiv").show();
		    	  } else {
		    		  
		        		alert(errIndirizzoArr);
		        		
		     	 	}
		    	});
		      }else {
		        alert(errIndirizzoPar);
		        
		      }
		    });	
	};
	//funzione richiamata per calcolare un percorso utilizzandio le Directions API di Google
	function ShowRoute(travelmode){
		
		$("#radiobtndiv").html("");//elimino i precedenti radio button
		 var start = document.getElementById("partenza").value;
		  var end = document.getElementById("arrivo").value;
		
		  	var request = {
		   		 origin:start,
		    	destination:end,
		    	region:"Bologna, BO",
		   	 	provideRouteAlternatives:true,
		    	
		  	};
		    if(travelmode=="driving"){
		    	request.travelMode=google.maps.TravelMode.DRIVING;
		  }else{
			  request.travelMode=google.maps.TravelMode.WALKING;
		  }
		    		 	directionsService.route(request, function(result, status) {
		  		   		 if (status == google.maps.DirectionsStatus.OK) {
		  		   			directionsResult=result;
		  		   			 if(result.routes.length>1){
		  		      			for(var i=0; i<result.routes.length;i++){
		  		      				
		  		      				CreateRadioButtonRoute(directionsResult,i+1);
		  		      			}
		  		      			
		  		      			$("#percorso1").attr("checked",true);
		  		      		}
		  		      		
		  		      		SetRoute(directionsResult,1);
		  		   					  		      		
		  		   		 	}
		  		  		});			
  		 	$( "#routeDetailsBtn" ).accordion( "option", "active", "none" );
  		 	resizeMap();
			if($("#select-layers option[value='1']")[0].selected==false){
			    		$("#select-layers").multiselect("widget").find(":checkbox[value='1']").each(function() {
			    		    this.click();
			    		   
			    		}); 
			    	  } 
		      		
	}
	//crea un gruppo di radio button per la selezione dei percorsi
	function CreateRadioButtonRoute(result,numero_percorso){
	var radioInput = document.createElement('input');
	radioInput.setAttribute('type', 'radio');
	radioInput.setAttribute('name', "percorso");
	radioInput.setAttribute('value', "percorso"+numero_percorso);
	radioInput.setAttribute('onchange', "SetRoute(directionsResult,"+numero_percorso+")");
	radioInput.setAttribute('id', "percorso"+numero_percorso);
	var radioText = document.createElement('label');
	radioText.setAttribute('for', "percorso"+numero_percorso);
	var indice=parseInt(numero_percorso)-1;
	
	radioText.innerHTML="&nbsp;"+result.routes[indice].summary+"&nbsp;&nbsp;&nbsp;&nbsp;"+
						"<i>"+result.routes[indice].legs[0].distance.text+"</i>";
	$("#radiobtndiv").append("<div>");
	$("#radiobtndiv").append(radioInput);
	$("#radiobtndiv").append(radioText);
	$("#radiobtndiv").append("</div>");
	$( "#routeDetailsBtn" ).show();
	}
	//funzione richiamata al click dei radio button per cambiare alternativa tra i percorsi forniti dal servizio
	function SetRoute(result,index){
		
		 directionsDisplay.setDirections(result);
 		 directionsDisplay.setRouteIndex(index-1);
    	 directionsDisplay.setMap(map);
    	 $("#routeDetails").html("");    	 
		 $("#routeDetails").append("<b>Lunghezza</b>:&nbsp;"+result.routes[index-1].legs[0].distance.text)+"<br>";
		 $("#routeDetails").append("<div class='divStartStop'><b>"+partenzaLbl+"</b><br>"+result.routes[index-1].legs[0].start_address);
		 $("#routeDetails").append("</div>");
		 var tableDetails=document.createElement("table");
		 tableDetails.setAttribute('id', "tablePercorso");
		 for(var j=0;j<result.routes[index-1].legs[0].steps.length;j++){
			 var rowDetails = document.createElement("tr");
			 rowDetails.setAttribute('class', "rowPercorso");
			 if(j%2)
				 rowDetails.setAttribute('id', "rowOdd");
			 else
				 rowDetails.setAttribute('id', "rowPair");
			 			
			 var tdDistance = document.createElement("td");
			 tdDistance.setAttribute('class', "tdDistance");
			 tdDistance.innerHTML="("+result.routes[index-1].legs[0].steps[j].distance.text+  ")";
			 
			 var tdInstructions = document.createElement("td");
			 tdInstructions.setAttribute('class', "tdInstructions");
			 tdInstructions.innerHTML=result.routes[index-1].legs[0].steps[j].instructions;
			 			
			 var tdIndent = document.createElement("td");
			 tdIndent.setAttribute('class', "tdIndent");
			 tdIndent.innerHTML="["+(j+1)+"]";
			
			 rowDetails.appendChild(tdIndent);
			 rowDetails.appendChild(tdInstructions);
			 rowDetails.appendChild(tdDistance);
			 tableDetails.appendChild(rowDetails);
		 }
		 $("#routeDetails").append(tableDetails);
		 $("#routeDetails").append("<div class='divStartStop'><b>"+arrivoLbl+"</b><br>"+result.routes[index-1].legs[0].end_address)+"</div>";

	}
	//reset dei campi di ricerca e degli elementi della pagina per calcolare un nuovo percorso
	function ResetRoute(){
		
		$("#arrivo").val("");
		$("#partenza").val("");
		$("#radiobtndiv").html("");
		$( "#routeDetailsBtn" ).hide();
		$("#travelModeDiv").hide();
		directionsDisplay.setMap(null);
	}
	$( "#routeDetailsBtn" ).accordion({
		collapsible: true,
		active:false,
		fillSpace:true
	});
	
	$( "#routeDetailsBtn" ).hide();
	$( "#routeDetailsBtn" ).click(function() {
		
		$("#routeDetails" ).dialog( "open" );
		resizeMap();
		return false;
	});
	
	$("#travelModeDiv").buttonset();
	$("#travelModeDiv").hide();


function resizeMap(){

	var divPercorsi = $('#percorsoDiv').innerHeight();
	var divDettagli = 250;
	
	var display = $('#routeDetailsBtn').innerHeight();
	
		if(display<30){
			var newHeight = divPercorsi+divDettagli;
			$('#mapcanvas').animate({height: newHeight-4}, "slow");
		}
		else{
			var newHeight = divPercorsi-divDettagli;
			$('#mapcanvas').animate({height: newHeight-4}, "slow");
		}
}

//funzione nativa di liferay customizzata per visualizzare sulla mappa un evento selezionato nella 
// lista della portlet Eventi
	Liferay.on(
			   'eventSelected',
			   function(data) {
				  
			     var eventString = data.eventString;
			    
			      if (eventString) {
			    	  
			    	  showEventsIcon=eventString.split("-")[0];
			    	  zoom_map=eventString.split("-")[1];
			    	  center_map=new google.maps.LatLng(eventString.split("-")[2],eventString.split("-")[3]);
			    	
			    	   if($("#select-layers option[value='3']")[0].selected==false){
			    		$("select").multiselect("widget").find(":checkbox[value='3']").each(function() {
			    		    this.click();
			    		   
			    		});
			    	   }
			    		
			    	  map.setZoom(parseInt(zoom_map));
			    	  map.setCenter(center_map);

			     }
			   }
			 );
	//funzione nativa di liferay customizzata per visualizzare sulla mappa un parcheggio selezionato nella 
	// lista della portlet Parcheggi
	Liferay.on(
			   'parkSelected',
			   function(data) {
				  
			     var parkString = data.parkString;
			    
			      if (parkString) {
			    	 
			    	  showParkingIcon=parkString.split("-")[0];
			    	  zoom_map=parkString.split("-")[1];
			    	  center_map=new google.maps.LatLng(parkString.split("-")[2],parkString.split("-")[3]);

			    	  if($("#select-layers option[value='2']")[0].selected==false){
			    		$("#select-layers").multiselect("widget").find(":checkbox[value='2']").each(function() {
			    		    this.click();
			    		   
			    		}); 
			    	  } 
			    		map.setZoom(parseInt(zoom_map));
			    	 	 map.setCenter(center_map);
			    	  }
			   }
			 );
	$(".linklayer").click(function(){
		
		var layervalue=this.id.split("_")[1];
		if($("#select-layers option[value="+layervalue+"]")[0].selected==false){
    		$("#select-layers").multiselect("widget").find(":checkbox[value="+layervalue+"]").each(function() {
    		    this.click();
    		   
    		}); 
    	  }
	});
</script>
