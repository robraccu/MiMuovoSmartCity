function GetParcheggiForMap(){
	
	if(view_parcheggio==true){
		$("html").addClass( "ui-loading" );
		
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
		$("html" ).removeClass( "ui-loading" );
		infoParking = new InfoBubble();
		google.maps.event.addListener(ParkingLayer, 'click', function(kmlEvent){
			 	
				var nameP = kmlEvent.featureData.name.split("--")[0];
				var postiLiberi=kmlEvent.featureData.name.split("--")[1];
				textP = kmlEvent.featureData.description;
			    var posP = kmlEvent.latLng;
			   if (!infoParking.isOpen()) { 
			    	infoParking.setOptions({	
			        content:"<div  class='infoWindowText' id='infoString' onclick='ShowInfoPark(textP)'>"+
			    			"<p><b >"+nameP+"</b>&nbsp;</p><p ><b style='float:left;' >"+postiLiberiLbl+"</b>&nbsp;"+postiLiberi+"</p>"+
			    			"</div>",
			        position: posP,
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
		 show_parkingIcon=false;
	}
}
function ShowInfoPark(text){
	infoParking.close(map);
	$("#infopark_detail").html("");//cancello il contenuto eventuale della pagina infopark
	$.mobile.changePage( "#infopark_page", { transition: "fade"} );
	
	var contentString="<div  id='info'>"+
	   "<p><b>"+text.split("--")[0]+"</b>&nbsp;</p></br>"+
	   "<p><b>"+dataLbl+"</b>&nbsp;"+text.split("--")[1]+"</b>&nbsp;</p>"+
	   "<p><b>"+capacitaLbl+"</b>&nbsp;"+text.split("--")[2]+"</p>"+
	   "<p><b>"+postiLiberiLbl+"</b>&nbsp;"+ text.split("--")[3]+"</p>"+
	   "<p><b>"+navettaLbl+"</b>&nbsp;"+text.split("--")[4]+"</p>"+
	   "<p><b>"+bicicletteLbl+"</b>&nbsp;"+text.split("--")[5]+"</p>"+
	   "<p><b>"+lineeBusLbl+"</b>&nbsp;"+text.split("--")[6]+"</p>"+
	   "<p><b>"+tariffeLbl+"</b>&nbsp;"+text.split("--")[7]+"</p>"+
	   "<p><b>"+orarioLbl+"</b>&nbsp;"+text.split("--")[8]+"</p>"+
	   "<p><b>"+telefonoLbl+"</b>&nbsp;"+text.split("--")[9]+"</p>"+
	   "<p><b>"+idsmsLbl+"</b>&nbsp;"+text.split("--")[10]+"</p>"+
	   "<p><b>"+abbonamentoLbl+"</b>&nbsp;"+text.split("--")[11]+"</p>"+
	   "<p><b>"+homepageLbl+"</b>&nbsp;"+text.split("--")[13]+"</p>"+
	   "<p><b>"+text.split("--")[12]+"</b>&nbsp;</p>"+
	   "</div>";
	
	$("#infopark_detail").append(contentString);
}