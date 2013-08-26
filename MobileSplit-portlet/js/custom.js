
function getParamSubStr(){//restituisce la sottostringa dell'url contenente i parametri
var paramList ="";
//Recupero la URL visualizzata
var url = unescape( String(this.location) );
//verifico se nella url ci sono parametri
if(url.split("?")[1]){
	 paramList = url.split("?")[1];
	
}
return paramList;
}
function getParameter(paramSubStr){

//Array Associativo che conterrà i parametri presenti
//in querystring
var allParams = new Array();
 

//Recupero ogni coppia chiave/valore
if(paramSubStr){
	if(paramSubStr.indexOf("&")>-1){
	var params = paramSubStr.split("&");
	//Scorro tutte le coppie chiave/valore
	//e le separo
	for(var i=0; i<params.length; i++){
	
		var temp = params[i].split("=");
		
		//Carico l'array con tutti i parametri trovati
		allParams[temp[0]] = temp[1];
		
	}
	}else{
		var temp = paramSubStr.split("=");
		
		//Carico l'array con tutti i parametri trovati
		allParams[temp[0]] = temp[1];
	}
}
//Restituisco l'array dei parametri con i rispettivi valori
return allParams;
}

/*//////////////////////CODICE RELATIVO AGLI ELEMENTI DELLA PAGINA MAPPA_PAGE///////////////////*/
function ShowMap(center,show_eventsIcon,show_parkingIcon,zoom){
	
	
	map.setCenter(center);
	map.setZoom(zoom);
	
	//controlli effettutati sulle checkbox del menu dei layer
	if(show_trafficIcon==true){	
		$('#traffico_check ').attr( "selected",true );
		GetTrafficForMap();	
	}
	
	if(show_eventsIcon==true){
		$('#eventi_check ').attr( "selected",true );
		GetEventiForMap();		
	}
	if(show_parkingIcon==true){
		
		$('#parcheggi_check ').attr( "selected",true );
		GetParcheggiForMap();	
	}
	if(show_cameraIcon==true){
		$('#telecamere_check ').attr( "selected",true );
		GetTelecamereForMap();	
	}
	if(show_ciclopedpubIcon==true){
		$('#ciclopedpub_check ').attr( "selected",true );
		GetCiclopedpubForMap();	
	}
	if(show_accessibilityIcon==true){	
		$('#accessibility_check ').attr( "selected",true );
		GetAccessibilityForMap();	
	}
	if(show_fermatebusIcon==true){	
		$('#fermatebus_check ').attr( "selected",true );
		GetFermateBusForMap();	
	}
	//aggiorno le modifiche sul menu
	$("#select_layer").selectmenu("refresh",true);
	$("#select_layer-button .ui-btn-text").text(layermenuLbl);
	
};

