function GetEventiForMap(){
	
	
	event_type=new Array();//tipo di evento
	Events=new Array();
	if(view_eventi==true){
		
		$("html").addClass( "ui-loading" );
		var timestampE=new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google
		EventsLayer = new google.maps.KmlLayer(kmlPath+eventKML+'?'+timestampE,
				{suppressInfoWindows: true,
	        map: map,
	        preserveViewport: true
	    });
		EventsLayer.setMap(map);
		
		 $("html" ).removeClass( "ui-loading" );
		infoEvents = new InfoBubble();
		google.maps.event.addListener(EventsLayer, 'click', function(kmlEvent){
			 	
				var name = kmlEvent.featureData.name;
			    var shortname=name.substring(0,30);
				text = kmlEvent.featureData.description;
			    var pos = kmlEvent.latLng;
			    if (!infoEvents.isOpen()) { 
				  infoEvents.setOptions({	
			        content:"<div  class='infoWindowText' id='infoString' onclick='ShowInfoEvent(text)'>"+
	    			"<p><b>" + shortname + "...<\/b><\/p><\/div>",
			        position: pos,
			        shadowStyle: 1,
			        padding: 0,
			        backgroundColor: 'rgb(57,57,57)',
			        borderRadius: 20,
			        arrowSize: 10,
			        borderWidth: 1,
			        borderColor: '#2c2c2c',
			        disableAutoPan: false,
			        hideCloseButton: true,
			        arrowPosition: 30,
			        backgroundClassName: 'infoWindow',
			        arrowStyle: 2
			      });
				  infoEvents.open(map);
			    }else{
			    	infoEvents.close(map);
			    }
		});
	view_eventi=false;
	
	}else{
		
		infoEvents.close(map);
		EventsLayer.setMap(null);
		 view_eventi=true;
		 show_eventsIcon=false;
		 center_map=new google.maps.LatLng(44.49476,11.346595); 
		 zoom_map=14;
		 
	}
	
}//end GetEventi;

function ShowInfoEvent(text){
	$("#elenco_parcheggi").html("");
	$("#infoevent_detail").html("");//cancello il contenuto eventuale della pagina infoevent
	infoEvents.close(map);
	$.mobile.changePage( "#infoevent_page", { transition: "fade"} );
	var event_type=text.split("--")[0];
	var message=text.split("--")[1];
	
	var data_start=text.split("--")[2];
	var data_end=text.split("--")[3];
	
	var evento="<div>"+
	   "<p><b>"+eventoLbl+"</b>&nbsp;"+event_type+"</p>"+
	   "<p><b>"+messaggioLbl+"</b>&nbsp;"+ message+"</p>"+
	   "<p><b>"+dataInizioLbl+"</b>&nbsp;"+data_start+"</p>"+
	   "<p><b>"+dataFineLbl+"</b>&nbsp;"+data_end+"</p>"+
	   "</div>";
	
	
	$("#infoevent_detail").append(evento);
}