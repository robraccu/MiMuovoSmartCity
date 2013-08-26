function GetLineeForMap(linea){
	console.log(view_linea);
	$.mobile.changePage( "#mappa_page");
	if(view_linea==true){
		
		$("html").addClass( "ui-loading" );
		
		var timestampL=new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google
		LineaLayer = new google.maps.KmlLayer(kmlPath+lineaKML+linea+".kml?ts="+timestampL,
				{suppressInfoWindows: true,
	        map: map,
	        preserveViewport: true
	    });
		
		LineaLayer.setMap(map);
		
		$("html" ).removeClass( "ui-loading" );
		view_linea=false;
		
		// Set CSS for the control container.
		  var controlUI = document.createElement('div');
		  controlUI.style.padding = '1px 6px';
		  controlUI.style.backgroundColor = 'white';
		  controlUI.style.cursor = 'pointer';
		  controlUI.style.textAlign = 'center';
		  controlUI.style.margin='5px';
		  controlUI.style.border = '1px solid #717B87';
		

		  // Set CSS for the control text.
		  var controlText = document.createElement('div');
		  controlText.style.cssFloat="left";
		  controlText.style.marginTop="2px";
		  controlText.style.fontFamily = 'Arial,sans-serif';
		  controlText.style.fontSize = '13px';
		  controlText.style.fontWeight="bold";
		  controlText.style.paddingLeft = '4px';
		  controlText.style.paddingRight = '4px';
		  controlText.style.color = 'black';
		  controlText.innerHTML = 'Linea '+linea;
		  controlUI.appendChild(controlText);
		  
		  // Set CSS for the control img.
		  var controlImgDiv=document.createElement('div');
		  controlImgDiv.style.cssFloat="left";
		  controlImgDiv.style.paddingLeft = '4px';
		  controlImgDiv.style.paddingRight = '4px';
		  controlImgDiv.style.border = '1px solid #717B87';
		  var controlImg=document.createElement('img');
		  controlImg.src="/MobileSplit-portlet/css/themes/images/icons-18-black-delete.png";
		  controlImg.style.border = '1px solid #717B87';
		  controlUI.appendChild(controlImg);
		  controlUI.index = 1;
		  google.maps.event.addDomListener(controlUI, 'click', function() {
			  LineaLayer.setMap(null);
			  view_linea=true;
			 show_lineaIcon=false;
			 map.controls[google.maps.ControlPosition.RIGHT_TOP].pop();
		  });
		  console.log(map.controls[google.maps.ControlPosition.RIGHT_TOP]);
		  console.log(google.maps.ControlPosition.RIGHT_TOP);
		  //map.controls[google.maps.ControlPosition.RIGHT_TOP]="";
		  map.controls[google.maps.ControlPosition.RIGHT_TOP].clear();
		  map.controls[google.maps.ControlPosition.RIGHT_TOP].push(controlUI);
		  //$( ".lineacontrol" ).buttonMarkup({mini:true, iconpos: "right",icon: "delete"});
	}else{
		
		LineaLayer.setMap(null);
		map.controls[google.maps.ControlPosition.RIGHT_TOP].pop();
		view_linea=true;
		 show_lineaIcon=false;
		 GetLineeForMap(linea);//disegno la nuova linea
	}
	
}