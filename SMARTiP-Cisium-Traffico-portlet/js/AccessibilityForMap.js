function GetAccessibilityForMap(){
	if(view_accessibility==true){
		
		var timestampA=new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google
		AccessibilityLayer = new google.maps.KmlLayer(accessibilityKML+'?ts='+timestampA,
				{suppressInfoWindows: true,
	        map: map,
	        preserveViewport: true
	    });
		
		AccessibilityLayer.setMap(map);

		infoAccessibility = new InfoBubble();
		google.maps.event.addListener(AccessibilityLayer, 'click', function(kmlEvent){
			 	
				var nameA = kmlEvent.featureData.name;
			
				textA = kmlEvent.featureData.description.split("<br>")[0];
				linkdescr=kmlEvent.featureData.description.split("<br>")[1];
				linkA_url='"'+linkdescr.split('"')[1]+'"';
			    var posA = kmlEvent.latLng;
			    if (!infoAccessibility.isOpen()) { 
			    	infoAccessibility.setOptions({	
			        content:"<div  class='infoWindowText'  >" +
			    			"<b >"+nameA+"</b></br>"+textA+"</br>"+
			    			"<p  style='text-align:right'><a href='#' onclick='infoAccessibilityForMap("+linkA_url+")'>"+dettagliLbl+"</a></p>"+
			    			"</div>"
			    			,
			        position: posA,
			        minWidth: '200',
			        maxWidth: '320',
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
			    	infoAccessibility.open(map);
			    }else{
			    	infoAccessibility.close(map);
			    }
		});
		view_accessibility=false;
	}else{
		infoAccessibility.close(map);
		AccessibilityLayer.setMap(null);
		view_accessibility=true;
	}
}
function infoAccessibilityForMap(link){
	
	
	   $( "#linkA" ).attr("src",link);
	   
	   $( "#linkA" ).dialog( "open" );
}