//funzione richiamata sull'evento init (caricamento della pagina)
$("#mappa_page").live('pageinit',function(event){
		
		$("#map_canvas").css("height",window.innerHeight);		
		var styleArray = [
		                 {
		                    featureType: "transit.station.bus",
		                    stylers: [
		                              { visibility: "off" }
		                            ]
		                  }
		                ];
		var myOptions ={
							maxZoom:19,
							zoom: zoom_map,
							center: center_map,
							zoomControl: true,
							zoomControlOptions: {
								style: google.maps.ZoomControlStyle.SMALL,
								position: google.maps.ControlPosition.LEFT_TOP
							    },
							styles: styleArray,
							mapTypeId: google.maps.MapTypeId.ROADMAP
						};
		
		 map = new google.maps.Map(document.getElementById("map_canvas"),myOptions);	
		
		
		 //Carico gli eventuali parametri presenti nell'URL
		 var paramSubStr=getParamSubStr();
		
		 if(paramSubStr.length>0){//verifico la presenza dei paramtri
		 var url_params = getParameter(paramSubStr);
		
		 //Leggo i parametri
		  show_parkingIcon = url_params['show_parkingIcon']; 
		  show_eventsIcon = url_params['show_eventsIcon']; 
		  show_fermatebusIcon = url_params['show_fermatebusIcon']; 
		  show_ciclopedpubIcon = url_params['show_ciclopedpubIcon']; 
		  show_accessibilityIcon = url_params['show_accessibilityIcon'];
		  if(show_parkingIcon=="true")
			  show_parkingIcon=true;
		  else
			  show_parkingIcon=false;
		  if(show_eventsIcon=="true")
			  show_eventsIcon=true;
		  else
			  show_eventsIcon=false;
		  if(show_fermatebusIcon=="true"){//controllo se è stato premuto nella home il pulsante "Bus"
			  show_fermatebusIcon=true;
		  	  show_trafficIcon=false;
		  	  
		  }
		  else
			  show_fermatebusIcon=false;
		  if(show_ciclopedpubIcon=="true"){//controllo se è stato premuto nella home il pulsante "Piste ciclabili"
			  show_ciclopedpubIcon=true;
		  	  show_trafficIcon=false;
		  	  
		  }
		  else
			  show_ciclopedpubIcon=false;
		  if(show_accessibilityIcon=="true"){//controllo se è stato premuto nella home il pulsante "Luoghi accessibili"
			  show_accessibilityIcon=true;
		  	  show_trafficIcon=false;
		  	  
		  }
		  else
			  show_accessibilityIcon=false;
		  zoom_map=parseInt(url_params['zoom_map']); 
		 
		  center_map=new google.maps.LatLng(url_params['lat_center'],url_params['lng_center']);
		 }
		
		//se i parametri non sono presenti nell'url allora devono essere false
		 if(show_parkingIcon==undefined)
			 show_parkingIcon=false;
		 if(show_eventsIcon==undefined)
			 show_eventsIcon=false;
		 if(show_fermatebusIcon==undefined)
			 show_fermatebusIcon=false;
		 if(show_ciclopedpubIcon==undefined)
			 show_ciclopedpubIcon=false;
		 if(show_accessibilityIcon==undefined)
			 show_accessibilityIcon=false;
		ShowMap(center_map,show_eventsIcon,show_parkingIcon,zoom_map);
		
	//definisco degli stili per il menu dei layer
	$("#select_layer").selectmenu({
		mini: "true",
		 
	});
	
	
	$('.ui-selectmenu a.ui-btn-left').html("");//elimino il close button
	$('.ui-selectmenu a.ui-btn-left').text(layermenuOK);//cambio il testo al close button
	$('.ui-selectmenu a.ui-btn-left').attr("class", "ui-btn ui-btn-left");//associo le classi al close button
	$('.ui-selectmenu a.ui-btn-left').buttonMarkup({ iconpos: "right",icon: "check"});//ridefinisce il layout del close button
	
	$("#select_layer").selectmenu("refresh");
	$("#select_layer-button .ui-btn-text").text(layermenuLbl);
	//chiedo all'utente se vuole essere localizzato quando si visualizza la mappa
	//tranne nel caso in cui provengo dalla pagina Parcheggi o Problemi
	if(show_parkingIcon!=true&&show_eventsIcon!=true){
			getCurrentLocation();
	}
});
//definisco gli stili per il menu layer se viene mostrato come dialog in un 'altra pagina a causa dell'elevato numero di options
$(".ui-page[data-role='dialog']").live('pageshow',function(event){
$('.ui-dialog a.ui-btn-left').html("");//elimino il close button
$('.ui-dialog a.ui-btn-left').text(layermenuOK);//cambio il testo al close button
$('.ui-dialog a.ui-btn-left').attr("class", "ui-btn ui-btn-left");//associo le classi al close button
$('.ui-dialog a.ui-btn-left').buttonMarkup({ iconpos: "right",icon: "check"});//ridefinisce il layout del close button
});
	

//quando viene mostrata la pagina della mappa viene fatto un controllo 
//su eventuali percorsi da visualizzare
$("#mappa_page").live('pageshow',function(event){
	if(directionsResult!=""){
		
		DrawRoute(directionsResult,routeIndex);
	}else if(routeArray.length>0){//se è presente un precedente percorso disegnato sulla mappa viene cancellato
		
		for(var i=0;i<routeArray.length;i++)
		routeArray[i].setMap(null);
		
		//cancello anche i marker del percorso
		for(var i=0;i<markerArray.length;i++)
		markerArray[i].setMap(null);
		
	}
});
//funzione richiamata quando cambia lo stato della checkbox del traffico
$("#select_layer-menu>li[data-option-index='1']").live("click",function(){
		GetFermateBusForMap();
});
//funzione richiamata quando cambia lo stato della checkbox dei parcheggi
$("#select_layer-menu>li[data-option-index='2']").live("click",function(){
	GetAccessibilityForMap();
});

