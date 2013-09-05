//legge il file elaboratedDataPublication e costruisce una lista di oggetti Arco 

package it.eng.smartip;
import it.eng.smartip.Punto;

import java.io.IOException;
import java.io.OutputStream;
import java.io.StringReader;
import java.net.Authenticator;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Properties;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;


public class XMLTrafficParser {
	
	Properties props = new Properties();
	public ArrayList<ArcoPolyline> query() throws ParserConfigurationException, SAXException,
			IOException, XPathExpressionException {
		props.load(TrafficAnalyzer.class.getResourceAsStream("/config.properties"));
		String outputResult = "";
		String urlString = props.getProperty("urlTrafficService");
		ArrayList<String> idList = new ArrayList<String>(); 
		ArrayList<String> trafficStatusList = new ArrayList<String>(); 
		
		ArrayList<ArcoPolyline> archiList = new ArrayList<ArcoPolyline>(); 
		try {
			URL urlTrafficService = new URL(urlString);
			HttpURLConnection urlTrafficCon = (HttpURLConnection) urlTrafficService.openConnection();
			
			//se esiste un server proxy, vengono inseriti i settaggi
		 	Properties props = new Properties();
			props.load(TrafficAnalyzer.class.getResourceAsStream("/config.properties"));
			if(props.getProperty("proxy").equals("yes")){
			System.setProperty("http.proxyHost", props.getProperty("proxyHost"));  
		    System.setProperty("http.proxyPort", props.getProperty("proxyPort"));
			Authenticator.setDefault(new ProxyAuthenticator(props.getProperty("username"), props.getProperty("password")));  
			}		    
			
		    urlTrafficCon.setAllowUserInteraction(false);
			urlTrafficCon.setDoInput(true);
			urlTrafficCon.setDoOutput(false);
			urlTrafficCon.setUseCaches(true);
			urlTrafficCon.setRequestMethod("GET");
			urlTrafficCon.connect();

			try {
				OutputStream output = new OutputStream() {
					private StringBuilder string = new StringBuilder();

					@Override
					public void write(int b) throws IOException {
						this.string.append((char) b);
					}

					@Override
					public String toString() {
						return this.string.toString();
					}
				};

				byte buf[] = new byte[1024];
				int len;

				while ((len = urlTrafficCon.getInputStream().read(buf)) > 0) {
					output.write(buf, 0, len);
				}
				output.close();
				urlTrafficCon.getInputStream().close();
				outputResult = output.toString();
				
				//lettura file elaboratedDataPublication.xml
				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
				dbf.setNamespaceAware(true);
				DocumentBuilder db = dbf.newDocumentBuilder();
				InputSource is = new InputSource();			
				StringReader stringa=new StringReader(outputResult);
				is.setCharacterStream(stringa);
				Document doc = db.parse(is);
				
				// Create a XPathFactory
				XPathFactory xFactory = XPathFactory.newInstance();

				// Create a XPath object
				XPath xpath = xFactory.newXPath();
		
				NamespaceContextProvider ns= new NamespaceContextProvider();
				//setto i namespace relativi al file xml del traffico
				xpath.setNamespaceContext(ns);
				
				//Compile the XPath expression for ElaboratedDataPublication.xml
				XPathExpression expr1 = xpath.compile("//d:basicDataValue[@xsi:type='TrafficStatusValue']/d:affectedLocation/d:locationContainedInGroup/d:predefinedLocationReference/text()");
				XPathExpression expr2 = xpath.compile("//d:trafficStatus/text()");

		
				// Run the query and get a nodeset for ElaboratedDataPublication.xml
				Object result1 = expr1.evaluate(doc, XPathConstants.NODESET);
				Object result2 = expr2.evaluate(doc, XPathConstants.NODESET);
				// Cast the result to a DOM NodeList for ElaboratedDataPublication.xml
				NodeList nodes1 = (NodeList) result1;
				NodeList nodes2 = (NodeList) result2;
				System.out.println("numero di archi da visualizzare pari a "+nodes1.getLength());
				
				
				
				//populate  idList and trafficStatusList
				for (int i=0; i<nodes2.getLength();i++){
					idList.add(nodes1.item(i).getNodeValue());
					trafficStatusList.add(nodes2.item(i).getNodeValue());
					
				}
				
				System.out.println("parsing file contenente gli archi stradali terminato");
				Iterator<String> iter1 =  idList.iterator();
				Iterator<String> iter2 =  trafficStatusList.iterator();
				//apro la connessione al DB smartip
				MySQLRouteAccess daoRM = new MySQLRouteAccess();
				Connection connessione=daoRM.ConnectToDB();
				
				while (iter1.hasNext()) {
					
					Object idListElement=iter1.next();
					Object trafficListElement=iter2.next();
					
					//accesso al database smartip.tabella_archi
					ArrayList<Punto> step= daoRM.readRouteMin("smartip.tabella_archi",idListElement.toString(),connessione);
					
					//accesso al databasesmartip.tabella_archi per recuperare il nome dell'arco
					
					String nome_arco= daoRM.readName("smartip.tabella_archi",idListElement.toString(),connessione);
					
					//elimino i tratti iniziali e finali di un percorso minori di 6m
					if(step.size()>=3){
					float lat1_s= new Float(step.get(0).getLatitude()).floatValue();
					float lng1_s=new Float(step.get(0).getLongitude()).floatValue();
					float lat1_e=new Float(step.get(1).getLatitude()).floatValue();
					float lng1_e=new Float(step.get(1).getLongitude()).floatValue();
					float distance1=distFrom(lat1_s,lng1_s,lat1_e,lng1_e);
					if(distance1<10){
						step.remove(0);
					}
					
						float lat2_s= new Float(step.get(step.size()-2).getLatitude()).floatValue();
						float lng2_s=new Float(step.get(step.size()-2).getLongitude()).floatValue();
						float lat2_e=new Float(step.get(step.size()-1).getLatitude()).floatValue();
						float lng2_e=new Float(step.get(step.size()-1).getLongitude()).floatValue();
						float distance2=distFrom(lat2_s,lng2_s,lat2_e,lng2_e);
						if(distance2<10){
							step.remove(step.size()-1);
						}
					}
					
					//creazione arco
					ArcoPolyline arco= new ArcoPolyline();
					arco.SetId(idListElement.toString());
					arco.setTrafficStatus(trafficListElement.toString());
					arco.setStep(step);
					arco.setName(nome_arco);
					//aggiungo l'arco alla lista
					archiList.add(arco);
					
					
				}
				daoRM.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}

			//urlTrafficCon.disconnect();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return archiList;
	}
	//calcola la distanza tra due punti
	public  float distFrom(float lat1, float lng1, float lat2, float lng2) {
	    double earthRadius = 3958.75;
	    double dLat = Math.toRadians(lat2-lat1);
	    double dLng = Math.toRadians(lng2-lng1);
	    double a = Math.sin(dLat/2) * Math.sin(dLat/2) +
	               Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2)) *
	               Math.sin(dLng/2) * Math.sin(dLng/2);
	    double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
	    double dist = earthRadius * c;

	    int meterConversion = 1609;
	   
	    float distance=new Float(dist * meterConversion).floatValue();
	    return distance;
	    }

}
		




