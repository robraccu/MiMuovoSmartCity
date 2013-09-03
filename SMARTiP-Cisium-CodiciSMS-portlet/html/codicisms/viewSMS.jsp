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
<%@ page import="javax.portlet.WindowState" %>
<%@page import="javax.portlet.PortletURL"%>
<%@page import="javax.portlet.RenderResponse"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setBundle basename="content.LanguageSMS"/>

<portlet:defineObjects />
<%
	PortletURL portletURL = renderResponse.createRenderURL();
	WindowState ws=portletURL.getWindowState();
	
%>
<script>
var stateWin="";


if('<%=ws%>'=='<%=WindowState.MAXIMIZED%>'){
stateWin='<%=ws%>';
 var filerefcss=document.createElement("link");
  filerefcss.setAttribute("rel", "stylesheet");
  filerefcss.setAttribute("type", "text/css");
  filerefcss.setAttribute("href", "<%=request.getContextPath()%>/css/maximized.css");
document.getElementsByTagName("head")[0].appendChild(filerefcss);	

}
	$(function() {
		$( "#tabs" ).tabs();
	});
	</script>



<div class="elenco_codici">
<div id="tabs">
	<ul>
		<li><a href="#tabs-1"><fmt:message key="percorsiLbl"/></a></li>
		<li><a href="#tabs-2"><fmt:message key="parcheggiLbl"/></a></li>
		
	</ul>
	<div id="tabs-1">
	<p class="avviso"><fmt:message key="infoPercorsi"/></p>
	
		<!-- Percorsi -->
         	<div id="tabella_codiciSMS_percorsi">
					<div id="captionRowSMS">
						
						 <div class="captionSMS" id="percorso">
						 	<b> <fmt:message key="percorsoLbl"/> </b>  
                   		 </div>
                   		 <div class="captionSMS" id="codice_percorso">
						 	<b> <fmt:message key="codiceLbl"/> </b>  
                   		 </div>
 					</div>
 					<div id="loading_codiciSMS_percorsi">
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 								<fmt:message key="indirizzi_1"/>
 							</div>
 							<div class="divrecordSMS codice_percorso">
 								<fmt:message key="codice_1"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 								<fmt:message key="indirizzi_2"/>
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_2"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 								<fmt:message key="indirizzi_3"/>		 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_3"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_4"/>	 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_4"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_5"/>							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_5"/> 	
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_6"/>	 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_6"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_7"/>		 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_7"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_8"/>	 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_8"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_9"/>	 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_9"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_10"/> 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_10"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_11"/> 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_11"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_12"/> 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_12"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_13"/> 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_13"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_14"/>						
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_14"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_15"/>						
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_15"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_16"/> 							
 							</div>
 							<div class="divrecord codice_percorso">
 							<fmt:message key="codice_16"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_17"/> 							
 							</div>
 							<div class="divrecord codice_percorso">
 							<fmt:message key="codice_17"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_18"/>						
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_18"/> 	
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_19"/> 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_19"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_20"/> 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_20"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_21"/>					
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_21"/> 	
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_22"/>					
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_22"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_23"/>						
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_23"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_24"/>							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_24"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_25"/>					
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_25"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_26"/>				
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_26"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_27"/>			
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_27"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_28"/>			
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_28"/> 	
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_29"/> 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_29"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_30"/> 							
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_30"/> 
 							</div> 							
 						</div>
 						<div class='listapercorsi'>
 							<div class="divrecordSMS percorso">
 							<fmt:message key="indirizzi_31"/>					
 							</div>
 							<div class="divrecordSMS codice_percorso">
 							<fmt:message key="codice_31"/> 
 							</div> 							
 						</div>
 										
 					</div>
 					
         	</div>
         	
    </div>
	<div id="tabs-2">
	<p class="avviso"><fmt:message key="infoParcheggi"/></p>
	
		<!-- Parcheggi -->
         	<div id="tabella_codiciSMS_parcheggi">
					<div id="captionRow">
						
						 <div class="caption" id="parcheggio">
						 	<b><fmt:message key="parcheggioLbl"/></b>  
                   		 </div>
                   		 <div class="caption" id="codice_parcheggio">
						 	<b><fmt:message key="codiceLbl"/></b>  
                   		 </div>
 					</div>
 					<div id="loading_codiciSMS_parcheggi">
 						
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_1"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_1"/>
 							</div>
 						</div>						
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_2"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_2"/> 
 							</div>
 						</div>					
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_3"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_3"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_4"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_4"/> 
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_5"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_5"/> 
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_6"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_6"/> 
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_7"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_7"/> 
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_8"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_8"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_9"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_9"/>
 							</div>
 						</div>						
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_10"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_10"/>
 							</div>
 						</div> 	
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_11"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_11"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_12"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_12"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_13"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_13"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_14"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_14"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_15"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_15"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_16"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_16"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_17"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_17"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_18"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_18"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_19"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_19"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_20"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_20"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_21"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_21"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_22"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_22"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_23"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_23"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_24"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_24"/>
 							</div>
 						</div>
 						<div class='listaparcheggi'>
 							<div class="divrecordSMS parcheggio">
 							<fmt:message key="parcheggi_25"/>
 							</div>
 							<div class="divrecordSMS codice_parcheggio">
 							<fmt:message key="codp_25"/>
 							</div>
 						</div>
 						
 					</div>
         	</div>	
 
    </div>
	
</div>

</div>
