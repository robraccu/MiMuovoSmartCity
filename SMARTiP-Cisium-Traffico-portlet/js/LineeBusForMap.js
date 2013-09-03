var num_new=null;
var LineeBusLayer = null;

function GetLineeBusForMap(num){
	
	if(view_lineebus==true){
		
		if(LineeBusLayer!=null) LineeBusLayer.setMap(null);
		var milliseconds = new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google
		LineeBusLayer = new google.maps.KmlLayer(kmlPath+lineaKML+num+".kml?ts="+milliseconds,
				{suppressInfoWindows: true,
	        map: map,
	        preserveViewport: true
	    });
		LineeBusLayer.setMap(map);
		view_lineebus=false;
		
	}else if(num!=num_new){
		LineeBusLayer.setMap(null);
		view_lineebus=true;
		GetLineeBusForMap(num);
		
	}else{
		LineeBusLayer.setMap(null);
		view_lineebus=true;
	}
	num_new=num;
}

function DelLineeBusForMap(){
	LineeBusLayer.setMap(null);
	view_lineebus=true;
}