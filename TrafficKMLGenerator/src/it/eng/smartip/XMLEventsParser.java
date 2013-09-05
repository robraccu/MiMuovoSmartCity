package it.eng.smartip;

import java.io.FileOutputStream;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.StringReader;
import java.net.Authenticator;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Properties;
import java.util.StringTokenizer;

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


public class XMLEventsParser {

	Properties props = new Properties();
	
	public ArrayList<String> query() throws ParserConfigurationException, SAXException,
	IOException, XPathExpressionException {
	
		props.load(TrafficAnalyzer.class.getResourceAsStream("/config.properties"));
		String outputResult = "";
		String urlString = props.getProperty("repoDAtex");
		ArrayList<String> valueList = new ArrayList<String>(); 
		ArrayList<String> data_inizioList = new ArrayList<String>(); 
		ArrayList<String> data_fineList = new ArrayList<String>(); 
		ArrayList<String> detailList=new ArrayList<String>(); //Road Maintenance Type o NetworkManagement Type
		ArrayList<String> eORList=new ArrayList<String>(); // effectOnRoadLayout
		ArrayList<String> event_typeList=new ArrayList<String>(); //tipo di evento
		ArrayList<String> latList = new ArrayList<String>(); 
		ArrayList<String> lngList = new ArrayList<String>(); 
		ArrayList<String> infoEventList= new ArrayList<String>(); 
		try {
			URL urlEventService = new URL(urlString);
			HttpURLConnection urlEventCon = (HttpURLConnection) urlEventService.openConnection();

		    
		    urlEventCon.setAllowUserInteraction(false);
		    urlEventCon.setDoInput(true);
		    urlEventCon.setDoOutput(false);
		    urlEventCon.setUseCaches(true);
		    urlEventCon.setRequestMethod("GET");
		    urlEventCon.connect();
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
				while ((len = urlEventCon.getInputStream().read(buf)) > 0) {
					output.write(buf, 0, len);
				}
				output.close();
				urlEventCon.getInputStream().close();
				outputResult = output.toString();
				
				//salvo in una directory il file xml degli eventi
				writeTextFile(props.getProperty("xmlPath")+props.getProperty("eventixml"), outputResult);
				System.out.println("file degli eventi salvato");
				
				//lettura file eventi TMC_DATEX
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
				//setto i namespace relativi al file xml delgli eventi
				xpath.setNamespaceContext(ns);
				
				
				//Compile the XPath expression for events
				XPathExpression expr0 = xpath.compile("//d:situationRecord");
				XPathExpression expr1 = xpath.compile("//d:generalPublicComment/d:comment/d:value/text()");
				XPathExpression expr2 = xpath.compile("//d:validity/d:validityTimeSpecification/d:overallStartTime/text()");
				XPathExpression expr3 = xpath.compile("//d:groupOfLocations/d:locationContainedInGroup[1]/d:pointByCoordinates/d:pointCoordinates/d:latitude/text()");
				XPathExpression expr4 = xpath.compile("//d:groupOfLocations/d:locationContainedInGroup[1]/d:pointByCoordinates/d:pointCoordinates/d:longitude/text()");
				XPathExpression expr5 = xpath.compile("//d:validity/d:validityTimeSpecification/d:overallEndTime/text()");
				
				// Run the query and get a nodeset for ElaboratedDataPublication.xml
				Object result0 = expr0.evaluate(doc, XPathConstants.NODESET);
				Object result1 = expr1.evaluate(doc, XPathConstants.NODESET);
				Object result2 = expr2.evaluate(doc, XPathConstants.NODESET);
				Object result3 = expr3.evaluate(doc, XPathConstants.NODESET);
				Object result4 = expr4.evaluate(doc, XPathConstants.NODESET);
				Object result5 = expr5.evaluate(doc, XPathConstants.NODESET);
				
				// Cast the result to a DOM NodeList for ElaboratedDataPublication.xml
				NodeList nodes0 = (NodeList) result0;
				NodeList nodes1 = (NodeList) result1;
				NodeList nodes2 = (NodeList) result2;
				NodeList nodes3 = (NodeList) result3;
				NodeList nodes4 = (NodeList) result4;
				NodeList nodes5 = (NodeList) result5;
				
				for(int i=0;i<nodes1.getLength();i++){
					valueList.add(nodes1.item(i).getNodeValue());
					
					//modifico la formattazione della data di inizio evento ottenuta dal servizio 
					StringTokenizer st = new StringTokenizer(nodes2.item(i).getNodeValue(), "T"); 
					String data_inizio=st.nextToken();
					String orario_inizio=st.nextToken();
					StringTokenizer st2 =new StringTokenizer(data_inizio, "-"); 
					String anno_inizio=st2.nextToken();
					String mese_inizio=st2.nextToken();
					String giorno_inizio=st2.nextToken();
					StringTokenizer st3 =new StringTokenizer(orario_inizio, "+"); 
					String ora_inizio=st3.nextToken();			
					data_inizioList.add(giorno_inizio+"/"+mese_inizio+"/"+anno_inizio+" "+ora_inizio);
					
					//modifico la formattazione della data di fine evento ottenuta dal servizio 
					StringTokenizer st4 = new StringTokenizer(nodes5.item(i).getNodeValue(), "T"); 
					String data_fine=st4.nextToken();
					String orario_fine=st4.nextToken();
					StringTokenizer st5 =new StringTokenizer(data_fine, "-"); 
					String anno_fine=st5.nextToken();
					String mese_fine=st5.nextToken();
					String giorno_fine=st5.nextToken();
					StringTokenizer st6 =new StringTokenizer(orario_fine, "+"); 
					String ora_fine=st6.nextToken();			
					data_fineList.add(giorno_fine+"/"+mese_fine+"/"+anno_fine+" "+ora_fine);
					
					
					latList.add(nodes3.item(i).getNodeValue());
					lngList.add(nodes4.item(i).getNodeValue());
					
					String situationrecordType=nodes0.item(i).getAttributes().item(1).getNodeValue();
					if(situationrecordType.equals("MaintenanceWorks")){
						
						 event_typeList.add("Lavori in corso");
						 XPathExpression exprMW = xpath.compile("//d:situationRecord/d:roadMaintenanceType/text()");
						 Object resultMW = exprMW.evaluate(doc, XPathConstants.NODESET);
						 NodeList nodesMW = (NodeList) resultMW;	
						 detailList.add(nodesMW.item(0).getNodeValue());
						 XPathExpression exprOR = xpath.compile("//d:situationRecord/d:effectOnRoadLayout/text()");
						 Object resultOR = exprOR.evaluate(doc, XPathConstants.NODESET);
						 NodeList nodesOR = (NodeList) resultOR;	
						 eORList.add(nodesOR.item(0).getNodeValue());
						 
						
					}else if(situationrecordType.equals("NetworkManagement")){
						 event_typeList.add("Lavori in corso");
						 XPathExpression exprNM = xpath.compile("//d:situationRecord/d:NetworkManagementType/text()");
						 Object resultNM = exprNM.evaluate(doc, XPathConstants.NODESET);
						 NodeList nodesNM = (NodeList) resultNM;	
						 detailList.add(nodesNM.item(0).getNodeValue());
						 eORList.add("");
					}else if(situationrecordType.equals("AbnormalTraffic")&& nodes0.item(i).getChildNodes().item(19)!=null){
					
						event_typeList.add("Livello di servizio"); 
						XPathExpression exprAT = xpath.compile("//d:situationRecord/d:abnormalTrafficType/text()");
						 Object resultAT = exprAT.evaluate(doc, XPathConstants.NODESET);
						 NodeList nodesAT = (NodeList) resultAT;	
						 detailList.add(nodesAT.item(0).getNodeValue());
						
						 eORList.add("");
					}else{
						event_typeList.add("Limitazioni di traffico");
						 detailList.add("");
						 eORList.add("");
					}
					String infoEvent= new String(valueList.get(i)+"--"+
												data_inizioList.get(i)+"--"+
												data_fineList.get(i)+"--"+
												latList.get(i)+"--"+
												lngList.get(i)+"--"+
												event_typeList.get(i)+"--"+
												detailList.get(i)+"--"+
												eORList.get(i));
					
					infoEventList.add(infoEvent);
					
				}//end ciclo for
		
		    	}catch (Exception e) {
		    			e.printStackTrace();
		    		}

		    	//urlEventCon.disconnect();
				} catch (Exception e) {
						e.printStackTrace();
					}

		return infoEventList;
	}
	public void writeTextFile(String fileName, String s) {
		FileOutputStream fos;
		try {
			fos = new FileOutputStream(fileName);
			PrintStream ps = new PrintStream(fos);		
			ps.println(s);
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
}