//funzione richiamata quando cambia lo stato della checkbox degli eventi
$("#select_layer-menu>li[data-option-index='3']").live("click",function(){
	GetParcheggiForMap();
});
//funzione richiamata quando cambia lo stato della checkbox delle telecamere
$("#select_layer-menu>li[data-option-index='4']").live("click",function(){
	GetCiclopedpubForMap();
});
//funzione richiamata quando cambia lo stato della checkbox delle piste ciclabili
$("#select_layer-menu>li[data-option-index='5']").live("click",function(){
	GetEventiForMap();
});
//funzione richiamata quando cambia lo stato della checkbox dei luoghi accessibili
$("#select_layer-menu>li[data-option-index='6']").live("click",function(){
	GetTelecamereForMap();
});
//funzione richiamata quando cambia lo stato della checkbox dei luoghi accessibili
$("#select_layer-menu>li[data-option-index='7']").live("click",function(){
	GetTrafficForMap();
});
//funzione richiamata quando cambia lo stato della checkbox relativo alla rilevazione GPS
$("#position_check").live("click", function() {
	
	getCurrentLocation();
	
});	
	
function getCurrentLocation()
	  {
	if(view_position==true){

	//geolocalizzazione attraverso GPS
	if (navigator.geolocation) {
		  navigator.geolocation.getCurrentPosition(ShowPosition, errorPosition);
		} else {
		  alert(geoLocMsg);
		}
	
		
	}else{
		map.setCenter(center_map, 14);
		markerPos.setMap(null);
		view_position=true;
	}
	  }

function ShowPosition(position) {//mostra la posizione sulla mappa
	 map.setCenter(new google.maps.LatLng(position.coords.latitude,position.coords.longitude), 16);
	 markerPos = new google.maps.Marker(
			 { 
				 map: map,
				 position:new google.maps.LatLng(position.coords.latitude, 
				                  position.coords.longitude),
				 icon:imagesPath+location2,
						
			});
		   view_position=false;
		 	
		}

function errorPosition(error,msg) {//mostra eventuali messaggi d'errore se la geolocalizzazione non va a buon fine
	
	switch(error.code)
	 {
	 case error.PERMISSION_DENIED:
		  alert(errposdenied);
	 break;
		 
	 case error.POSITION_UNAVAILABLE:
		  alert(errposunavailable);
	 break;
		 
	 case error.TIMEOUT:
		  alert(errpostimeout);
	 break;
		 
	case error.UNKNOWN_ERROR:
		  alert(errposunknow);
	 break;
	}
		 
}
//funzione richiamata sull'evonchange del menù di selezione dei layers
function getFirstOptionValue(){
	
	var myselect = document.getElementById("select_layer");
			myselect.options[0].text =layermenuLbl;
			$("#select_layer-button .ui-btn-text").text(layermenuLbl);
}
//funzione che mostra la pagina con le info sui layer della mappa
function ShowInfoLayer(){
	
	$.mobile.changePage( "#infolayer_page");
	
}

