function GetCiclopedpubForMap(){
	
	if(view_ciclopedpub==true){
		$("html").addClass( "ui-loading" );
		
		var timestampP=new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google
		//carico il layer con le piste ciclabili
		CiclopedpubLayer=new google.maps.FusionTablesLayer({
		      map: map,
		      preserveViewport: true,
		      heatmap: { enabled: false },
		      query: {
		          select:colCiclopedpub,
		          from: idCiclopedpub,
		          where: ""
		        },
		        options: {
		        suppressInfoWindows: true,
		          styleId: 2,
		          templateId: 2
		        }
		 });
		CiclopedpubLayer.setMap(map);
		
		//carico il layer con le info sui noleggi per le bici
		CicloParkLayer=new google.maps.FusionTablesLayer({
		      map: map,
		      preserveViewport: true,
		      heatmap: { enabled: false },
		      query: {
		          select:colCicloPark,
		          from:idCicloPark,
		          where: ""
		        },
		        options: {
		        suppressInfoWindows: true,
		          styleId: 2,
		          templateId: 2
		        }
		 });
		CicloParkLayer.setMap(map);

		//carico il layer con le info sulle rastrelliere
		CicloRacksLayer=new google.maps.FusionTablesLayer({
		      map: map,
		      preserveViewport: true,
		      heatmap: { enabled: false },
		      query: {
		          select: colCicloRacks,
		          from:idCicloRacks,
		          where: ""
		        },
		        options: {
		        suppressInfoWindows: true,
		          styleId: 2,
		          templateId: 2
		        }
		 });
		CicloRacksLayer.setMap(map);
		//creo il popup per le informazioni sui noleggi e le rastrelliere
		infoCicloPedPub = new InfoBubble();
		infoCicloPark = new InfoBubble();
		infoCicloRacks = new InfoBubble();
		google.maps.event.addListener(CiclopedpubLayer, 'click', function(layerEvent){

			var infoWindow=layerEvent.infoWindowHtml;
			var posLinea = layerEvent.latLng;
			 if (!infoCicloPedPub.isOpen()) { 
				 infoCicloPedPub.setOptions({	
			        content:infoWindow,
			    			position: posLinea,
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
				 infoCicloPedPub.open(map);
			    }else{
			    	infoCicloPedPub.close(map);
			    }
		
		});
		google.maps.event.addListener(CicloParkLayer, 'click', function(layerEvent){
		
			var infoWindow=layerEvent.infoWindowHtml;
			var posPark = layerEvent.latLng;
			 if (!infoCicloPark.isOpen()) { 
				 infoCicloPark.setOptions({	
			        content:infoWindow,
			    			position: posPark,
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
				 infoCicloPark.open(map);
			    }else{
			    	infoCicloPark.close(map);
			    }
		
		});
		google.maps.event.addListener(CicloRacksLayer, 'click', function(layerEvent){
			
			var infoWindow=layerEvent.infoWindowHtml;
			var posRacks =layerEvent.latLng;
			 if (!infoCicloRacks.isOpen()) { 
				 infoCicloRacks.setOptions({	
			        content:infoWindow,
			    			position: posRacks,
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
				 infoCicloRacks.open(map);
			    }else{
			    	infoCicloRacks.close(map);
			    }
		
		});
		$("html" ).removeClass( "ui-loading" );
		view_ciclopedpub=false;
	}else{
		infoCicloPedPub.close(map);
		infoCicloPark.close(map);
		infoCicloRacks.close(map);
		CiclopedpubLayer.setMap(null);
		CicloRacksLayer.setMap(null);
		CicloParkLayer.setMap(null);
		 view_ciclopedpub=true;
		 show_ciclopedpubIcon=false;
	}
}