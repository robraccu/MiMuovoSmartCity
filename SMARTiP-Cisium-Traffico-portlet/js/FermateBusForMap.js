
/* La funzione restituisce la differenza fra due numeri: 
 * anche se gli elementi del nostro array sono stringhe numeriche 
 * essi vengono interpretati come numeri e l'ordinamento è numerico crescente.
 * Eventuali lettere vengono inserite alla fine ed ordinate anch'esse.
 */
function confronta(a,b) {
    return a-b;
}

function GetFermateBusForMap(){
	if(view_fermatebus==true){

		var timestampF=new Date().getTime();//timestamp da aggiungere all'url del kml per il refresh della cache del server di google
		FermateBusLayer = new google.maps.KmlLayer(kmlPath+fermatebusKML+'?ts='+timestampF,
				{suppressInfoWindows: true,
	        map: map,
	        preserveViewport: true
	    });
		FermateBusLayer.setMap(map);
		infoFermateBus = new InfoBubble();
		infoFermateBus2 = new InfoBubble();
		google.maps.event.addListener(FermateBusLayer, 'click', function(kmlEvent){
			
			
			
		 	var arraylinee = new Array();
		 	codfermata = kmlEvent.featureData.description.split("--")[0];
		 	nome= kmlEvent.featureData.description.split("--")[1];
		 	ubicazione= kmlEvent.featureData.description.split("--")[2];
		 	respServizio="";
		 	stringa_linee=kmlEvent.featureData.description.split("--")[3];
		 	elenco_linee="";
		 	view_linea=false; //false=ancora non è stata mostrata nessuna info per la linea
		 	//creo array delle linee
		 	for(var i=0;i<stringa_linee.split("-").length;i++){
		 		currentlinea=stringa_linee.split("-")[i];
		 		arraylinee[i]=currentlinea;		 		
		 	}
		 	arraylinee.sort(confronta); //ordino le fermate in formato numerico (eventuali lettere sono inserite alla fine)
		 	//creo il codice html da inserire nel pop-up
		 	for(var i=0;i<arraylinee.length;i++){
		 		dummy_ora="";//ora fittizia
		 		request="OpenInfo('"+codfermata+"','"+arraylinee[i]+"','',1,"+view_linea+")";
		 		elenco_linee+="<a href='#'id='linea_"+arraylinee[i]+
		 					  "'onclick="+request+">"
		 		               +arraylinee[i]+
		 		               "</a>&nbsp;";
		 	} 
		 	
		 	requestprox2bus="OpenInfo('"+codfermata+"','*','',1,"+view_linea+")";
		 	prox2bus="<li><a href='#'id='linea_"+currentlinea+"'onclick="+requestprox2bus+">"+prossimiBus+"</a></li>";
		 	requestresale="OpenInfo('"+codfermata+"','','',2,"+view_linea+")";
		 	resale="<li><a href='#'onclick="+requestresale+">"+rivendita+"</a></li>";
		 	posF = kmlEvent.latLng;
		 	if (!infoFermateBus.isOpen()) { 
		 		infoFermateBus.setOptions({	
			        content:'<div  class="infoWindowText">' +
			        "<b >"+codFermata+codfermata+":&nbsp;"+nome+"</b>"+
			        "<p>"+ubicazione+"</p>"+
			        "<ul>"+resale+prox2bus+"</ul>"+
			        "<b>"+busTempoReale+"</b></br>"+
			        "<b>"+elenco_linee+"</b>"+
			    	"</div>",			    	
			        position: posF,
			        minWidth: '222',
			        maxWidth: '300',
			        shadowStyle: 1,
			        padding: 0,
			        backgroundColor: '#E49241',
			        borderRadius: 3,
			        arrowSize: 10,
			        borderWidth: 1,
			        borderColor: '#2c2c2c',
			        arrowPosition: 30,
			        backgroundClassName: 'infoWindow',
			        arrowStyle: 2,
			        pixelOffset:-30
			      });
		 			infoFermateBus2.close(map);
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
	
	
	
	$.support.cors = true;//serve per le richieste cross-domain in IE
	 $.ajax({
	        type : "POST",
	       url : "/SMARTiP-Cisium-Traffico-portlet/html/traffico/ResultFermateBus.jsp?ts="+new Date().getTime(), 
	        cache:false,
	        crossDomain:true,
	        dataType: "text",
	        data:{fermata_r: fermata,linea_r:linea,ora_r:ora,metodo_r:metodo},
	        success : function(data, textStatus, xhr) 
	        {
	        	 //Write you success logic here
	        	/*la stringa di ritorno può essere di tre tipi:
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
						if(linea=="*"){
	        			$("#infolinea").html("<div class='infoWindowDetails'>" +
        					"			<p>" +
	        								"<b>"+linea1+"</b>&nbsp;" +ora1+"&nbsp;"+monitoraggio1+" &nbsp;" +
        								"</p></br>"+	        								
        								"<p>" +
	        								"<b>"+linea2+"</b>&nbsp;" +ora2+"&nbsp;"+monitoraggio2+"&nbsp;" +
    										
        								"</p>" +
        								"</div>"
	        						 );
								}else{
								$("#infolinea").html("<div class='infoWindowDetails'>" +
        					"			<p>" +
	        								"<b>"+linea1+"</b>&nbsp;" +ora1+"&nbsp;"+monitoraggio1+" &nbsp;" +
        								"</p></br>"+	        								
        								"<p>" +
	        								"<b>"+linea2+"</b>&nbsp;" +ora2+"&nbsp;"+monitoraggio2+"&nbsp;" +
    										
        								"</p>" +
        								"<span class='spanViewLinea'>"+
        								"<button id=\"linea_"+linea+"V\"onclick=\"GetLineeBusForMap('"+linea+"')\">"+btnViewLine+"</button>"+
        								"<button id=\"linea_"+linea+"C\"onclick=\"DelLineeBusForMap()\">"+btnDelLinea+"</button>"+
        								"</span>"+
        								"</div>"
	        						 );
								}
	        						 infoFermateBus2.setPosition(infoFermateBus.getPosition());
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
        				$("#infolinea").html("<div class='infoWindowDetails'><p>" +
								"<b>"+linea1+"</b>&nbsp;" +ora1+"&nbsp;"+monitoraggio1+"&nbsp;" +
								"</p>"+
								"</div>"
						 );
						 }else{
						 $("#infolinea").html("<div class='infoWindowDetails'><p>" +
								"<b>"+linea1+"</b>&nbsp;" +ora1+"&nbsp;"+monitoraggio1+"&nbsp;" +
								"</p>"+
								"<span class='spanViewLinea'>"+
								"<button id=\"linea_"+linea+"V\"onclick=\"GetLineeBusForMap('"+linea+"')\">"+btnViewLine+"</button>"+
        						"<button id=\"linea_"+linea+"C\"onclick=\"DelLineeBusForMap()\">"+btnDelLinea+"</button>"+
								"</span>"+
								"</div>"
						 );
						 }
						 infoFermateBus2.setPosition(infoFermateBus.getPosition());
        				}
	        		}else{//la stringa non contiene bus(TIPO 3)
	        			if(data.indexOf("CORSA")>-1){
	        			if(linea=="*"){//se non era stata specificata alcuna linea nella richiesta
	        			$("#infolinea").html("<div class='infoWindowWait'>"+noCorsa+"</div>");
	        			infoFermateBus2.setPosition(infoFermateBus.getPosition());
	        			}else{
	        				$("#infolinea").html("<div class='infoWindowWait'>"+noCorsaXLinea+" "+linea+"</div>" +
	        						"<span class='spanViewLinea'>"+
    								"<button id=\"linea_"+linea+"V\"onclick=\"GetLineeBusForMap('"+linea+"')\">"+btnViewLine+"</button>"+
        							"<button id=\"linea_"+linea+"C\"onclick=\"DelLineeBusForMap()\">"+btnDelLinea+"</button>"+
    								"</span>");
	        				infoFermateBus2.setPosition(infoFermateBus.getPosition());
	        			}
	        			}else{//la stringa non contiene bus(TIPO 4)
	        				if(linea=="*"){//se non era stata specificata alcuna linea nella richiesta
	    	        			$("#infolinea").html(data);
	    	        			infoFermateBus2.setPosition(infoFermateBus.getPosition());
	    	        		}else{
	    	        				$("#infolinea").html(data);
	    	        				infoFermateBus2.setPosition(infoFermateBus.getPosition());
	    	        		}
	        			}
	        		}
	        	
	        	break;
	        	case 2:
	        		
	        		$("#infolinea").html(data);
		             break;
	        	
	        	}
	        	
	        },
	       
	        		            
	        error : function(xhr, textStatus, errorThrown) 
	        {
	              //Write you error-handling logic here
	              

	        }
	      });
}

	function OpenInfo(fermata,linea,ora,metodo,view_linea){
		
		infoFermateBus.close(map);
		
		 if (view_linea==false) { 	
			 infoFermateBus2.setOptions({	
			        content:"<div  class='infoWindowText'>" +
			    	"<b >"+codFermata+codfermata+":&nbsp;"+nome+"</b>"+
			    	"<p>"+ubicazione+"</p>"+
			        "<ul>"+resale+prox2bus+"</ul>"+
			        "<b>"+busTempoReale+"</b></br>"+
			        "<b>"+elenco_linee+"</b>"+
			    	"</div>"+		    
			    	
			    	"<div id='infolinea'><b class='infoWindowWait'><p align='center'><img alt='activity indicator' src='/SMARTiP-Cisium-Traffico-portlet/images/loader.gif'></p></b></div>",
			        position: posF,
			        minWidth: '222',
			        maxWidth: '300',
			        shadowStyle: 1,
			        padding: 0,
			        backgroundColor: '#E49241',
			        borderRadius: 3,
			        arrowSize: 10,
			        borderWidth: 1,
			        borderColor: '#2c2c2c',
			        arrowPosition: 30,
			        backgroundClassName: 'infoWindow',
			        arrowStyle: 2,
			        pixelOffset:-30
			      });
		    	infoFermateBus2.open(map);
		    	RequestFermateService(fermata,linea,ora,metodo);
		    	view_linea=true;
		 }else{
			 infoFermateBus2.close(map);
			 view_linea=false;
			 $("#infolinea").html("<b class='infoWindowWait'><img alt='activity indicator' src='/SMARTiP-Cisium-Traffico-portlet/images/loader.gif'>");
		    }
		
	}