//funzione richiamata per disegnare un percorso sulla mappa
function DrawRoute(routeObject,index){
	
	if(routeArray.length>0){//se ci sono precedenti percorsi disegnati vengono cancellati
		
		for(var i=0;i<routeArray.length;i++)
		routeArray[i].setMap(null);
	}
	if(markerArray.length>0){
	//cancello i marker presenti sulla mappa relativi a punti o percorsi calcolati precedentemente
		for(var i=0;i<markerArray.length;i++)
		markerArray[i].setMap(null);
	}
	
	//cancello eventuale marker relativo ad un punto precedentemente cercato sulla mappa
	if(markerPoint)
	markerPoint.setMap(null);
	//mostro il layer del traffico
	if($("#select_layer")[0].options[7].selected==false)
		  
		   $("#select_layer-menu>li[data-option-index='7']").click();
	   	
	 $("#select_layer").selectmenu("refresh");
	 $("#select_layer-button .ui-btn-text").text(layermenuLbl);
	//centro la mappa sul punto di partenza
	map.setCenter(routeObject.routes[index].legs[0].start_location);
	var steps = routeObject.routes[index].legs[0].steps;
   
   //inserisco i marker per i punti di partenza e arrivo
	 Startmarker = new google.maps.Marker({
		map: map,
		position:routeObject.routes[index].legs[0].start_location
		}); 
		 Endmarker = new google.maps.Marker({
		map: map,
		position:routeObject.routes[index].legs[0].end_location
		}); 
	markerArray.push(Startmarker);
	markerArray.push(Endmarker);
	
	infoStart = new InfoBubble();
	
    google.maps.event.addListener(Startmarker, 'click', function(event){
 	   if (!infoStart.isOpen()) { 
 		   infoStart.setOptions({	
			        content:"<div  class='infoWindowText' >"+
			    			"<b >"+partenzaLbl+"</b></br><b style='float:left;' ></b>&nbsp;"+routeObject.routes[index].legs[0].start_address+
			    			"</div>",
			    			position: routeObject.routes[index].legs[0].start_location,
			    			shadowStyle: 1,
					        padding: 0,
					        backgroundColor: 'rgb(57,57,57)',
					        borderRadius: 20,
					        arrowSize: 10,
					        borderWidth: 1,
					        borderColor: '#2c2c2c',
					        disableAutoPan: true,
					        hideCloseButton: true,
					        arrowPosition: 30,
					        backgroundClassName: 'infoWindow',
					        arrowStyle: 2,
					        pixelOffset:0
					      });
 		   infoStart.open(map,Startmarker);
			    }else{
			    	infoStart.close(map);
			    } 
 	   
    });
    
	infoEnd = new InfoBubble();
    google.maps.event.addListener(Endmarker, 'click', function(event){
 	   if (!infoEnd.isOpen()) { 
 		  infoEnd.setOptions({	
			        content:"<div  class='infoWindowText' >"+
			    			"<b >"+arrivoLbl+"</b></br><b style='float:left;' ></b>&nbsp;"+routeObject.routes[index].legs[0].end_address+
			    			"</div>",
			    			position: routeObject.routes[index].legs[0].end_location,
			    			shadowStyle: 1,
					        padding: 0,
					        backgroundColor: 'rgb(57,57,57)',
					        borderRadius: 20,
					        arrowSize: 10,
					        borderWidth: 1,
					        borderColor: '#2c2c2c',
					        disableAutoPan: true,
					        hideCloseButton: true,
					        arrowPosition: 30,
					        backgroundClassName: 'infoWindow',
					        arrowStyle: 2,
					        pixelOffset:0
					      });
 		 infoEnd.open(map,Endmarker);
			    }else{
			    	infoEnd.close(map);
			    } 
 	   
    });

    //viene disegnato a mano il percorso per personalizzare il tratto di linea
    for(var step = 0; step < steps.length; step++)
    {
    	

       polylineOptions = {
                			map: map,
                			strokeColor: "#0000CD",
               				strokeOpacity: 0.8,
               				strokeWeight: 2,
               		 		//path: response.routes[0].overview_path
               				path:steps[step].path
    	                
        				  };
       custom_route = new google.maps.Polyline(polylineOptions);
       routeArray.push(custom_route);
       
    }
}

/*////////////////////CODICE RELATIVO AGLI ELEMENTI DELLA PAGINA INDICAZIONI_PAGE/////////////*/
var cercapunto_tab_active=true;
var cercapercorsi_tab_active=false;
$("#cercapunto_tab").live("click", function(){
	
	if(cercapunto_tab_active==false){
		$("#cercapercorsiDiv").hide();
		$("#cercapuntoDiv").show();
		$("#cercapercorsi_tab").removeClass("ui-btn-active ui-state-persist");
		cercapercorsi_tab_active=false;
		cercapunto_tab_active=true;
	}
});
$("#cercapercorsi_tab").live("click", function(){
	
	if(cercapercorsi_tab_active==false){
		$("#cercapuntoDiv").hide();
		$("#cercapercorsiDiv").show();
		$("#cercapunto_tab").removeClass("ui-btn-active ui-state-persist");
		cercapunto_tab_active=false;
		cercapercorsi_tab_active=true;
	}
});


//funzione richiamata quando si incomincia a scrivere l'indirizzo di partenza

