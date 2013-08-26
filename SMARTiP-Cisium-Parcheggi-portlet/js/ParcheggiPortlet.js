var postiLib=new Array();
var descriptionPark=new Array();
var nameParking=new Array();
var postiLiberi=new Array();
var postiLiberiToSort=new Array();
var contentStrings=new Array();
var rowHeaders=new Array();
var rowContents=new Array();
coord_parcheggio=new Array();

function getParcheggi(){
	$.ajax({
		 type: "GET",
		 url: parkKMLproxy,
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
				 		
				 		coord_parcheggio.push($(this).find("coordinates").text());
					 
					 });
			 
			 	
				for(var i=0;i<descriptionPark.length;i++){
				///////////////////////////////////////////////////////////////////////////////
					nameParking.push(descriptionPark[i].split("--")[0]);
					var contentString="";
					 if(postiLiberi[i]==-1){
					 	contentString="<li><span class='imgPark'>(nd)</span>" +
					 	"<a href='#'class='mappa_parking_link' id='mappa_parking_link_"+i+"'>"+
					 			"<span class='namePark'>"+descriptionPark[i].split("--")[0]+"</span>"+
					 			"</a></li>" ;
			 		 }else{
			 			 contentString="<li><span class='imgPark'>"+postiLib[i]+"</span>" +
			 			"<a href='#'class='mappa_parking_link' id='mappa_parking_link_"+i+"'>"+
								"<span class='namePark'>"+
								descriptionPark[i].split("--")[0]+
								"</span>" +
								"</a>"+
								"<span>&nbsp;("+postiLiberi[i]+"&nbsp; liberi)</span></li>" ;
					 }	
					 contentStrings.push(contentString);
				////////////////////////////////////////////////////////////////////////////////
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
		
		for ( var j = 0; j < postiLiberi.length; j++) {
			
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
//funzione richiamata quando clicco sull'icona della mappa di un elemento della lista degli eventi
$(".mappa_parking_link").live("click",function(){
	var id_link=$(this).attr("id");
	var coord_index=id_link.split("_")[3];
	
	var latitude_parcheggio=coord_parcheggio[coord_index].split(",")[1];
	var longitude_parcheggio=coord_parcheggio[coord_index].split(",")[0];

	show_parkingIcon=true;
	show_eventsIcon=false;
	center_map=new google.maps.LatLng(latitude_parcheggio,longitude_parcheggio);
	
	zoom_map=19;
	var parkString=show_parkingIcon+"-"+zoom_map+"-"+latitude_parcheggio+"-"+longitude_parcheggio; 

	Liferay.fire('parkSelected', {parkString: parkString});
});

getParcheggi();