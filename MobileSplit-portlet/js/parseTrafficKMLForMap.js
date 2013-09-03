function GetTrafficForMap(){
	
	if(view_traffico==true){
		$("html").addClass( "ui-loading" );
		
		var timestampT=new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google
		TrafficLayer = new google.maps.KmlLayer(kmlPath+trafficKML+'?'+timestampT,
				{suppressInfoWindows: true,
	        map: map,
	        preserveViewport: true
	    });
		TrafficLayer.setMap(map);
		
		$("html" ).removeClass( "ui-loading" );
		view_traffico=false;
	}else{
		
		TrafficLayer.setMap(null);
		view_traffico=true;
		 show_trafficIcon=false;
	}
}