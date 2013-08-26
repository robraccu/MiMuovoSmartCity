
		 
function getEventi(){
	strada=new Array();
	dettaglio=new Array();//Road Maintenance Type o NetworkManagement Type
	erlayout=new Array();// effectOnRoadLayout
	event_type=new Array();//tipo di evento
	inizio_evento=new Array();
	fine_evento=new Array();
	coord_evento=new Array();
	event_rows=new Array();
	typeAZ="none";//se è up allora l'elenco è ordinato in maniera decrescente per tipo di evento
	messageAZ="none";//se è none allora l'elenco non è ordinato  per nome di strada
	startAZ="none";//se è none allora l'elenco non è ordinato  per data di inizio evento
	endAZ="none";//se è none allora l'elenco non è ordinato  per data di fine evento
	event_col=document.getElementById("eventcol");
	message_col=document.getElementById("messagecol");	
	startdata_col=document.getElementById("startdatacol");	
	enddata_col=document.getElementById("enddatacol");	
	$.ajax({
		 type: "GET",
		 url: eventXMLproxy,
		 dataType: "xml",
		 contentType:"text/xml,charset=UTF-8",
		 
		 error:function(xml){ 
		 alert(errload);
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
							//il file restituisce un evento di congestione come "Livello di servizio"
							//ma per maggiore comprensibilità di lettura per l'utente verrà mostrata
							//la dicitura "Congestione"
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
			event_rows[i]= {type:event_type[i], message:strada[i], start:inizio_evento[i], end:fine_evento[i],coord:coord_evento[i]};
			}
			//ordina gli eventi per tipo di evento in ordine alfabetico e
			//li inserisce nella tabella
			OrderByType(event_rows);
	}// end success function
	});//end $ajax
}//end GetEventi;