$('#indicazioni_page').live('pageinit', function (event) {
	$("#cercapercorsiDiv").hide();//nascondo la parte relativa alla ricerca dei percorsi
	$("#routeDetailsAcc").hide();
	geocoder = new google.maps.Geocoder();
	$("#travelMode").hide();
	//impostazione dell'autocompletamento per i campi di ricerca di un percorso e di una via
	var punto=document.getElementById('punto');
	var partenza = document.getElementById('partenza');
	var arrivo= document.getElementById('arrivo');
	sw= new google.maps.LatLng(44.424043,11.229445);
	ne=new google.maps.LatLng(44.555486,11.438165);
	bounds= new google.maps.LatLngBounds(sw, ne);
	var options = {
			 bounds: bounds,
			types: ["geocode"]
 		
	  	};
	autocomplete_punto = new google.maps.places.Autocomplete(punto, options);
	autocomplete_partenza = new google.maps.places.Autocomplete(partenza, options);
	autocomplete_arrivo = new google.maps.places.Autocomplete(arrivo, options);
	
//al caricamento della pagina di default deve essere selezionata la modalità driving
	$('input:radio[name=travelModeradio]')[0].checked = true;
	$('input:radio[name=travelModeradio]')[1].checked = false;
	$('input:radio[name=travelModeradio]').checkboxradio("refresh");
	
	
    
});
//funzione richiamata quando si vuole cercare un punto sulla mappa
function ShowPoint(){
		directionsResult="";
		//cancello eventuale marker relativo ad un punto precedentemente cercato sulla mappa
		if(markerPoint)
		markerPoint.setMap(null);
		$.mobile.changePage("#mappa_page");
		
		//ottengo il punto da cercare
		 var place = autocomplete_punto.getPlace();
		 if(place){
			
		  map.setCenter(place.geometry.location);

		   map.setZoom(17);
		   markerPoint=new google.maps.Marker({
				map: map});
		  infoPoint = new InfoBubble();
		  	  var image = new google.maps.MarkerImage(
		      place.icon, new google.maps.Size(71, 71),
		      new google.maps.Point(0, 0), new google.maps.Point(17, 34),
		      new google.maps.Size(35, 35));
		  	markerPoint.setIcon(image);
		  	markerPoint.setPosition(place.geometry.location);
		  	google.maps.event.addListener(markerPoint, 'click', function(event){
		  	   if (!infoPoint.isOpen()) { 
		  		  infoPoint.setOptions({	
		 			        content:"<div  class='infoWindowText' >"+
		 			    			"<b style='float:left;' ></b>&nbsp;"+place.name+
		 			    			"</div>",
		 			    			position: place.geometry.location,
		 			    			shadowStyle: 1,
		 					        padding: 0,
		 					        backgroundColor: 'rgb(57,57,57)',
		 					        borderRadius: 20,
		 					        arrowSize: 10,
		 					        borderWidth: 1,
		 					        borderColor: '#2c2c2c',
		 					        disableAutoPan: true,
		 					        hideCloseButton: true,
		 					        arrowPosition: 30,
		 					        backgroundClassName: 'infoWindow',
		 					        arrowStyle: 2,
		 					        pixelOffset:0
		 					      });
		  		 infoPoint.open(map,markerPoint);
		 			    }else{
		 			    	infoPoint.close(map);
		 			    } 
		  	   
		     });
		}
		
		   //mostro il layer del traffico
	if($("#select_layer")[0].options[7].selected==false)
		  
		   $("#select_layer-menu>li[data-option-index='7']").click();
	   	
	 $("#select_layer").selectmenu("refresh");
	 $("#select_layer-button .ui-btn-text").text(layermenuLbl);
}		 
		
	

