function GetTelecamereForMap(){
	
	if(view_telecamere==true){
		$("html").addClass( "ui-loading" );
		
		var timestampC=new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google
		SirioLayer = new google.maps.FusionTablesLayer({
		      map: map,
		      preserveViewport: true,
		      heatmap: { enabled: false },
		      query: {
		          select: colSirio,
		          from: idSirio,
		          where: ""
		        },
		        options: {
		          suppressInfoWindows: true,
		          styleId: 2,
		          templateId: 2
		        }
		    });
		SirioLayer.setMap(map);
		RitaLayer = new google.maps.FusionTablesLayer({
		      map: map,
		      preserveViewport: true,
		      heatmap: { enabled: false },
		      query: {
		          select: colRita,
		          from: idRita,
		          where: ""
		        },
		        options: {
		          suppressInfoWindows: true,
		          styleId: 2,
		          templateId: 2
		        }
		    });
		RitaLayer.setMap(map);
		$("html" ).removeClass( "ui-loading" );
		infoSirio = new InfoBubble();
		google.maps.event.addListener(SirioLayer, 'click', function(layerEvent){
				
			var infoWindow=layerEvent.infoWindowHtml;
			var posS = layerEvent.latLng;
			   if (!infoSirio.isOpen()) { 
				   infoSirio.setOptions({	
					content:infoWindow,
			        position: posS,
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
				   infoSirio.open(map);
			    }else{
			    	infoSirio.close(map);
			    }
		});
		infoRita = new InfoBubble();
		google.maps.event.addListener(RitaLayer, 'click', function(layerEvent){
			
			var posR = layerEvent.latLng;
			var infoWindow=layerEvent.infoWindowHtml;
			console.log(infoWindow);
			   if (!infoRita.isOpen()) { 
				   infoRita.setOptions({	

				    content:infoWindow,   
			        position: posR,
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
				   infoRita.open(map);
			    }else{
			    	infoRita.close(map);
			    }
		});
		view_telecamere=false;
	}else{
		infoSirio.close(map);
		infoRita.close(map);
		SirioLayer.setMap(null);
		RitaLayer.setMap(null);
		 view_telecamere=true;
		 show_cameraIcon=false;
	}
}
