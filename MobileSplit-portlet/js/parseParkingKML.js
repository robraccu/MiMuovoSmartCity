function GetParcheggi(){
	descriptionPark=new Array();
	nameParking=new Array();
	postiLiberi=new Array();
	postiLiberiToSort=new Array();
	rowHeaders=new Array();
	rowContents=new Array();
	coord_parcheggio=new Array();
	$.ajax({
		 type: "GET",
		 url:parkKMLproxy,
		 dataType: "xml",
		 contentType:"text/xml,charset=UTF-8",
		 error:function(xml){ 
		 alert("error");
		 
		 },
		 success: function(xml)
		 {
			 $(xml).find("Placemark").each(function()
					 {
				 		descriptionPark.push($(this).find("description").text());
				 		var postiLiberiTemp=$(this).find("description").text().split("--")[3];
				 		if(postiLiberiTemp=="n.d."){
				 			postiLiberi.push(-1);
				 			postiLiberiToSort.push(-1);
				 		}else{
				 		postiLiberi.push(postiLiberiTemp);
				 	
				 		postiLiberiToSort.push(postiLiberiTemp);
					 	}
				 		coord_parcheggio.push($(this).find("coordinates").text());
					 });
			
				for(var i=0;i<descriptionPark.length;i++){
					nameParking.push(descriptionPark[i].split("--")[0]);
					
					var rowHeader=descriptionPark[i].split("--")[0]+"&nbsp;posti liberi:&nbsp;"+ descriptionPark[i].split("--")[3]+"</h3></br>";
					var rowContent="<div  id='info'>"+
					   "<p><b>"+descriptionPark[i].split("--")[0]+"</b>&nbsp;</p>"+
					   "<p><a href='#'rel='external'id='mappa_parking_link_"+i+"'class='mappa_parking_link'>"+visualizzaLbl+"</a></p>"+
					   "<p><b>"+dataLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[1]+"</b>&nbsp;</p>"+	  
					   "<p><b>"+capacitaLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[2]+"</p>"+
					   "<p><b>"+postiLiberiLbl+"</b>&nbsp;"+ descriptionPark[i].split("--")[3]+"</p>"+
					   "<p><b>"+navettaLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[4]+"</p>"+
					   "<p><b>"+bicicletteLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[5]+"</p>"+
					   "<p><b>"+lineeBusLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[6]+"</p>"+
					   "<p><b>"+tariffeLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[7]+"</p>"+
					   "<p><b>"+orarioLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[8]+"</p>"+
					   "<p><b>"+telefonoLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[9]+"</p>"+
					   "<p><b>"+idsmsLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[10]+"</p>"+
					   "<p><b>"+abbonamentoLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[11]+"</p>"+
					   "<p><b>"+homepageLbl+"</b>&nbsp;"+descriptionPark[i].split("--")[13]+"</p>"+
					   "<p><b>"+descriptionPark[i].split("--")[12]+"</b>&nbsp;</p>"+
					   "</div>";
					rowHeaders.push(rowHeader);
					rowContents.push(rowContent);
					
				}
				
				ordinaParcheggi (postiLiberiToSort,orddispLbl);
				 $("html" ).removeClass( "ui-loading" );
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
	if(tipo==orddispLbl){//ordino per disponibilità
		
		for(var i=arrayToSort.length-1;i>=0;i--){
		
			
			for (var j=0;j<postiLiberi.length;j++){
			
				if(parseInt(arrayToSort[i])==parseInt(postiLiberi[j])){
				
					var id_elementList="element_"+j;
					var elementList=$('<div data-role="collapsible" id='+id_elementList+'">'+
						'<h3>'+rowHeaders[j]+'</h3>'+
						'<p>'+rowContents[j]+'</p>'+
					'</div>');
				
					$("#elenco_parcheggi").append(elementList).trigger('create');
			
				}
			}
		}
	}else{//ordino per nome
		for(var i=0;i<arrayToSort.length;i++){
			
			for (var j=0;j<descriptionPark.length;j++){
				
			if(arrayToSort[i]==descriptionPark[j].split("--")[0]){
				
				
				var id_elementList="element_"+j;
				var elementList=$('<div data-role="collapsible" id='+id_elementList+'">'+
						'<h3>'+rowHeaders[j]+'</h3>'+
						'<p>'+rowContents[j]+'</p>'+
					'</div>');
				
				$("#elenco_parcheggi").append(elementList).trigger('create');
	
			}
		}
		
	}
	}

}
function confronta(a,b)
{
	return a-b;
}
/*////////////////////CODICE RELATIVO AGLI ELEMENTI DELLA PAGINA PARCHEGGI_PAGE/////////////*/
$("#parcheggi_page").live('pageinit',function(event){

	//istruzioni per far sì che quando si scorre la lista non rimanga un effetto di hover sui suoi elementi
	$('.ui-btn').live('vmouseover', function() {
		$('.ui-btn').removeClass("ui-btn-hover-a ");
		
	});
	$('.ui-btn').bind('mouseover', function(){
	       return false;
	    });
	
});
 //funzione richiamata quando viene visualizzata la pagina contenente la lista dei parcheggi
$('#parcheggi_page').live( 'pageshow',function(event){
	
	$("html" ).addClass( "ui-loading" );
	var myselect = $("#selectsort");
	myselect[0].selectedIndex = 0;
	myselect.selectmenu("refresh");
	$("#selectsort-button .ui-btn-text").text(ordinabtn);
	GetParcheggi();
	
});
//scelgo il tipo di ordinamento per la lista dei parcheggi
$("#selectsort").live("change", function(event, ui) {
	
	if($("#selectsort :selected").text()==ordnomeLbl){
		
		ordinaParcheggi (nameParking,ordnomeLbl);
		$("#selectsort-button .ui-btn-text").text(ordinabtn);
	}else{
		
		ordinaParcheggi (postiLiberiToSort,orddispLbl);
		$("#selectsort-button .ui-btn-text").text(ordinabtn);
	}
});

//funzione richiamata quando clicco sull'icona della mappa di un elemento della lista dei parcheggi
$(".mappa_parking_link").live("click",function(){
	var id_link=$(this).attr("id");
	var coord_index=id_link.split("_")[3];
	
	var latitude_parcheggio=coord_parcheggio[coord_index].split(",")[1];
	var longitude_parcheggio=coord_parcheggio[coord_index].split(",")[0];
	show_parkingIcon=true;
	show_eventsIcon=false;
	center_map=new google.maps.LatLng(latitude_parcheggio,longitude_parcheggio);
	zoom_map=19;
	location.href=".."+friendly_url_js+"/mappa?show_parkingIcon="+show_parkingIcon+"&zoom_map="+zoom_map+"&lat_center="+latitude_parcheggio+"&lng_center="+longitude_parcheggio;
});
