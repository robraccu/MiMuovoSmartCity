function GetFermateBusForMap(){
	
	
	if(view_fermatebus==true){

		var timestampF=new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google

		FermateBusLayer = new google.maps.FusionTablesLayer({
		      map: map,
		      preserveViewport: true,
		      heatmap: { enabled: false },
		      query: {
		          select: colFermateBus,
		          from: idFermateBus,
		          where: ""
		        },
		        options: {
		        suppressInfoWindows: true,
		          styleId: 2,
		          templateId: 2
		        }
		 });
		FermateBusLayer.setMap(map);

		infoFermateBus = new InfoBubble();
		google.maps.event.addListener(FermateBusLayer, 'click', function(layerEvent){
		 	
		 	codfermata = layerEvent.row.codice.value;
		 	nome= layerEvent.row.denominazione.value;
		 	ubicazione= layerEvent.row.ubicazione.value;
		 	stringa_linee=layerEvent.row.linee.value;
		 	posF = layerEvent.latLng;
		 
		 	if (!infoFermateBus.isOpen()) { 
		 		
		 		infoFermateBus.setOptions({	
		 	        content:"<div  class='infoWindowText' id='infoString' onclick='ShowInfoFermata(stringa_linee)' >" +
		 	        "<div><b >"+codfermata+"</b>:&nbsp;"+nome+"</div>"+
		 	        "<p>"+ubicazione+"</p>"+
		 	        "<b>"+clickbusTempoReale+"</b>"+
		 	    	"</div>",	
		 	    			position: posF,
		 	    			maxWidth:'300',
		 			        shadowStyle: 1,
		 			        padding: 0,
		 			        backgroundColor: 'rgb(57,57,57)',
		 			        borderRadius: 20,
		 			        arrowSize: 10,
		 			        borderWidth: 1,
		 			        borderColor: '#2c2c2c',
		 			        disableAutoPan: false,
		 			        hideCloseButton: true,
		 			        arrowPosition: 50,
		 			        backgroundClassName: 'infoWindow',
		 			        arrowStyle: 2
		 	      });
		 		infoFermateBus.open(map);
   			    	
			    }else{
			    	infoFermateBus.close(map);
			    }
		});
	view_fermatebus=false;
}else{
	infoFermateBus.close(map);
	FermateBusLayer.setMap(null);
	view_fermatebus=true;
}
}
	function RequestFermateService(fermata,linea,ora,metodo){
		//mostro l'indicatore di caricamento da quando inizia la richiesta fino a quando termina
		$(document).ajaxStart(function(){
			$("body").addClass("ui-loading" );
			}).ajaxStop(function(){
				$("body").removeClass("ui-loading" );
			});
		 $.ajax({
		        type : "POST",
		        url : "/MobileSplit-portlet/html/mappa/ResultFermateBus.jsp?ts="+new Date().getTime(), 
		        cache:false,
		        crossDomain:true,
		        dataType: "text",
		        data:{fermata_r: fermata,linea_r:linea,ora_r:ora,metodo_r:metodo},
		        success : function(data) 
		        {
		              //Write you success logic here
		        	/*la stringa di ritorno può essere di 4 tipi:
		        	 * TIPO 1: 11 DaSatellite 12:30, 35 Previsto 12:45
		        	 * TIPO 2:11 DaSatellite 12:30
		        	 * TIPO 3:OGGI NESSUN ALTRA CORSA DI 11 PER QUESTA FERMATA
		        	 * TIPO 4:INFORMAZIONI SUI BUS TEMPORANEAMENTE SOSPESE
		        	  */
		        	
		        	switch (metodo){ 
		        	case 1:
		        		if(data.indexOf("CORSA")==-1&&data.indexOf("INFORMAZIONI")==-1){//la stringa contiene i prossimi bus (TIPO 1 O TIPO 2)
		        			if(data.indexOf(",")>-1){//la stringa contiene più di un bus(TIPO 1)
		        				linea1=data.split(",")[0].split(" ")[1];
		        				monitoraggio1=data.split(",")[0].split(" ")[2];
		        				if(monitoraggio1=="DaSatellite"){
		        					monitoraggio1=daSatellite;
		        				}else if(monitoraggio1=="Previsto"){
		        					monitoraggio1=previsto;
		        				}
		        				ora1=data.split(",")[0].split(" ")[3];

		        				linea2=data.split(",")[1].split(" ")[1];
		        				monitoraggio2=data.split(",")[1].split(" ")[2];
		        				if(monitoraggio2=="DaSatellite"){
		        					monitoraggio2=daSatellite;
		        				}
		        				if(monitoraggio2=="Previsto"){
		        					monitoraggio2=previsto;
		        				}
		        				ora2=data.split(",")[1].split(" ")[3];
		        				if(linea=="*"){//se non era stata specificata alcuna linea nella richiesta
		        					$("#prox2bus").html("<p>" +
        											"<b>"+linea1+"</b>&nbsp;" +ora1+"&nbsp;"+monitoraggio1+""+
        											"</p>"+
        											"<p>" +
        											"<b>"+linea2+"</b>&nbsp;" +ora2+"&nbsp;"+monitoraggio2+""+
        											"</p>"
		        					);
		        				}
		        				else{
		        					$("#content_linea_"+linea+"").html("<p>" +
        														   "<b>"+linea1+"</b>&nbsp;" +ora1+"&nbsp;"+monitoraggio1+""+
        														   "</p>"+
        														   "<p>" +
        														   "<b>"+linea2+"</b>&nbsp;" +ora2+"&nbsp;"+monitoraggio2+""+
        														   "</p>"+
        														   "<p>" +
        														   "<a href=\"#\"class=\"ui-link\"onclick=\"GetLineeForMap('"+linea+"')\">"+btnViewLine+"</a>"+
        														   "</p>"
		        					);
		        				}
		        			}else{//la stringa contiene solo un bus(TIPO 2)
		        				linea1=data.split(" ")[1];
		        				monitoraggio1=data.split(" ")[2];
		        				if(monitoraggio1=="DaSatellite"){
		        					monitoraggio1=daSatellite;
		        				}
		        				if(monitoraggio1=="Previsto"){
		        					monitoraggio1=previsto;
		        				}
		        				ora1=data.split(" ")[3];
		        				if(linea=="*"){
		        					$("#prox2bus").html("<p>" +
        											"<b>"+linea1+"</b>&nbsp;" +ora1+"&nbsp;"+monitoraggio1+""+
        											"</p>"        											
		        					);
		        				}
		        				else{
		        					$("#content_linea_"+linea+"").html("<p>" +
        														   "<b>"+linea1+"</b>&nbsp;" +ora1+"&nbsp;"+monitoraggio1+""+
        														   "</p>"+
        														   "<p>" +
        														   "<a href=\"#\"class=\"ui-link\"onclick=\"GetLineeForMap('"+linea+"')\">"+btnViewLine+"</a>"+
        														   "</p>"
		        					);
		        				}
		        			}
		        		}else{//la stringa non contiene bus(TIPO 3)
		        			if(data.indexOf("CORSA")>-1){
		        			if(linea=="*"){
		        				$("#prox2bus").html(noCorsa);
		        			}
		        			else{
		        				$("#content_linea_"+linea+"").html(noCorsaXLinea+" "+linea+
        														   "<p>" +
        														  "<a href=\"#\"class=\"ui-link\"onclick=\"GetLineeForMap('"+linea+"')\">"+btnViewLine+"</a>"+
        														   "</p>");
		        			}
		        			}else{//la stringa non contiene bus(TIPO 4)
		        				if(linea=="*"){
			        				$("#prox2bus").html(data);
			        			}
			        			else{
			        				$("#content_linea_"+linea+"").html(data);
			        			}
		        			}
		        		}
		             break;
		        	 case 2:
		        		 
		        		$("#content_riv_"+fermata+"").html(data);
			             break;
		        	
		        	}
		        },
		        error : function(XMLHttpRequest, textStatus, errorThrown) 
		        {
		              //Write you error-handling logic here

		        }
		      });
	}
		

