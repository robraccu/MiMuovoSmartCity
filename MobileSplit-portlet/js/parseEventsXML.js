//funzione richiamata quando viene visualizzata la pagina contenente la lista dei parcheggi
$('#eventi_page').live( 'pageinit',function(event){
	
	
	//al caricamento della pagina deve essere selezionato l'ordinamento per tipo
	var myselect = $("#select_ord");
	myselect[0].selectedIndex = 0;
	myselect.selectmenu("refresh");
	$("#select_ord-button .ui-btn-text").text(ordinaLbl);
	GetEventi();
	
});
		 
function GetEventi(){
	
	strada=new Array();
	dettaglio=new Array();//Road Maintenance Type o NetworkManagement Type
	erlayout=new Array();// effectOnRoadLayout
	event_type=new Array();//tipo di evento
	inizio_evento=new Array();
	fine_evento=new Array();
	coord_evento=new Array();
	tabella_eventi=$("#tabella_eventi");
	
	event_rows=new Array();//array multidimensionale da utilizzare per l'ordinamento della tabella
	
	
	lat_user="";
	lng_user="";
	//mostro l'indicatore di caricamento da quando inizia la richiesta fino a quando termina
	$(document).ajaxStart(function(){
		$("html").addClass("ui-loading" );
		}).ajaxStop(function(){
			$("html").removeClass("ui-loading" );
		});
	
	
	$.ajax({
		 type: "GET",
		 url: eventXMLproxy,
		 dataType: "xml",
		 contentType:"text/xml,charset=UTF-8",
		 
		 error:function(xml){ 
		 alert("error");
		 },
		 success: function(xml)
		 {
			$(xml).find("situationRecord").each(function(){
				 
				strada.push($(this).find("comment").find("value").text());
				
				inizio_evento.push($(this).find("validity").find("validityTimeSpecification").find("overallStartTime").text());
				fine_evento.push($(this).find("validity").find("validityTimeSpecification").find("overallEndTime").text());

				var latitude=$(this).find("groupOfLocations").find("pointByCoordinates").children(":first").find("latitude").text();
				var longitude=$(this).find("groupOfLocations").find("pointByCoordinates").children(":first").find("longitude").text();
				
				coord_evento.push(latitude+"-"+longitude);
				if( $(this).attr("xsi:type")=="MaintenanceWorks"){
					
					event_type.push(lavoriLbl);
					dettaglio.push($(this).find("roadMaintenanceType").text());
					erlayout.push($(this).find("roadMaintenanceType").text());
				 
				 }else if( $(this).attr("xsi:type")=="NetworkManagement"){
					 event_type.push(lavoriLbl);
					 dettaglio.push($(this).find("NetworkManagementType").text());
					 erlayout.push("");
				 }else if( $(this).attr("xsi:type")=="AbnormalTraffic"){
					var abnormalTrafficType=$(this).find("abnormalTrafficType");
					if(abnormalTrafficType.text()){
						
						event_type.push(congestioneLbl);
						 dettaglio.push(abnormalTrafficType.text());
						 erlayout.push("");
					}else{
					 event_type.push(limitazioniLbl);
					 dettaglio.push("");
					 erlayout.push("");
				 }
				 }else{
						event_type.push(limitazioniLbl);
						dettaglio.push("");
						 erlayout.push("");
				}
				
			 });
			//creo un array multidimensionale da utilizzare per l'ordinamento della tabella
			for(var i=0;i<strada.length;i++){
			event_rows[i]= {type:event_type[i], message:strada[i], start:inizio_evento[i], end:fine_evento[i],coord:coord_evento[i], distFromuser:""};
			}
			
			//ordina gli eventi per tipo di evento in ordine alfabetico e
			//li inserisce nella tabella
			OrderByType(event_rows);
			
		 }//end success function
	});//end $ajax	
	
};//end GetEventi;

//funzione richiamata quando clicco sull'icona della mappa di un elemento della lista degli eventi
$(".mappa_event_link").live("click", function(){
	var id_link=$(this).attr("id");
	
	var coord_index=id_link.split("_")[3];
	var latitude_evento=event_rows[coord_index].coord.split("-")[0];
	var longitude_evento=event_rows[coord_index].coord.split("-")[1];
	show_parkingIcon=false;
	show_eventsIcon=true;
	center_map=new google.maps.LatLng(latitude_evento,longitude_evento);
	
	zoom_map=19;
	location.href=".."+friendly_url_js+"/mappa?show_eventsIcon="+show_eventsIcon+"&zoom_map="+zoom_map+"&lat_center="+latitude_evento+"&lng_center="+longitude_evento;

});

function OrderByType(rows){
	
		rows.sort(function(a,b){
			var x = a.type.toLowerCase();
			var y = b.type.toLowerCase();
			
			return ((x < y) ? -1 : ((x > y) ? 1 : 0));			
	});
	
		for(var i=0;i<rows.length;i++ ){
			rows[i].distFromuser="";//azzero il parametro sulle distanze
		}
	
	
	 UpdateArrays(rows);
	 InsertEvents();
	
}
function UpdateArrays(rows){
	
	for(var i=0; i<rows.length;i++){
		
		event_type[i]=rows[i].type;
		strada[i]=rows[i].message;
		inizio_evento[i]=rows[i].start;
		fine_evento[i]=rows[i].end;
		coord_evento[i]=rows[i].coord;
		
	}
}

