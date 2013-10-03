var infoParking = null;
var infoParking2 = null;

function GetParcheggiForMap(){
	if(view_parcheggio==true){

		var timestampP=new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google
		ParkingLayer = new google.maps.KmlLayer(kmlPath+parkKML+'?ts='+timestampP,
				{suppressInfoWindows: true,
	        map: map,
	        preserveViewport: true
	    });
		
		ParkingLayer.setMap(map);
		ParkingmeterLayer= new google.maps.FusionTablesLayer({
		      map: map,
		      heatmap: { enabled: false },
		      query: {
		        select:colParkimeter,
		        from: idParkimeter,
		        where: ""
		      },
		      options: {
		    	suppressInfoWindows: true,
		        styleId: 2,
		        templateId: 2
		      }
		    });
		ParkingmeterLayer.setMap(map);
		infoParking = new InfoBubble();
		google.maps.event.addListener(ParkingLayer, 'click', function(kmlEvent){
			 	
				var nameP = kmlEvent.featureData.name.split("--")[0];
				var postiLiberi=kmlEvent.featureData.name.split("--")[1];
				textP = kmlEvent.featureData.description;
			    var posP = kmlEvent.latLng;
			    
			    if (infoParking2!=null && infoParking2.isOpen()){
			    	infoParking2.close(map);
			    	infoParking.open(map);
			    }
			    if (!infoParking.isOpen()) { 
			    	infoParking.setOptions({	
			        content:"<div  class='infoWindowText'  >" +
			    			"<b >"+nameP+"</b></br><b style='float:left;'>"+postiLiberiLbl+" &nbsp;</b>"+postiLiberi+
			    			"<p  style='text-align:right'><a href='#' onclick='infoParcheggiForMap(textP)'>"+dettagliLbl+"</a></p>"+
			    			"</div>"
			    			,
			        position: posP,
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
			    	infoParking.open(map);
			    }else{
			    	infoParking.close(map);
			    }
			    
		});
		view_parcheggio=false;
	}else{
		infoParking.close(map);
		 ParkingLayer.setMap(null);
		 ParkingmeterLayer.setMap(null);
		 view_parcheggio=true;
	}
}

function infoParcheggiForMap(textP){
		infoParking.close(map);
		infoParking2 = new InfoBubble();
			    var posP = infoParking.getPosition();
			    if (!infoParking2.isOpen()) { 
			    	infoParking2.setOptions({	
			        content:"<div  class='infoWindowText'  >" +
			    			"<b >"+textP.split("--")[0]+"</b></br><b style='float:left;'>"+postiLiberiLbl+" &nbsp;</b>"+textP.split("--")[3]+			    						    			
			    			"<p  style='text-align:right'><a href='#'onclick='infoParking.open(map); infoParking2.close(map);'>"+chiudidettagliLbl+"</a></p>"+
			    			"</div>" +
			    			"<div id='info'>"+
							   "<p><b>"+dataLbl+"</b>&nbsp;"+textP.split("--")[1]+"</b>&nbsp;</p>"+
							   "<p><b>"+capacitaLbl+"</b>&nbsp;"+textP.split("--")[2]+"</p>"+
							   "<p><b>"+postiLiberiLbl+"</b>&nbsp;"+ textP.split("--")[3]+"</p>"+
							   "<p><b>"+busNavettaLbl+"</b>&nbsp;"+textP.split("--")[4]+"</p>"+
							   "<p><b>"+bicicletteLbl+"</b>&nbsp;"+textP.split("--")[5]+"</p>"+
							   "<p><b>"+lineeBusLbl+"</b>&nbsp;"+textP.split("--")[6]+"</p>"+
							   "<p><b>"+tariffeLbl+"</b>&nbsp;"+textP.split("--")[7]+"</p>"+
							   "<p><b>"+orarioLbl+"</b>&nbsp;"+textP.split("--")[8]+"</p>"+
							   "<p><b>"+telefonoLbl+"</b>&nbsp;"+textP.split("--")[9]+"</p>"+
							   "<p><b>"+idSmsLbl+"</b>&nbsp;"+textP.split("--")[10]+"</p>"+
							   "<p><b>"+abbonamentiLbl+"</b>&nbsp;"+textP.split("--")[11]+"</p>"+
							   "<p><b>"+textP.split("--")[12]+"</b>&nbsp;</p>"+
						   "</div>"
						   ,
			        position: posP,
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
			    	infoParking2.open(map);
			    }else{
			    	infoParking2.close(map);
			    }
}