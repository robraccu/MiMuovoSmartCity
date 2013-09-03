var infoEvents = null;
var infoEvents2 = null;

function GetEventiForMap(){
	if(view_eventi==true){	
	strada=new Array();
	dettaglio=new Array();//Road Maintenance Type o NetworkManagement Type
	erlayout=new Array();// effectOnRoadLayout
	event_type=new Array();//tipo di evento
	inizio_evento=new Array();
	lat_marker=new Array();
	lng_marker=new Array();
	Events=new Array();

		var timestamp=new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google
		EventsLayer = new google.maps.KmlLayer(kmlPath+eventKML+'?ts='+timestamp,
				{suppressInfoWindows: true,
	        map: map,
	        preserveViewport: true
	    });
		EventsLayer.setMap(map);
		infoEvents = new InfoBubble();
		google.maps.event.addListener(EventsLayer, 'click', function(kmlEvent){
			 	
				name = kmlEvent.featureData.name;
			    shortname=name.substring(0,30);
				text = kmlEvent.featureData.description;
			    var pos = kmlEvent.latLng;
			    if (infoEvents2!=null && infoEvents2.isOpen()){
			    	infoEvents.open(map);
			    	infoEvents2.close(map);
			    }
			    if (!infoEvents.isOpen()) { 
			    	infoEvents.setOptions({	
			        content:"<div  class='infoWindowText' >"+
	    					"<p><b>" + text.split("--")[0] + "<\/b><\/p></br>" +
							"<p><b>"+messaggioLbl+"</b>&nbsp;"+ text.split("--")[1]+"</p>"+
							"<p><b>"+dataInizioLbl+"</b>&nbsp;"+text.split("--")[2]+"</p>"+
							"<p><b>"+dataFineLbl+"</b>&nbsp;"+text.split("--")[3]+"</p>"+
	    					//"<p  style='text-align:right'><a href='#' onclick='infoEventiForMap()'>"+dettagliLbl+"</a></p>"+
	    					"<\/div>",
			        position: pos,
			        minWidth: '200',
			        maxWidth: '300',
			        shadowStyle: 1,
			        padding: 0,
			        backgroundColor: '#E49241',
			        borderRadius: 3,
			        arrowSize: 10,
			        borderWidth: 1,
			        borderColor: '#2c2c2c',
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
		 
	}
}//end GetEventi;

function ShowInfoEvent(text){
	var event_type=text.split("--")[0];
	var message=text.split("--")[1];
	var data=text.split("--")[2];
	
	var evento="<div>"+
	   "<p><b>"+eventoLbl+"</b>&nbsp;"+event_type+"</p>"+
	   "<p><b>"+messaggioLbl+"</b>&nbsp;"+ message+"</p>"+
	   "<p><b>"+dataLbl+"</b>&nbsp;"+data+"</p>"+
	   "</div>";
	
	
	$(".infoWindow").append(evento);
}

function infoEventiForMap(){

		infoEvents.close(map);
		infoEvents2 = new InfoBubble();
		    var pos = infoEvents.getPosition();
		    if (!infoEvents2.isOpen()) { 
			  infoEvents2.setOptions({	
		        content:"<div  class='infoWindowText'  >"+
    					"<p><b>" + shortname + "...</b></p>" +
    					"<p  style='text-align:right'><a href='#'onclick='infoEvents.open(map); infoEvents2.close(map);'>"+chiudidettagliLbl+"</a></p>"+

    					"</div>" +
							"<div id='info'>"+
							"<p><b>"+eventoLbl+"</b>&nbsp;"+text.split("--")[0]+"</p>"+
							"<p><b>"+messaggioLbl+"</b>&nbsp;"+ text.split("--")[1]+"</p>"+
							"<p><b>"+dataInizioLbl+"</b>&nbsp;"+text.split("--")[2]+"</p>"+
							"<p><b>"+dataFineLbl+"</b>&nbsp;"+text.split("--")[3]+"</p>"+
							"</div>",
		        position: pos,
		        minWidth: '200',
		        maxWidth: '300',
		        shadowStyle: 1,
		        padding: 0,
		        backgroundColor: '#E49241',
		        borderRadius: 3,
		        arrowSize: 10,
		        borderWidth: 1,
		        borderColor: '#2c2c2c',
		        arrowPosition: 30,
		        backgroundClassName: 'infoWindow',
		        arrowStyle: 2
		      });
			  infoEvents2.open(map);
		    }else{
		    	infoEvents2.close(map);
		    }
}