function OrderByPosition(rows){
	
	
	user_pos=lat_user+"-"+lng_user;
	//console.log("user_pos "+user_pos)	;
	//popolo l' array degli eventi con le distance di ogni evento dalla posizione dell'utente
	for(var i=0;i< coord_evento.length; i++){
		
		var distance=CalcDistance(user_pos,rows[i].coord);
		var parte_intera=distance.toString().split(".")[0];
		var parte_decimale=distance.toString().split(".")[1].substring(0,2);//prendo solo due cifre dopo la virgola
		//console.log(parte_intera+"."+parte_decimale);
		rows[i].distFromuser=parte_intera+"."+parte_decimale+" Km";
		
	}
	//ordino l' array in base alle distanze degli eventi dalla posizione dell'utente
	rows.sort(function(a,b){
		var x = a.distFromuser.split(" ")[0];
		var y = b.distFromuser.split(" ")[0];
		
		return (x-y);			
	});
	UpdateArrays(rows);
	 InsertEvents();
	

}
//funzione richiamata per ottenere la posizione dell'utente tramite GPS
function getUserLocation()
{
	
	//geolocalizzazione attraverso GPS
	if (navigator.geolocation) {
	
	  navigator.geolocation.getCurrentPosition(FoundPosition, errorPosition);
	} else {
	  alert(geoLocMsg);
	}
}
function FoundPosition(position) {//ritorna le coordinate della posizione dell'utente
	lat_user=position.coords.latitude;
	lng_user=position.coords.longitude;
	OrderByPosition(event_rows);
	
}

function errorPosition(error,msg) {//mostra eventuali messaggi d'errore se la geolocalizzazione non va a buon fine
		//console.log("errore"+error.code);
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
function CalcDistance(user_pos,event_pos){//distanza calcolata usando la formula di Haversine
	
	var lat1=user_pos.split("-")[0];
	var lon1=user_pos.split("-")[1];
	var lat2=event_pos.split("-")[0];
	var lon2=event_pos.split("-")[1];
	var R = 6371; // Radius of the earth in km
	var diff=lat2-lat1;
	var dLat =toRad(diff);  // Javascript functions in radians
	
	var dLon = toRad(lon2-lon1); 
	var a = Math.sin(dLat/2) * Math.sin(dLat/2) +
	        Math.cos(toRad(lat1)) * Math.cos(toRad(lat2)) * 
	        Math.sin(dLon/2) * Math.sin(dLon/2); 
	var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
	var d = R * c; // Distance in km
	return d;
}
function toRad(Value) {
    /** Converts numeric degrees to radians */
    return Value * Math.PI / 180;
}

function InsertEvents(){
	
	$("#tabella_eventi").html("");
	//inserisco gli eventi nella lista		
	for(var i=0;i<strada.length;i++){
		
		
		if(event_type[i]==lavoriLbl){
			imageString=lavori;
		}else if (event_type[i]==congestioneLbl){
			imageString=congestione;
		}else {
			imageString=abnormaltraffic;
		}
		if(dettaglio[i]=="roadWorks"){
			
			dettaglio[i]=manutenzioneLbl;
		}else if(dettaglio[i]=="repairWorks"){
			
			dettaglio[i]=riparazioneLbl;
		}else if(dettaglio[i]=="singleAlternateLineTraffic"){
			
			dettaglio[i]=sensoAltLbl;
		}else if(dettaglio[i]=="stationaryTraffic"){
			
			dettaglio[i]=traffIntLbl;
		}
		if (erlayout[i]=="narrowLanes"){
			erlayout[i]=restringimentoLbl;
		}
		data=inizio_evento[i].split("T")[0];
		orario=inizio_evento[i].split("T")[1];
		giorno=data.split("-")[2];
		mese=data.split("-")[1];
		anno=data.split("-")[0];
		ora=orario.split("+")[0];
		
		data_fine=fine_evento[i].split("T")[0];
		orario_fine=fine_evento[i].split("T")[1];
		giorno_fine=data_fine.split("-")[2];
		mese_fine=data_fine.split("-")[1];
		anno_fine=data_fine.split("-")[0];
		ora_fine=orario_fine.split("+")[0];
		var evento;
		
		if(event_type[i]!="Congestione"){
		
			evento='<li class="listEvent_element mappa_event_link" id="mappa_event_link_'+i+'"> '+
			'<img src='+imageString+' />'+
			'<div><strong>'+strada[i]+'</strong>&nbsp;'+event_rows[i].distFromuser+'</div><br>'+
			'<p >Data inizio: '+giorno+"/"+mese+"/"+anno+" "+ora+'&nbsp;</p>'+
			'<p>Data fine: '+giorno_fine+"/"+mese_fine+"/"+anno_fine+" "+ora_fine+'&nbsp;</p>'+
			//'<p class="ui-li-aside" id="mappa_event_link"><img src='+imageString+' /></p>'+
			'</li>';
		}else{ 
			
			evento='<li class="listEvent_element"> '+
			'<img src='+imageString+' />'+
			'<div><strong>'+strada[i]+'</strong>&nbsp;'+event_rows[i].distFromuser+'Km</div><br>'+
			'<p >Data inizio: '+giorno+"/"+mese+"/"+anno+" "+ora+'&nbsp;</p>'+
			'<p>Data fine: '+giorno_fine+"/"+mese_fine+"/"+anno_fine+" "+ora_fine+'&nbsp;</p>'+
			'</li>';
			
		}
		$("#tabella_eventi").append(evento);
		$("#tabella_eventi").listview("refresh");
		 $("html").removeClass( "ui-loading" );
	}
}	
//funzione richiamata quando  viene selezionato l'ordinamento per tipo
$("#select_ord-menu>li[data-option-index='0']").live("click",function(){
	OrderByType(event_rows);
	$("#select_ord-button .ui-btn-text").text("Ordina per:");
});
//funzione richiamata quando  viene selezionato l'ordinamento per vicinanza alla posizione dell'utente(GPS)
$("#select_ord-menu>li[data-option-index='1']").live("click",function(){
	getUserLocation();
	$("#select_ord-button .ui-btn-text").text(ordinaLbl);
});