//funzione richiamata quando clicco sull'icona della mappa di un elemento della lista degli eventi
$(".mappa_event_link").live("click",function(){
	var id_link=$(this).attr("id");
	var coord_index=id_link.split("_")[3];
	var latitude_evento=event_rows[coord_index].coord.split("-")[0];
	var longitude_evento=event_rows[coord_index].coord.split("-")[1];
	show_parkingIcon=false;
	show_eventsIcon=true;
	center_map=new google.maps.LatLng(latitude_evento,longitude_evento);
	
	zoom_map=19;
	var eventString=show_eventsIcon+"-"+zoom_map+"-"+latitude_evento+"-"+longitude_evento; 

	Liferay.fire('eventSelected', {eventString: eventString});
});
function InsertEvents(){
	$("#loading_eventi").html("");//tolgo la scritta "caricamento eventi"
	//inserisco gli eventi nella lista
	for(var i=0;i<strada.length;i++){
		
		//assegno le icone in base all'evento e allo stato della portlet
		if(stateWin=="maximized"){
	
			if(event_type[i]==lavoriLbl){
				
				imageString=lavori;
			}else if (event_type[i]==congestioneLbl){
				
				imageString=congestione;
			}else{
				
				imageString=traffico;
			}
		}else{
			if(event_type[i]==lavoriLbl){
				
				imageString=lavori_small;
			}else if (event_type[i]==congestioneLbl){

				imageString=congestione_small;
			}else{
				
				imageString=traffico_small;
			}
		}
		//sostituisco ai termini DATEX dei termini in italiano
		if(dettaglio[i]=="roadWorks"){
	
			dettaglio[i]=manutenzioneLbl;
		}else if(dettaglio[i]=="repairWorks"){
	
			dettaglio[i]=riparazioneLbl;
		}else if(dettaglio[i]=="singleAlternateLineTraffic"){
	
			dettaglio[i]=sensoAltLbl;
		}else if(dettaglio[i]=="stationaryTraffic"){
	
			dettaglio[i]=traffIntLbl;
		}else{
			dettaglio[i]="";
		}
		if (erlayout[i]=="narrowLanes"){
			erlayout[i]=restringimentoLbl;
		}else{
			erlayout[i]="";
		}
		
		//setto la data di inizio e fine evento
		data_inizio=inizio_evento[i].split("T")[0];
		orario_inizio=inizio_evento[i].split("T")[1];
		giorno_inizio=data_inizio.split("-")[2];
		mese_inizio=data_inizio.split("-")[1];
		anno_inizio=data_inizio.split("-")[0];
		ora_inizio=orario_inizio.split("+")[0];

		data_fine=fine_evento[i].split("T")[0];
		orario_fine=fine_evento[i].split("T")[1];
		giorno_fine=data_fine.split("-")[2];
		mese_fine=data_fine.split("-")[1];
		anno_fine=data_fine.split("-")[0];
		ora_fine=orario_fine.split("+")[0];
		
		var event= "";
		//tutti gli eventi diversi dalla congestione devono contenere un link per la mappa
		//tranne se la lista è visualizzata in modalità maximized
		if(event_type[i]!=congestioneLbl && stateWin!="maximized"){
		 event=      
			'<div class="divrecord image">'+
			'<img src='+imageString+' \/>'+
			'</div>'+
			'<div class="divrecord evento"><p>'+
			'<a href="#" title="'+linkeventLbl+'" class="mappa_event_link" id="mappa_event_link_'+i+'">'+event_type[i]+'</a>'+
			'</p></div>'+
			'<div class="divrecord messaggio"><p>'+
			strada[i]+
			'</p></div>'+
			'<div class="divrecord startdata"><p>'+
			giorno_inizio+'/'+mese_inizio+'/'+anno_inizio+' '+ora_inizio+
			'</p></div>'+			
			'<div class="divrecord enddata"><p>'+
			giorno_fine+'/'+mese_fine+'/'+anno_fine+' '+ora_fine+
			'</p></div>';

		}else{
			 event=      
				'<div class="divrecord image">'+
				'<img src='+imageString+' \/>'+
				'</div>'+
				'<div class="divrecord evento">'+
				'<p>'+event_type[i]+'</p>'+
				'</div>'+
				'<div class="divrecord messaggio"><p>'+
				strada[i]+
				'</p></div>'+
				'<div class="divrecord startdata"><p>'+
				giorno_inizio+'/'+mese_inizio+'/'+anno_inizio+' '+ora_inizio+
				'</p></div>'+			
				'<div class="divrecord enddata"><p>'+
				giorno_fine+'/'+mese_fine+'/'+anno_fine+' '+ora_fine+
				'</p></div>';
			
		}

		$("<div class='listaeventi'></div>").html(event).appendTo($("#loading_eventi"));

	}
}
function OrderByType(rows){
	messageAZ="none";
	startAZ="none";
	endAZ="none";
	startdata_col.innerHTML=startdatacolLbl;
	enddata_col.innerHTML=enddatacolLbl;
	message_col.innerHTML=messagecolLbl;
	if(typeAZ!="up"){
		typeAZ="up";
		event_col.innerHTML=eventcolLbl+" &uArr;";
		rows.sort(function(a,b){
			var x = a.type.toLowerCase();
			var y = b.type.toLowerCase();
			
			return ((x < y) ? -1 : ((x > y) ? 1 : 0));			
	});
	}else{	
		typeAZ="down";
		event_col.innerHTML=eventcolLbl+" &dArr;";
		
		rows.sort(function(a,b){
			var x = a.type.toLowerCase();
			var y = b.type.toLowerCase();
			
			return ((x < y) ? 1 : ((x > y) ? -1 : 0));	
		});
		
	}
	 UpdateArrays(rows);
	 InsertEvents();
	
}
function OrderByMessage(rows){
	typeAZ="none";
	startAZ="none";
	endAZ="none";
	event_col.innerHTML=eventcolLbl;
	startdata_col.innerHTML=startdatacolLbl;
	enddata_col.innerHTML=enddatacolLbl;
	if(messageAZ!="up"){
		messageAZ="up";
		message_col.innerHTML=messagecolLbl+" &uArr;";
		rows.sort(function(a,b){
			var x = a.message.toLowerCase();
			var y = b.message.toLowerCase();
			
			return ((x < y) ? -1 : ((x > y) ? 1 : 0));			
	});
	}else{	
		messageAZ="down";
		message_col.innerHTML=messagecolLbl+" &dArr;";
		
		rows.sort(function(a,b){
			var x = a.message.toLowerCase();
			var y = b.message.toLowerCase();
			
			return ((x < y) ? 1 : ((x > y) ? -1 : 0));	
		});
		
		
	}
	 UpdateArrays(rows);
	 InsertEvents();
	
}
function OrderByStartDate(rows){
	
	typeAZ="none";
	messageAZ="none";
	endAZ="none";
	event_col.innerHTML=eventcolLbl;
	message_col.innerHTML=messagecolLbl;
	enddata_col.innerHTML=enddatacolLbl;
	if(startAZ!="up"){
		startAZ="up";
		startdata_col.innerHTML=startdatacolLbl+" &uArr;";
		rows.sort(function(a,b){
			
			var x = new Date(a.start);
			var y = new Date(b.start);
			
			
			return ((x < y) ? -1 : ((x > y) ? 1 : 0));			
	});
	}else{	
		startAZ="down";
		startdata_col.innerHTML=startdatacolLbl+" &dArr;";
		
		rows.sort(function(a,b){
			var x = new Date(a.start);
			var y = new Date(b.start);
			
			return ((x < y) ? 1 : ((x > y) ? -1 : 0));	
		});
		
		
	}
	 UpdateArrays(rows);
	 InsertEvents();
	
}
function OrderByEndDate(rows){
	
	typeAZ="none";
	messageAZ="none";
	startAZ="none";
	event_col.innerHTML=eventcolLbl;
	message_col.innerHTML=messagecolLbl;
	startdata_col.innerHTML=startdatacolLbl;
	if(endAZ!="up"){
		endAZ="up";
		enddata_col.innerHTML=enddatacolLbl+" &uArr;";
		
		rows.sort(function(a,b){
			
			var x = new Date(a.end);
			var y = new Date(b.end);
			
			
			return ((x < y) ? -1 : ((x > y) ? 1 : 0));			
	});
	}else{	
		endAZ="down";
		enddata_col.innerHTML=enddatacolLbl+" &dArr;";
		
		rows.sort(function(a,b){
			var x = new Date(a.end);
			var y = new Date(b.end);
			
			return ((x < y) ? 1 : ((x > y) ? -1 : 0));	
		});
		
		
	}
	 UpdateArrays(rows);
	 InsertEvents();
	
}
function UpdateArrays(row){
	
	for(var i=0; i<row.length;i++){
		
		event_type[i]=row[i].type;
		strada[i]=row[i].message;
		inizio_evento[i]=row[i].start;
		fine_evento[i]=row[i].end;
	}
}
getEventi();