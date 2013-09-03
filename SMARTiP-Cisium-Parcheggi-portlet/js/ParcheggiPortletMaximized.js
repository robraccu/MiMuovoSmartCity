
function getParcheggi(){
	
	
	var postiLib=new Array();
	 descriptionPark=new Array();
	 nameParking=new Array();
	 postiLiberi=new Array();
	postiLiberiToSort=new Array();
	 contentStrings=new Array();
	
	$.ajax({
		 type: "GET",
		 url:parkKMLproxy,
		 dataType: "xml",
		 contentType:"text/xml,charset=UTF-8",
		 error:function(xml){ 
		 alert(errorKML);
		 },
		 success: function(xml)
		 {
			 $(xml).find("Placemark").each(function()
					 {
				 		descriptionPark.push($(this).find("description").text());
				 		var postiLiberiTemp=$(this).find("description").text().split("--")[3];
				 		
				
				 		if(postiLiberiTemp=="n.d."){
				 			postiLib.push(datoNoDisp);
				 			postiLiberi.push(-1);
				 			postiLiberiToSort.push(-1);
				 		}else if(postiLiberiTemp==0){
				 			postiLib.push('<img src="'+imagesPath+pallinorosso+'">');
				 			postiLiberi.push(postiLiberiTemp);
				 			postiLiberiToSort.push(postiLiberiTemp);
				 		}else{
				 			postiLib.push('<img src="'+imagesPath+pallinoverde+'">');
					 		postiLiberi.push(postiLiberiTemp);
					 		postiLiberiToSort.push(postiLiberiTemp);
					 	}
				 		
						
					 });
			
			
				for(var i=0;i<descriptionPark.length;i++){
				///////////////////////////////////////////////////////////////////////////////
					nameParking.push(descriptionPark[i].split("--")[0]);
					 if(postiLiberi[i]==-1){
					 	ptnd="(n.d.)";
					 	ptnum=postiLib[i];
			 		 }else {
			 			ptnd=postiLib[i];
			 			ptnum=postiLiberi[i];
					 }
				////////////////////////////////////////////////////////////////////////////////
					 
					//creazione del codice html da visualizzare nelle infoWindow del marker
					 var contentString="<li id='info' class='info'>"+
										   "<p class='namePark'><span class='imgPark'>"+ptnd+"</span><b>"+descriptionPark[i].split("--")[0]+"</b>&nbsp;</p>"+
										   "<div id='dettagliParcheggio'>"+
											   "<p class='labelPark'><b>"+capacitaLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[2]+"</p>"+
											   "<p class='labelPark'><b>"+postiLiberiLbl+"</b>&nbsp;"+ptnum+"</p>"+
											   "<p class='labelPark'><b>"+navettaLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[4]+"</p>"+
											   "<p class='labelPark'><b>"+bicicletteLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[5]+"</p>"+
											   "<p class='labelPark'><b>"+lineeBusLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[6]+"</p>"+
											   "<p class='labelPark'><b>"+tariffeLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[7]+"</p>"+
											   "<p class='labelPark'><b>"+orarioLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[8]+"</p>"+
											   "<p class='labelPark'><b>"+telefonoLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[9]+"</p>"+
											   "<p class='labelPark'><b>"+idsmsLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[10]+"</p>"+
											   "<p class='labelPark'><b>"+abbonamentoLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[11]+"</p>"+
											   "<p class='labelPark'><b>"+homepageLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[13]+"</p>"+
											   "<p class='labelPark'><b>"+descriptionPark[i].split("--")[12]+"</b>&nbsp;</p>"+
											"</div>"+
									   "</li>";
					 contentStrings.push(contentString);
					 
					 
				}
				ordinaParcheggi (postiLiberiToSort,orddispLbl);
		 }//end success function
		 
	});//end ajax request
	
}
function ordinaParcheggi (arrayToSort,tipo) {
	if(tipo==orddispLbl){
	arrayToSort.sort(confronta);
	for(var i=0;i<arrayToSort.length;i++){
		k=i+1;
		while(k<arrayToSort.length){
		
			if(parseInt(arrayToSort[i])==parseInt(arrayToSort[k])){
				arrayToSort.splice(k,1);
				k=i+1;
			}else{
				k++;
			}
		}
	}
	}else{
		arrayToSort.sort();
	}
	
	$("#elenco_parcheggi").html("");
	/////////////////////////////////////////////////////////////////////////////
	if(tipo==orddispLbl){//ordino per disponibilità
	for ( var i = arrayToSort.length - 1; i >= 0; i--) {
		// alert("arrayToSort "+arrayToSort[i]);
		for ( var j = 0; j < postiLiberi.length; j++) {
			//alert(j+" posti "+postiLiberi[j]);
			if (parseInt(arrayToSort[i]) == parseInt(postiLiberi[j])) {
				$("#elenco_parcheggi").append("<ul>"+contentStrings[j]+"</ul>").trigger('create');
			}
		}
	}
	$("#ordinamento").text(ordnomeLbl);
	$("#ordinamento").attr("href","javascript:ordinaParcheggi(nameParking,'"+ordnomeLbl+"')"); 
	}else if(tipo==ordnomeLbl){//ordino per nome
		
		for(var i=0;i<arrayToSort.length;i++){
			
			for (var j=0;j<descriptionPark.length;j++){
				
				
			if(arrayToSort[i]==descriptionPark[j].split("--")[0]){
				
				$("#elenco_parcheggi").append("<ul>"+contentStrings[j]+"</ul>").trigger('create');
				}
			}
		}
		$("#ordinamento").text(orddispLbl);
		$("#ordinamento").attr("href","javascript:ordinaParcheggi(postiLiberiToSort,'"+orddispLbl+"')"); 
	}
	/////////////////////////////////////////////////////////////////////////////
}
function confronta(a,b)
{
	return a-b;
}


getParcheggi();