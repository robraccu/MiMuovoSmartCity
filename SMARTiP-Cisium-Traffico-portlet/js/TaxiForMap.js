function GetTaxiForMap(){

	if(view_taxi==true){
				
		TaxiLayer = new google.maps.FusionTablesLayer({
		      map: map,
		      heatmap: { enabled: false },
		      query: {
		        select: colTaxi,
		        from: idTaxi,
		        where: ""
		      },
		      options: {
		        suppressInfoWindows: true,
		        styleId: 2,
		        templateId: 2
		      }
		    });
		  
	TaxiLayer.setMap(map);
	//creo il popup per le informazioni sui taxi
	infoTaxi = new InfoBubble();
	google.maps.event.addListener(TaxiLayer, 'click', function(layerEvent){

		var infoWindow=layerEvent.infoWindowHtml;
		var posTaxi = layerEvent.latLng;
		 if (!infoTaxi.isOpen()) { 
			 infoTaxi.setOptions({	
		        content:infoWindow,
		    			position: posTaxi,
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
			 infoTaxi.open(map);
		    }else{
		    	infoTaxi.close(map);
		    }
	
	});
	view_taxi=false;
	}else{
		infoTaxi.close(map);
		TaxiLayer.setMap(null);
		view_taxi=true;
		
	}
}