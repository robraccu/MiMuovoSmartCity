<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setBundle basename="content.LanguageTraffico"/>

<script type="text/javascript">
<!--

	var prossimiBus='<fmt:message key="prossimiBus"/>';	
	var visualizza='<fmt:message key="visualizza"/>';
	var visualizzati='<fmt:message key="visualizzati"/>';
	var errIndirizzoArr='<fmt:message key="errIndirizzoArr"/>';
	var errIndirizzoPar='<fmt:message key="errIndirizzoPar"/>';
	var partenzaLbl='<fmt:message key="partenzaLbl"/>';
	var arrivoLbl='<fmt:message key="arrivoLbl"/>';
	
	var postiLiberiLbl='<fmt:message key="postiLiberiLbl"/>';
	var dataLbl='<fmt:message key="dataLbl"/>';
	var capacitaLbl='<fmt:message key="capacitaLbl"/>';
	var busNavettaLbl='<fmt:message key="busNavettaLbl"/>';
	var bicicletteLbl='<fmt:message key="bicicletteLbl"/>';
	var lineeBusLbl='<fmt:message key="lineeBusLbl"/>';
	var tariffeLbl='<fmt:message key="tariffeLbl"/>';
	var orarioLbl='<fmt:message key="orarioLbl"/>';
	var telefonoLbl='<fmt:message key="telefonoLbl"/>';
	var idSmsLbl='<fmt:message key="idSmsLbl"/>';
	var abbonamentiLbl='<fmt:message key="abbonamentiLbl"/>';
	
	var kmlPath='<fmt:message key="kmlPath"/>';
	var trafficKML='<fmt:message key="trafficKML"/>';
	var parkKML='<fmt:message key="parkKML"/>';	
	var parkimeterKMLoc='<fmt:message key="parkimeterKMLoc"/>';
	var accessibilityKML='<fmt:message key="accessibilityKML"/>';
	var lineaKML='<fmt:message key="lineaKML"/>';
	var fermatebusKML='<fmt:message key="fermatebusKML"/>';
	var eventKML='<fmt:message key="eventKML"/>';
	var cicloracksKML='<fmt:message key="cicloracksKML"/>';
	var cicloparkKML='<fmt:message key="cicloparkKML"/>';
	var ciclopedpubKML='<fmt:message key="ciclopedpubKML"/>';
	var cameraKML='<fmt:message key="cameraKML"/>';
	var accessibilityKML='<fmt:message key="accessibilityKML"/>';
	
	var rivendita='<fmt:message key="rivendita"/>';
	var codFermata='<fmt:message key="codFermata"/>';
	var busTempoReale='<fmt:message key="busTempoReale"/>';
	var daSatellite='<fmt:message key="daSatellite"/>';
	var previsto='<fmt:message key="previsto"/>';
	var btnViewLine='<fmt:message key="btnViewLine"/>';
	var btnDelLinea='<fmt:message key="btnDelLinea"/>';
	var noCorsa='<fmt:message key="noCorsa"/>';
	var noCorsaXLinea='<fmt:message key="noCorsaXLinea"/>';
	
	var eventoLbl='<fmt:message key="eventoLbl"/>';
	var messaggioLbl='<fmt:message key="messaggioLbl"/>';
	var dataLbl='<fmt:message key="dataLbl"/>';
	var dataInizioLbl='<fmt:message key="dataInizioLbl"/>';
	var dataFineLbl='<fmt:message key="dataFineLbl"/>';
	
	var dettagliLbl='<fmt:message key="dettagliLbl"/>';
	var chiudidettagliLbl='<fmt:message key="chiudidettagliLbl"/>';
	
	/*fusion tables*/
	 var idCiclopedpub='<fmt:message key="idCiclopedpub"/>';
	 var colCiclopedpub='<fmt:message key="colCiclopedpub"/>';
	 var idCicloPark='<fmt:message key="idCicloPark"/>';
	 var colCicloPark='<fmt:message key="colCicloPark"/>';
	 var idCicloRacks='<fmt:message key="idCicloRacks"/>';
	 var colCicloRacks='<fmt:message key="colCicloRacks"/>';
	 var idSirio='<fmt:message key="idSirio"/>';
	 var colSirio='<fmt:message key="colSirio"/>';
	 var idRita='<fmt:message key="idRita"/>';
	 var colRita='<fmt:message key="colRita"/>';
	 var idFermateBus='<fmt:message key="idFermateBus"/>';
	 var colFermateBus='<fmt:message key="colFermateBus"/>';
	 var idParkimeter='<fmt:message key="idParkimeter"/>';
	 var colParkimeter='<fmt:message key="colParkimeter"/>';
					
	
	
	
//-->
</script>
