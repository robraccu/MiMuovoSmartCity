 
$(document).bind("mobileinit", function () {
			$.mobile.loadingMessage = "Caricamento...";
			$.mobile.ajaxEnabled  = false;
			$.mobile.selectmenu.prototype.options.closeText ="OK";
			var deviceIsAndroid = (window.navigator.userAgent.toLowerCase().search('android') > -1); 

			if (deviceIsAndroid) { 
			      document.write('<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" />'); 

			} else { 

			      document.write('<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" />'); 

			}
			map="";
			mappa_creata=false;
			view_traffico=true;//true=è possibile visualizzare il traffico
			view_parcheggio=true;
			view_eventi=true;
			view_position=true;
			view_telecamere=true;
			view_ciclopedpub=true;
			view_accessibility=true;
			view_fermatebus=true;
			view_linea=true;
			show_trafficIcon=true;//settata a true in modo tale che al caricamento della mappa venga già visualizzato il traffico
			show_eventsIcon=false;//true=sono attualmente visualizzati gli eventi sulla mappa  
			show_parkingIcon=false; 
			directionsResult="";//contiene i risultati della ricerca di un percorso
			markerPoint="";
			routeArray=[];//array contenente i percorsi da visualizzare sulla mappa
			markerArray=[];//array contenente i marker dei percorsi da visualizzare sulla mappa
			 show_cameraIcon=false;
			 show_ciclopedpubIcon=false;
			 show_accessibilityIcon=false;
			 show_fermatebusIcon=false;
			 show_lineaIcon=false;
			 $('#selectsort').selectmenu({ nativeMenu: "false" });//impedisco che il menu dei layer venga visualizzato nella forma nativa del dispositivo
			 //definisco dei parametri di default per la mappa
			 center_map=new google.maps.LatLng(44.49476,11.346595); 
			 zoom_map=14;
			 mappa_creata=false;
			 
		});