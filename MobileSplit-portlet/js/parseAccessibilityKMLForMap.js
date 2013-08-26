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
				linkA=kmlEvent.featureData.description.split("<br>")[1];
				linkA_url='"'+linkA.split('"')[1]+'"';
			    var posA = kmlEvent.latLng;
			    if (!infoAccessibility.isOpen()) { 
			    	infoAccessibility.setOptions({	
			        content:"<div  class='infoWindowText' id='infoString'  onclick='ShowInfoAcessibility("+linkA_url+")'>" +
			    			"<p><b >"+nameA+"</b>&nbsp;</p>"+			    			
			    			"</div>"
			    			,
			    			position: posA,
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
function ShowInfoAcessibility(link){
	infoAccessibility.close(map);
	$( "#linkA" ).attr("src",link);	
	$.mobile.changePage( "#infoaccessibility_page", { transition: "fade"} );
	
	
	
}