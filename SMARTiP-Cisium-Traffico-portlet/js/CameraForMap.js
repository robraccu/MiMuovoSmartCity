var infoCamera=null;
var infoCamera2=null;

function GetTelecamereForMap(){
	
	if(view_telecamere==true){
		
		
		var timestampC=new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google
		CameraLayer = new google.maps.KmlLayer(kmlPath+cameraKML+'?'+timestampC,
				{suppressInfoWindows: true,
	        	map: map,
	        	preserveViewport: true
	    });
		CameraLayer.setMap(map);
		
		infoCamera = new InfoBubble();
		google.maps.event.addListener(CameraLayer, 'click', function(kmlEvent){
			 	
				 nameC = kmlEvent.featureData.name;
				 snippetC=kmlEvent.featureData.snippet;
				textC = kmlEvent.featureData.description;
			    var posC = kmlEvent.latLng;
			    
			    if (infoCamera2!=null && infoCamera2.isOpen()){
			    	infoCamera.open();
			    	infoCamera2.close();
			    }
			   if (!infoCamera.isOpen()) { 
			    	infoCamera.setOptions({	
			        content:"<div  class='infoWindowText' >"+
			    			"<b >"+nameC+"</b></br>"+textC+		    			
			    			"</div>",
			    			position: posC,
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

function infoCameraForMap(name,snippet,text){
	
	infoCamera.close(map);
	infoCamera2 = new InfoBubble();
		    var posC = infoCamera.getPosition();
		    if (!infoCamera2.isOpen()) { 
		    	
		    	infoCamera2.setOptions({	
		    		 content:"<div  class='infoWindowText' id='infoStringSu' onclick='infoCamera.open(map); infoCamera2.close(map);'>"+
		    		 "<b >"+name+"</b></br>"+snippet+
		    			"</div>"+
		    			"<div  id='info'>"+	
		    			   "<p><b>"+name+"</b>&nbsp;</p></br>"+
		    			   "<p>"+text+"</p>"+
		    			   "</div>",
		    			   position: posC,
					        minWidth: '200',
					        maxWidth: '320',
					        shadowStyle: 1,
					        padding: 0,
					        backgroundColor: '#E49241',
					        borderRadius: 3,
					        arrowSize: 10,
					        borderWidth: 1,
					        borderColor: '#2c2c2c',
					        disableAutoPan: false,
					        hideCloseButton: false,
					        arrowPosition: 30,
					        backgroundClassName: 'infoWindow',
					        arrowStyle: 2
					      });
		    	
					 		infoCamera2.open(map);
		    	
						}else{
							
							infoCamera2.close(map);
							}
	
	
}