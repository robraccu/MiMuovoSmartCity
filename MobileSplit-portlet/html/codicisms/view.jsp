<%--
/**
* Copyright (c) 2000-2010 Liferay, Inc. All rights reserved.
*
* This library is free software; you can redistribute it and/or modify it under
* the terms of the GNU Lesser General Public License as published by the Free
* Software Foundation; either version 2.1 of the License, or (at your option)
* any later version.
*
* This library is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
* details.
*/
--%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ include file="/html/homeguest/init.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setBundle basename="content.LanguageMobile"/>
<portlet:defineObjects />
<%
/*Verifica utente loggato*/
String friendly_url=layout.getGroup().getFriendlyURL();

%>

<script>
var friendly_url_js="<%=friendly_url%>"
var percorsi_tab_active=true;
var parcheggi_tab_active=false;
$("#percorsi_tab").live("click", function(){
	
	if(percorsi_tab_active==false){
		$("#parcheggiDiv").hide();
		$("#percorsiDiv").show();
		$("#parcheggi_tab").removeClass("ui-btn-active ui-state-persist");
		parcheggi_tab_active=false;
		percorsi_tab_active=true;
	}
});
$("#parcheggi_tab").live("click", function(){
	
	if(parcheggi_tab_active==false){
		$("#percorsiDiv").hide();
		$("#parcheggiDiv").show();
		$("#percorsi_tab").removeClass("ui-btn-active ui-state-persist");
		percorsi_tab_active=false;
		parcheggi_tab_active=true;
	}
});
$('#codicisms_page').live('pageinit', function (event) {
$("#parcheggiDiv").hide();

});
</script>
<!-------------- Start of codici sms page ------------------------------------------------------>
	<div id="codicisms_page" data-role="page" data-theme="a">

		<div data-role="header" id="codicisms_header" >
			<div data-role="controlgroup" data-type="horizontal" id="header_elements" class="ui-btn-left">
			<a href="..<%=friendly_url%><fmt:message key='homepage'/>" data-role="button" data-direction="reverse" id="btnToHome" >
       	 		<img src=<fmt:message key="imagesPath"/><fmt:message key="home"/>></img>
			</a> 
			
			</div>
			<h1>Codici SMS</h1>
			
			<div data-role="navbar">
				
				<ul>
					<li><a href="#"  class="ui-btn-active ui-state-persist" id="percorsi_tab">Percorsi</a></li>
					<li><a href="#" id="parcheggi_tab">Parcheggi</a></li>
				</ul>
			</div><!-- /navbar -->
		</div>
		 
			
		<div data-role="content" >    
		
		<div id="percorsiDiv">
		<b>Per avere maggiori informazioni in tempo reale sui Percorsi, invia un SMS al 339 9941124 con indicato il codice SMS relativo.</b>  
		<br><br>
		<fieldset class="ui-grid-a" id="elenco_codici">
			<div class="ui-block-a" data-theme="a"><b>Percorso</b></div>
			<div class="ui-block-b"><b>Codice</b></div>	   
		</fieldset>
		
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via A. Costa direzione centro</div>
			<div class=" ui-block-b " >IAC</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Castiglione da viale Panzacchi a via Barbiano</div>
			<div class=" ui-block-b " >UCB</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Castiglione direzione centro</div>
			<div class=" ui-block-b " >IBC</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Emilia Lev. da via Dozza a via Mazzini</div>
			<div class=" ui-block-b " >DEM</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Emilia Lev. da via Mazzini a via G. Dozza</div>
			<div class=" ui-block-b " >MED</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via L. Alberti da viale Carducci a via Emilia Lev.</div>
			<div class=" ui-block-b " >UDE</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Matteotti dai viali alla tangenziale/Corticella </div>
			<div class=" ui-block-b " >UMT</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Matteotti dalla tangenziale/Corticella ai viali</div>
			<div class=" ui-block-b " >ITM</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Mazzini da via Emilia Lev. a p.ta S. Vitale</div>
			<div class=" ui-block-b " >ISV</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Mazzini dai viali a via Emilia Lev. </div>
			<div class=" ui-block-b " >UMZ</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via M.Polo/Zanardi direzione centro</div>
			<div class=" ui-block-b " >IPZ</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Murri da via Toscana a viale Carducci</div>
			<div class=" ui-block-b " >ITC</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Murri dai viali a via Toscana  </div>
			<div class=" ui-block-b " >UMR</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via S. Donato direzione centro</div>
			<div class=" ui-block-b " >USD</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Sabotino direzione centro</div>
			<div class=" ui-block-b " >ISB</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Saffi dai viali all"asse attrezzato (Via Pertini) </div>
			<div class=" ui-block-b " >USF</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Saragozza dai viali a via Porrettana</div>
			<div class=" ui-block-b " >USR</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via S.Mamolo da Castiglione ai viali </div>
			<div class=" ui-block-b " >ICM</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via S.Mamolo da via dei Colli ai viali</div>
			<div class=" ui-block-b " >ISM</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via S.Mamolo dai viali a via Castiglione </div>
			<div class=" ui-block-b " >UMC</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via S.Mamolo dai viali a via dei Colli</div>
			<div class=" ui-block-b " >USM</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Stalingrado dir periferia</div>
			<div class=" ui-block-b " >IST</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Stalingrado direzione centro</div>
			<div class=" ui-block-b " >UST</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Togliatti dalla Rotonda Romagnoli alla tangenziale </div>
			<div class=" ui-block-b " >RTT</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Toscana da via Murri alla periferia </div>
			<div class=" ui-block-b " >UTS</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Toscana dalla periferia a via Murri</div>
			<div class=" ui-block-b " >ITS</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via XXI Aprile a Viale Pepoli</div>
			<div class=" ui-block-b " >IVP</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Zanardi dai Viali ad asse attrezzato (via Pertini)</div>
			<div class=" ui-block-b " >UZN</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Zanardi dall'asse attrezzato a viale VII Novembre (P.ta Lame)</div>
			<div class=" ui-block-b " >IZN</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Via Zanardi/M.Polo dal viale VII Novembre (P.ta Lame) alla tangenziale</div>
			<div class=" ui-block-b " >UZP</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >Viale Pepoli - XXI Aprile a Rotonda F. Bernardini</div>
			<div class=" ui-block-b " >UPR</div>	   
		</fieldset>
		</div>
		<div id="parcheggiDiv">
		<b>Per avere maggiori informazioni in tempo reale sui Parcheggi, invia un SMS al 339 9941124 con indicato il codice SMS relativo.</b>  
		<br><br>
		<fieldset class="ui-grid-a" id="elenco_codici">
			<div class="ui-block-a" data-theme="a"><b>Parcheggio</b></div>
			<div class="ui-block-b"><b>Codice</b></div>	   
		</fieldset>
		
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >STAVECO</div>
			<div class=" ui-block-b " >STA</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >PIAZZA VIII AGOSTO</div>
			<div class=" ui-block-b " >AGO</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >ANTISTADIO</div>
			<div class=" ui-block-b " >ANT</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >TANARI</div>
			<div class=" ui-block-b " >TAN</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >PARCHEGGIO AUTOSTAZIONE</div>
			<div class=" ui-block-b " >AUT</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >GIURIOLO</div>
			<div class=" ui-block-b " >GIU</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >ZACCHERINI ALVISI</div>
			<div class=" ui-block-b " >ZAC</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >MICHELINO</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >DOZZA PARCO NORD</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >MANIFATTURA TABACCHI</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >EX ZUCCA</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >PIAZZA DELLA COSTITUZIONE</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >BATTINDARNO</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >CENTRO BORGO</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >CERTOSA</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >FIORAVANTI</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >GHISELLO</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >LARGO LERCARO</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >MARCO POLO</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >PIAZZA DELLA PACE</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >PIAZZALE BALDI</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >PRATI DI CAPRARA</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >SEDE UNICA</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >S.ORSOLA</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="elenco_codici_riga" >
			<div class=" ui-block-a " >STADIO FALCHI</div>
			<div class=" ui-block-b " >N.D.</div>	   
		</fieldset>
		</div>
		</div>
		<div class='footer-wrapper'>
    	<div data-role="footer"  data-theme="a"   >
			
		</div><!-- /footer -->
		</div>
	</div><!-- /page -->
