function GetTelecamereForMap(){
	
	if(view_telecamere==true){
		$("html").addClass( "ui-loading" );
		
		var timestampC=new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google
		CameraLayer = new google.maps.KmlLayer(kmlPath+cameraKML+'?'+timestampC,
				{suppressInfoWindows: true,
	        map: map,
	        preserveViewport: true
	    });
		CameraLayer.setMap(map);
		
		$("html" ).removeClass( "ui-loading" );
		infoCamera = new InfoBubble();
		google.maps.event.addListener(CameraLayer, 'click', function(kmlEvent){
			 	
			nameC = kmlEvent.featureData.name;
			 snippetC=kmlEvent.featureData.snippet;
			
			textC = kmlEvent.featureData.description;
			    var posC = kmlEvent.latLng;
			   if (!infoCamera.isOpen()) { 
			    	infoCamera.setOptions({	
			        content:"<div  class='infoWindowText' id='infoString' onclick='ShowInfoCamera(nameC,snippetC,textC)'>"+
			    			"<p><b >"+nameC+"</b>&nbsp;</p><p ><b style='float:left;' ></b>&nbsp;"+snippetC+"</p>"+
			    			"</div>",
			        position: posC,
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
			 	infoCamera.open(map);
			    }else{
			    	infoCamera.close(map);
			    }
		});
		view_telecamere=false;
	}else{
		infoCamera.close(map);
		 CameraLayer.setMap(null);
		 view_telecamere=true;
		 show_cameraIcon=false;
	}
}
function ShowInfoCamera(name,snippet,text){
	infoCamera.close(map);
	$("#infocamera_detail").html("");//cancello il contenuto eventuale della pagina infoevent
	$.mobile.changePage( "#infocamera_page", { transition: "fade"} );
	
	var contentString="<div  id='info'>"+
	   "<p><b>"+name+"</b>&nbsp;</p></br>"+
	   "<p>"+descrcameraLbl+"</p>"+
	   "<p>"+text+"</p>"+
	   "</div>";
	
	$("#infocamera_detail").append(contentString);
};