//funzione richiamata per iniziare il processo di calcolo del percorso
//verificando la correttezza degli indirizzi immessi e richiamando la funzione che
//interroga le API di Google
function CalcRoute(){
	$("#radiobtnbox").html("");//elimino i precedenti radio button
	
	 var start = document.getElementById("partenza").value;
	  var end = document.getElementById("arrivo").value;
	 
	 //verifico che sia l'indirizzo di partenza che quello di arrivo siano corretti
	  geocoder.geocode( { 'address': start,'region':"Bologna, Bo"}, function(results, status) {
	      if (status == google.maps.GeocoderStatus.OK) {
	    	  geocoder.geocode( { 'address': end,'region':"Bologna, Bo"}, function(results, status) {
	    		if (status == google.maps.GeocoderStatus.OK) {
					$("#travelMode").show();
					var travelmodeSel=$("input[name=travelModeradio]:checked").val();
	    			ShowRoute(travelmodeSel);//effettua la richesta di percorso a google
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
	$("#radiobtnbox").html("");//elimino i precedenti radio button
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
	  directionsService = new google.maps.DirectionsService();
		 directionsDisplay = new google.maps.DirectionsRenderer();
	    		 	directionsService.route(request, function(result, status) {
	  		   		 if (status == google.maps.DirectionsStatus.OK) {
	  		   			 directionsResult=result;	  		   		
	  		      		if(result.routes.length>0){
	  		      		$("#radiobtnbox").append("<br>");
		      			$("#radiobtnbox").append("<b>"+percorsiSugg+"</b><br>");
		      			
	  		      			for(var i=0; i<result.routes.length;i++){
	  		      				
	  		      				CreateRadioButtonRoute(directionsResult,i+1);
	  		      			}
	  		      			
	  		      			$("#percorso1").attr("checked",true);
	  		      		}
	  		      		
	  		      		SetRoute(directionsResult,1);
	  		   			
	  		      		
	  		   		 	}
	  		  		});	      		
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
radioText.setAttribute('id', "percorso"+numero_percorso+"lbl");
var indice=parseInt(numero_percorso)-1;
radioText.innerHTML="&nbsp;"+result.routes[indice].summary+"&nbsp&nbsp&nbsp&nbsp"+
"<i>"+result.routes[indice].legs[0].distance.text+"</i>";
if(numero_percorso==1){
	radioInput.setAttribute('checked', true);	
}
$("#radiobtnbox").append(radioInput);
$("#radiobtnbox").append(radioText);
$("#percorso"+numero_percorso).checkboxradio();
$("#radiobtnbox").controlgroup("refresh");
$("#percorso"+numero_percorso+"lbl").removeClass("ui-controlgroup-last");
$("#percorso"+numero_percorso+"lbl").css("border-radius",0);

$("#routeDetailsAcc").show();
}
//funzione richiamata al click dei radio button per cambiare alternativa tra i percorsi forniti dal servizio
function SetRoute(result,index){
	
	
	 directionsDisplay.setDirections(result);
	 directionsDisplay.setRouteIndex(index-1);
	 routeIndex=directionsDisplay.getRouteIndex();
	 $("#routeDetails").html("");
	 
		 $("#routeDetails").append("<b>Lunghezza</b>:&nbsp;"+result.routes[index-1].legs[0].distance.text);
		 $("#routeDetails").append("<br><b>"+partenzaLbl+"</b>:&nbsp;"+result.routes[index-1].legs[0].start_address);
		 $("#routeDetails").append("<br><br>");
		 var tableDetails=document.createElement("table");
		 for(var j=0;j<result.routes[index-1].legs[0].steps.length;j++){
			 var rowDetails = document.createElement("tr");
			 var tdDistance = document.createElement("td");
			 tdDistance.innerHTML=" ("+result.routes[index-1].legs[0].steps[j].distance.text+  ")";
			 var tdInstructions = document.createElement("td");
			 tdInstructions.innerHTML=result.routes[index-1].legs[0].steps[j].instructions;
			 rowDetails.appendChild(tdInstructions);
			 rowDetails.appendChild(tdDistance);
			 tableDetails.appendChild(rowDetails);
		 }
		 $("#routeDetails").append(tableDetails);
		 $("#routeDetails").append("<br><b>"+arrivoLbl+"</b>:&nbsp; "+result.routes[index-1].legs[0].end_address);
	 
}
//reset dei campi di ricerca e degli elementi della pagina per calcolare un nuovo percorso
function ResetRoute(){
	$("#arrivo").val("");
	$("#partenza").val("");
	$("#radiobtnbox").html("");
	$("#routeDetailsAcc").hide();
	$("#travelMode").hide();
	
	directionsResult="";
	 resetDir=true;
	 Startmarker.setMap(null);
	 Endmarker.setMap(null);
}