/* La funzione restituisce la differenza fra due numeri: 
 * anche se gli elementi del nostro array sono stringhe numeriche 
 * essi vengono interpretati come numeri e l'ordinamento è numerico crescente.
 * Eventuali lettere vengono inserite alla fine ed ordinate anch'esse.
 */
function confronta(a,b) {
    return a-b;
}

function ShowInfoFermata(linee){
	//se è già presente una linea disegnata precedentemente allora la cancello
	/*if(view_linea==false){
		// LineaLayer.setMap(null);
			view_linea=true;
	 }*/
	var arraylinee = new Array();
	infoFermateBus.close(map);
	RequestFermateService(codfermata,"*","",1);//mostro i prossimi 2 bus per quella fermata
	$("#rivenditore").html("");//cancello il precedente contenuto
	$("#prox2bus").html("");//cancello il precedente contenuto
	$("#elenco_linee").html("");//cancello il contenuto eventuale della pagina infofermatebus
	$.mobile.changePage( "#infofermatebus_page", { transition: "fade"} );
	//creo array delle linee
	for(var i=0;i<linee.split("-").length;i++){
	
			var fermataHeader=linee.split("-")[i];
			arraylinee[i]=fermataHeader;
	}
	//ordino le fermate in formato numerico (eventuali lettere sono inserite alla fine)
	arraylinee.sort(confronta); 
	//creo il codice html per creare la lista ordinata
	for(var i=0;i<arraylinee.length;i++){
			var elementList=$('<div data-role="collapsible" data-theme="a" class="lineaHeader" id="linea_'+arraylinee[i]+'">'+
					'<h3>'+arraylinee[i]+'</h3>'+
					'<p class="content_linea" id=content_linea_'+arraylinee[i]+'>'+attendi+'</p>'+
				'</div>');
			
				$("#elenco_linee").append(elementList).trigger('create');
				
	}
	var riv_element=$('<div data-role="collapsible" data-mini="true" data-theme="a" class="rivHeader" id="riv_'+codfermata+'">'+
					'<h3>Rivendita biglietti</h3>'+
					'<p class="content_riv" id=content_riv_'+codfermata+'>'+attendi+'</p>'+
					'</div>');
	$("#rivenditore").append(riv_element).trigger('create');
	
}
$('.lineaHeader').live('expand',function(){
	var id_linea=$(this).attr("id");
	//faccio la richiesta solo se l'elemento è chiuso
	if(!$("#"+id_linea+" .ui-collapsible-heading-collapsed").length){
	$(".content_linea").html(attendi);
	var numero_linea=id_linea.split("_")[1];
	RequestFermateService(codfermata,numero_linea,"",1);
	}
	
});
$(".rivHeader").live("click", function(){
	
	var id_riv=$(this).attr("id");
	//faccio la richiesta solo se l'elemento è chiuso
	if(!$("#"+id_riv+" .ui-collapsible-heading-collapsed").length){
	$(".content_riv").html(attendi);
	RequestFermateService(codfermata,"","",2);
	}
	
});
