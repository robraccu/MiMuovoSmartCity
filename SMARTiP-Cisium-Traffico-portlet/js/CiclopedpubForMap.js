function GetCiclopedpubForMap(){
	
	if(view_ciclopedpub==true){
		$("html").addClass( "ui-loading" );
		
		var timestampP=new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google
		//carico il layer con le piste ciclabili
		CiclopedpubLayer = new google.maps.KmlLayer(kmlPath+ciclopedpubKML+'?'+timestampP,
				{suppressInfoWindows: true,
	        map: map,
	        preserveViewport: true
	    });
		CiclopedpubLayer.setMap(map);
		
		//carico il layer con le info sui noleggi per le bici
		CicloParkLayer = new google.maps.KmlLayer(kmlPath+cicloparkKML+'?'+timestampP,
				{suppressInfoWindows: true,
	        map: map,
	        preserveViewport: true
	    });
		CicloParkLayer.setMap(map);

		//carico il layer con le info sulle rastrelliere
		CicloRacksLayer = new google.maps.KmlLayer(kmlPath+cicloracksKML+'?'+timestampP,
				{suppressInfoWindows: true,
	        map: map,
	        preserveViewport: true
	    });
		CicloRacksLayer.setMap(map);
		//creo il popup per le informazioni sui noleggi e le rastrelliere
		infoCicloPedPub = new InfoBubble();
		infoCicloPark = new InfoBubble();
		infoCicloRacks = new InfoBubble();
		google.maps.event.addListener(CiclopedpubLayer, 'click', function(kmlEvent){

			var nameVia = kmlEvent.featureData.description.split("--")[0];
			var destUso=kmlEvent.featureData.description.split("--")[1];
			var tipologia=kmlEvent.featureData.description.split("--")[2];
			var posLinea = kmlEvent.latLng;
			 if (!infoCicloPedPub.isOpen()) { 
				 infoCicloPedPub.setOptions({	
			        content:"<div  class='infoWindowText' >"+
			    			"<b >"+nameVia+"</b></br><b style='float:left;' ></b>&nbsp;"+destUso+", "+tipologia+
			    			"</div>",
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
		google.maps.event.addListener(CicloParkLayer, 'click', function(kmlEvent){
		
			var namePark = kmlEvent.featureData.name;
			var descriptionPark=kmlEvent.featureData.description;
			var posPark = kmlEvent.latLng;
			 if (!infoCicloPark.isOpen()) { 
				 infoCicloPark.setOptions({	
			        content:"<div  class='infoWindowText' >"+
			    			"<b >"+namePark+"</b></br><b style='float:left;' ></b>&nbsp;"+descriptionPark+
			    			"</div>",
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
		google.maps.event.addListener(CicloRacksLayer, 'click', function(kmlEvent){
			
			var nameRacks = kmlEvent.featureData.name;
			
			var posRacks = kmlEvent.latLng;
			 if (!infoCicloRacks.isOpen()) { 
				 infoCicloRacks.setOptions({	
			        content:"<div  class='infoWindowText' >"+
			    			"<b>"+nameRacks+"</b>"+
			    			"</div>",
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