<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setBundle basename="content.LanguageMobile"/>

<script type="text/javascript">

var layermenuLbl='<fmt:message key="layermenuLbl"/>';	
var layermenuOK='<fmt:message key="layermenuOK"/>'; 
var geoLocMsg='<fmt:message key="geoLocMsg"/>';
var imagesPath='<fmt:message key="imagesPath"/>';
var location2='<fmt:message key="location2"/>'; 
var errposdenied='<fmt:message key="errposdenied"/>'; 
var errposunavailable='<fmt:message key="errposunavailable"/>'; 
var errpostimeout='<fmt:message key="errpostimeout"/>'; 
var errposunknow='<fmt:message key="errposunknow"/>'; 
var partenzaLbl='<fmt:message key="partenzaLbl"/>'; 
var arrivoLbl='<fmt:message key="arrivoLbl"/>'; 
var errPunto='<fmt:message key="errPunto"/>';
var errIndirizzoArr='<fmt:message key="errIndirizzoArr"/>'; 
var errIndirizzoPar='<fmt:message key="errIndirizzoPar"/>'; 
var percorsiSugg='<fmt:message key="percorsiSugg"/>';
var descrcameraLbl='<fmt:message key="descrcameraLbl"/>';
var eventoLbl='<fmt:message key="eventoLbl"/>';
var messaggioLbl='<fmt:message key="messaggioLbl"/>';
var dataInizioLbl='<fmt:message key="dataInizioLbl"/>';
var dataFineLbl='<fmt:message key="dataFineLbl"/>';
var rivendita='<fmt:message key="rivendita"/>';
var codFermata='<fmt:message key="codFermata"/>';
var busTempoReale='<fmt:message key="busTempoReale"/>';
var clickbusTempoReale='<fmt:message key="clickbusTempoReale"/>';
var prossimiBus='<fmt:message key="prossimiBus"/>';
var daSatellite='<fmt:message key="daSatellite"/>';
var previsto='<fmt:message key="previsto"/>';
var btnViewLine='<fmt:message key="btnViewLine"/>';
var btnDelLinea='<fmt:message key="btnDelLinea"/>';
var noCorsa='<fmt:message key="noCorsa"/>';
var noCorsaXLinea='<fmt:message key="noCorsaXLinea"/>';
var zona='<fmt:message key="zona"/>';
var attendi='<fmt:message key="attendi"/>';
var dataLbl='<fmt:message key="dataLbl"/>';
var capacitaLbl='<fmt:message key="capacitaLbl"/>';
var postiLiberiLbl='<fmt:message key="postiLiberiLbl"/>';
var navettaLbl='<fmt:message key="navettaLbl"/>';
var bicicletteLbl='<fmt:message key="bicicletteLbl"/>';
var lineeBusLbl='<fmt:message key="lineeBusLbl"/>';
var tariffeLbl='<fmt:message key="tariffeLbl"/>';
var orarioLbl='<fmt:message key="orarioLbl"/>';
var telefonoLbl='<fmt:message key="telefonoLbl"/>';
var idsmsLbl='<fmt:message key="idsmsLbl"/>';
var abbonamentoLbl='<fmt:message key="abbonamentoLbl"/>';
var homepageLbl='<fmt:message key="homepageLbl"/>';
/*kml*/
var kmlPath='<fmt:message key="kmlPath"/>';

var lineaKML='<fmt:message key="lineaKML"/>';
var trafficKML='<fmt:message key="trafficKML"/>';
var eventKML='<fmt:message key="eventKML"/>';
var parkKML='<fmt:message key="parkKML"/>';
var parkimeterKMLoc='<fmt:message key="parkimeterKMLoc"/>';
var cameraKML='<fmt:message key="cameraKML"/>';
var ciclopedpubKML='<fmt:message key="ciclopedpubKML"/>';
var cicloparkKML='<fmt:message key="cicloparkKML"/>';
var cicloracksKML='<fmt:message key="cicloracksKML"/>';
var fermatebusKML='<fmt:message key="fermatebusKML"/>';

/*Accessibility KML*/
var accessibilityKML='<fmt:message key="accessibilityKML"/>';

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
 var idTaxi='<fmt:message key="idTaxi"/>';				
 var colTaxi='<fmt:message key="colTaxi"/>';
</script>