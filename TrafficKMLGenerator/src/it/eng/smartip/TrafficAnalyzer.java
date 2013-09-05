package it.eng.smartip;


import it.eng.Parking.ParcheggiProxy;
import it.eng.Parking.Parcheggio;
import it.eng.Parking.ParkCapabilitiesExceeded;
import it.eng.Parking.ParkDatabaseFailure;

import java.io.File;
import java.io.IOException;
import java.net.Authenticator;
import java.rmi.RemoteException;
import java.security.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Properties;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPathExpressionException;

import org.xml.sax.SAXException;

import de.micromata.opengis.kml.v_2_2_0.IconStyle;
import de.micromata.opengis.kml.v_2_2_0.Kml;
import de.micromata.opengis.kml.v_2_2_0.KmlFactory;
import de.micromata.opengis.kml.v_2_2_0.LineString;
import de.micromata.opengis.kml.v_2_2_0.LineStyle;
import de.micromata.opengis.kml.v_2_2_0.Placemark;
import de.micromata.opengis.kml.v_2_2_0.Style;

@SuppressWarnings("unused")

public class TrafficAnalyzer extends java.util.TimerTask{
	
	Properties props = new Properties();
	/**
	 * @param args
	 * @throws Exception 
	 */
	public static void main(String[] args)throws Exception {
		// TODO Auto-generated method stub
		TrafficAnalyzer ta = new TrafficAnalyzer(); 
	    java.util.Timer timer = new java.util.Timer(); 
	    timer.schedule(ta,0,300000); 
	    
	}
	public void run(){ 
		  // Contiene il processo da eseguire in background 
 		
		try{
			props.load(TrafficAnalyzer.class.getResourceAsStream("/config.properties"));
			ArrayList<ArcoPolyline> archiTrafficList=CreateArchiTrafficList();
			CreaTrafficKML(archiTrafficList);
			
			ArrayList<String> eventsList= CreateEventsList();
			System.out.println("lista degli eventi creata");
			CreaEventsKML(eventsList);
		
			Parcheggio[] parkingList= CreateParkingList();
			System.out.println("lista dei parcheggi creata");
		    CreaParkingKML(parkingList);
		    
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
		   
		public ArrayList<String> CreateEventsList() throws XPathExpressionException, ParserConfigurationException, SAXException, IOException {
		//effettuo il parsing del file contenente le info sugli eventi
		XMLEventsParser process = new XMLEventsParser();
		//ArrayList<String> eventsList =process.query();
		
		return process.query();
	}	   
		
	public ArrayList<ArcoPolyline> CreateArchiTrafficList() throws XPathExpressionException, ParserConfigurationException, SAXException, IOException {
		
		//effettuo il parsing del file ElaboratedDataPublication contenente le info sul traffico		 
		XMLTrafficParser process = new XMLTrafficParser();
		ArrayList<ArcoPolyline> archiTrafficList = new ArrayList<ArcoPolyline>(); 
		archiTrafficList =process.query();
		System.out.println("lista contenente gli archi stradali creata");
		return archiTrafficList;
	}
	public void CreaTrafficKML(ArrayList<ArcoPolyline> archiTrafficList ) throws Exception{
		//creo file kml
		 final Kml kml = KmlFactory.createKml();
		 final de.micromata.opengis.kml.v_2_2_0.Document document =kml.createAndSetDocument().withName("Traffic.kml");
		 final Style style_free = document.createAndAddStyle().withId("free flow");
		 final LineStyle traffic_free = style_free.createAndSetLineStyle().withColor("FF00B130").withWidth(3);
		 final Style style_heavy = document.createAndAddStyle().withId("heavy");
		 final LineStyle traffic_heavy = style_heavy.createAndSetLineStyle().withColor("FF00CCFF").withWidth(3);
		 final Style style_cong = document.createAndAddStyle().withId("congested");
		 final LineStyle traffic_cong = style_cong.createAndSetLineStyle().withColor("FF000099").withWidth(3);
		 final Style style_imp = document.createAndAddStyle().withId("impossible");
		 final LineStyle traffic_imp = style_imp.createAndSetLineStyle().withColor("FF000000").withWidth(3);
		 
		 ArrayList<Placemark> placemarkList= new ArrayList<Placemark>();
		 for(int i=0;i<archiTrafficList.size();i++){
			 
			  	String id_arco=archiTrafficList.get(i).getId();
			  	String traffic_arco=archiTrafficList.get(i).getTrafficStatus();
			  	String arco=archiTrafficList.get(i).getName();
			  	String strada_arco=arco.split("-")[0];
			  	String nome_arco=arco.split("-")[1];
			  	
				ArrayList<Punto> route_arco=archiTrafficList.get(i).getStep();
				
				
			  	//creo elemento Placemark
				final Placemark placemark = document.createAndAddPlacemark().withName(id_arco+"-"+nome_arco).withStyleUrl("#"+traffic_arco).withDescription(strada_arco);
				placemark.createAndSetExtendedData().addToData(KmlFactory.createData("true").withName("_SnapToRoads"));

				//creo elemento LineString
				final LineString linestring=placemark.createAndSetLineString();
				linestring.withTessellate(true);
				//aggiungo l'insieme di coordinate che descrivono l'elemento LineString
				for(int c=0;c<route_arco.size();c++){
					
				linestring.addToCoordinates(route_arco.get(c).getLongitude()+","+route_arco.get(c).getLatitude()+","+0);
				
				}				
				placemarkList.add(placemark);
		  }	
				kml.marshal(new File(props.getProperty("kmlPath")+props.getProperty("trafficpath")));
				Date date = new Date();
				 DateFormat df = DateFormat.getDateTimeInstance(DateFormat.FULL,DateFormat.FULL,Locale.ITALIAN);
				System.out.println("kml del traffico creato  "+df.format(date));
	}

public void CreaEventsKML(ArrayList<String> eventsList ) throws Exception{
		
		 final Kml kml = KmlFactory.createKml();
		 final de.micromata.opengis.kml.v_2_2_0.Document document =kml.createAndSetDocument().withName("Events.kml");
		 final Style style1 = document.createAndAddStyle().withId("Limitazioni di traffico");
		 final Style style2 = document.createAndAddStyle().withId("Lavori in corso");
		 final IconStyle iconstyle1 = style1.createAndSetIconStyle().withScale(1.0d);
		 iconstyle1.createAndSetIcon().withHref(props.getProperty("imagePath")+props.getProperty("abnormaltraffic"));
		 final IconStyle iconstyle2 = style2.createAndSetIconStyle();
		 iconstyle2.createAndSetIcon().withHref(props.getProperty("imagePath")+props.getProperty("lavori"));

		 ArrayList<Placemark> placemarkList= new ArrayList<Placemark>();
		 for(int i=0;i<eventsList.size();i++){
		
			 //se l'evento indica un'area di congestione lo elimino dalla lista di evnti da caricare nel kml 
		if(eventsList.get(i).split("--")[5].equals("Livello di servizio")){
			eventsList.remove(i);
				 
		}else{
			//in base alle info sugli eventi scelgo l'icona che deve rappresentare quel particolare evento
			
			  String styleurl=new String();
			if(eventsList.get(i).split("--")[5].equals("Limitazioni di traffico")){
				
				styleurl=new String("#Limitazioni di traffico");
			  
			}else{
				styleurl=new String("#Lavori in corso");
			}
			//creo elemento Placemark
			final Placemark placemark = document.createAndAddPlacemark()
					.withName(eventsList.get(i).split("-")[0])
					.withStyleUrl(styleurl)
					.withDescription(eventsList.get(i).split("--")[5]+
									"--"+eventsList.get(i).split("--")[0]+
									"--"+eventsList.get(i).split("--")[1]+
									"--"+eventsList.get(i).split("--")[2]);
			
			placemark.createAndSetPoint()
		    .addToCoordinates(Double.parseDouble(eventsList.get(i).split("--")[4]),Double.parseDouble(eventsList.get(i).split("--")[3]));
			
			placemarkList.add(placemark);
			}
		}//end ciclo for
		//marshals to console		
		 Date date = new Date();
		 DateFormat df = DateFormat.getDateTimeInstance(DateFormat.FULL,DateFormat.FULL,Locale.ITALIAN);
		 System.out.println("kml degli eventi creato  "+df.format(date));	
		 //kml.marshal();
			//marshals into file
			kml.marshal(new File(props.getProperty("kmlPath")+props.getProperty("eventspath")));
		 	
	}
public Parcheggio[] CreateParkingList() throws IOException  {
		// TODO Auto-generated method stub	
	
		//if exist, set yours proxies' credentials
 		Properties props = new Properties();
 		props.load(TrafficAnalyzer.class.getResourceAsStream("/config.properties"));
 		if(props.getProperty("proxy").equals("yes")){
 			System.setProperty("http.proxyHost", props.getProperty("proxyHost"));  
 			System.setProperty("http.proxyPort", props.getProperty("proxyPort"));
 			System.setProperty("http.proxyUser", props.getProperty("username"));  
 			System.setProperty("http.proxyPassword", props.getProperty("password"));
 		}	
 		ParcheggiProxy park=new ParcheggiProxy();
		Parcheggio[] parklist=park.getParcheggi(Integer.parseInt(props.getProperty("IDAuthPark")));
		
		return parklist;
	}
	public void CreaParkingKML(Parcheggio[] parkingList ) throws Exception{
	
		final Kml kml = KmlFactory.createKml();
		final de.micromata.opengis.kml.v_2_2_0.Document document =kml.createAndSetDocument().withName("Parking.kml");
		final Style style1 = document.createAndAddStyle().withId("Parcheggi");
		final IconStyle iconstyle1 = style1.createAndSetIconStyle().withScale(1.0d);
		iconstyle1.createAndSetIcon().withHref(props.getProperty("imagePath")+props.getProperty("parking"));
		ArrayList<Placemark> placemarkList= new ArrayList<Placemark>();
		String styleurl=new String("#Parcheggi");
		String descrizione="";
		String postiLiberi="";
		String busNavetta="";
		String biciclette="";
		String lineeBus="";
		String tariffe="";
		String orario="";
		String idSms="";
		String monitorato="";
		String telefono="";
		String data="";
		String abbonamenti="";
		String homepage="";
		double latpark=0;
		double lngpark=0;
		
		for(int i=0;i<parkingList.length;i++){	
		//abbinamento dei nomi dei parcheggi con le rispettive coordinate per il posizionamento dei marker sulla mappa 
		for(int j=1;j<parkingList.length+1;j++){
			String idparktmp="idpark"+Integer.toString(j);
			
			int idpark=Integer.parseInt(props.getProperty(idparktmp));
			if(parkingList[i].getIdParcheggio()==idpark){
				latpark=Double.parseDouble(props.getProperty("latpark"+j));
				lngpark=Double.parseDouble(props.getProperty("lngpark"+j));
				j=parkingList.length;
			}
			
		}		
			if(parkingList[i].getDescrizione()!=null){
			 descrizione=parkingList[i].getDescrizione();
			}else{
				descrizione="nome n.d.";
			}
			//controllo sui dati restituiti
			 if(parkingList[i].getPostiLiberi()==-1){
				
				 postiLiberi="n.d.";
			 }else{
				 postiLiberi=Integer.toString(parkingList[i].getPostiLiberi());
			 }
			 if(parkingList[i].isBusNavetta()==false  ){
				
				 busNavetta="servizio non presente";	
				 
			 }else  if(parkingList[i].isBusNavetta()!=true){
				  busNavetta="n.d.";	
			 }else {
				 busNavetta="servizio presente";
			 }
			 
			 if(parkingList[i].isBiciclette()==false ){
					
				 biciclette="servizio non presente";			 
			 }else  if(parkingList[i].isBiciclette()!=true){
				  biciclette="n.d.";	
			 }else {
				 biciclette="servizio presente";
			 }
			 
			 if(parkingList[i].isLineeBus()==false ){
					
				 lineeBus="servizio non presente";			 
			 }else  if(parkingList[i].isLineeBus()!=true){
				 lineeBus="n.d.";	
			 }else {
				 lineeBus="servizio presente";
			 }
			
			 if(parkingList[i].getTariffe()==null){
					
				tariffe="Non Disponibili";			 
			 }else {
				 tariffe=parkingList[i].getTariffe();
			 }
			
			 if(parkingList[i].getOrario()==null ){
				 orario="n.d.";		
				 	 
			 }else {
				 orario=parkingList[i].getOrario();
			 }
			 
			 
			 if(parkingList[i].getIdSms()==null){
					
				 idSms="n.d.";		 
			 }else {
				 idSms=parkingList[i].getIdSms();
			 }
			
			 if(parkingList[i].isMonitorato()==false ){
					
				  monitorato="Parcheggio non monitorato";			 
			 }else  if(parkingList[i].isMonitorato()==true){
				 monitorato="Parcheggio monitorato";	
			 }
			 if(parkingList[i].getTelefono()==null){
				 telefono="n.d.";
			 }else{
				 telefono=parkingList[i].getTelefono();
			 }
			 if(parkingList[i].getData()==null){
				 data="n.d.";
			 }else{
				 SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm");

				
				data= sdf.format(parkingList[i].getData().getTime());
				 
				 
			 }
			 if(parkingList[i].getAbbonamenti()==null){
				 abbonamenti="n.d.";
			 }else{
				 abbonamenti=parkingList[i].getAbbonamenti();
			 }
			 if(parkingList[i].getHomePage()==null){
				 homepage="n.d.";
			 }else{
				 homepage=parkingList[i].getHomePage();
			 }
			 
			 final Placemark placemark = document.createAndAddPlacemark()
					.withName(descrizione+"--"+postiLiberi)
					.withStyleUrl(styleurl)
					.withDescription(descrizione+
									"--"+data+
									"--"+parkingList[i].getCapacita()+
									"--"+postiLiberi+
									"--"+busNavetta+
									"--"+biciclette+
									"--"+lineeBus+
									"--"+tariffe+
									"--"+orario+
									"--"+telefono+
									"--"+idSms+
									"--"+abbonamenti+
									"--"+monitorato+
									"--"+homepage
							);
			
			placemark.createAndSetPoint()
		    .addToCoordinates(lngpark,latpark);
			
			placemarkList.add(placemark);
		}//end ciclo for
		//marshals to console
		 Date date = new Date();
		 DateFormat df = DateFormat.getDateTimeInstance(DateFormat.FULL,DateFormat.FULL,Locale.ITALIAN);
		 System.out.println("kml dei parcheggi creato  "+df.format(date));	
		//kml.marshal();
		//marshals into file
		kml.marshal(new File(props.getProperty("kmlPath")+props.getProperty("parkspath")));	
	}
}


