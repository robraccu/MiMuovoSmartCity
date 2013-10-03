Mi Muovo - Smart City
=====================


Installation Requirements
--------------------------

"Mi Muovo - Smart City", is based on Liferay portal so you need to download the following components:

-Liferay Portal 6.1.0 framework on Tomcat Server,
 http://sourceforge.net/projects/lportal/files/Liferay%20Portal/6.1.0%20GA1/liferay-portal-tomcat-6.1.0-ce-ga1-20120106155615760.zip
 
"WURFL" plugin:
 http://sourceforge.net/projects/lportal/files/Liferay%20Plugins/6.1.0%20GA1/wurfl-web-6.1.0.1-ce-ga1-20120106155615760.war
 
-Liferay Plugins SDK for 6.1.0:
 http://sourceforge.net/projects/lportal/files/Liferay%20Portal/6.1.0%20GA1/liferay-plugins-sdk-6.1.0-ce-ga1-20120106155615760.zip
 
-Eclipse IDE with Liferay Eclipse-based IDE for developing/compile 
 Liferay Plugins (portlets, themes, etc):
 http://www.liferay.com/it/downloads/liferay-portal/additional-files
  
-MySQL 5.0 Server or higher database available to: 
 http://dev.mysql.com/downloads/mysql/


Installation Instructions
-------------------------

-To install the MySQL DB for Liferay portal "Mi Muovo - Smart City", 
 simply import the necessary DB from self contained files that are located 
 into the java project "SMARTiP-DynamicData" in root folder:
 	lportal_smartip61_db_dump_20130412 1407.sql
 
 and into the java project "TrafficKMLGenerator" in db folder:
 	tabella_archi.sql, location_street.sql, smartip_21_12.sql.


-To install the Liferay framework just extract it and copy the folder that contains Liferay 
 wherever you want . For other special installations refer to the guidance provided by 
 the reference site:
 http://www.liferay.com/it/documentation/liferay-portal/6.1/user-guide/-/ai/installing-liferay,
 http://www.liferay.com/it/documentation/liferay-portal/6.1/user-guide/-/ai/installing-a-bund-5
 http://www.liferay.com/it/documentation/liferay-portal/6.1/user-guide/-/ai/lp-6-1-ugen11-installing-liferay-on-tomcat-7-0
 http://www.liferay.com/it/downloads/liferay-portal/thanks-for-downloading
 
 Important! We recommend to do not start Liferay before you have configured it (see the next section 'Configuration Instructions').

-To install the Liferay Plugins SDK for 6.1 just extract it and copy the folder that contains Liferay 
 to a custom installation path that will be subsequently used.
 
-To install and configure the Liferay Eclipse-based IDE refer to:
 	http://www.liferay.com/it/documentation/liferay-portal/6.0/development/-/ai/liferay-i-2


Configuration Instructions
--------------------------

At this point, if the installations are completed successfully, 
you must configure liferay to use the database of "Mi Muovo - Smart City" and 
create portal content required for the proper functioning in Liferay.

Before starting Liferay must know that there are two ways to configure it with an 
external MySQL DB, instead of its default db (Hypersonic).

The first way is to use the wizard Liferay following the instructions at:
	http://www.liferay.com/it/documentation/liferay-portal/6.1/user-guide/-/ai/using-liferay-s-setup-wizard
	
after this, the configuration is saved in /YOUR-PATH/liferay-portal-6.1/portal-setup-wizard.properties. 
	
The second way is to do it manually by following the instructions at:
	http://www.liferay.com/it/documentation/liferay-portal/6.1/user-guide/-/ai/lp-6-1-ugen14-manual-configuration-0

WE RECOMMEND that you download and copy the file 'portal-ext.properties' within the
root folder of Liferay. This file not only contains the configuration for the use of MySQL DB, 
but it also contains some additional settings for the portal.

If you have followed the first way, you will have already started Liferay and created the user administrator. 
Following the procedure, by clicking on "Go to My Portal", you will see the portal devoid of content.
The same result will be achieved following the second way, 
if after setting the DB manually and/or copied the file 'portal-ext.properties', will be launched Liferay.

For the launch of Liferay see:
	http://www.liferay.com/it/documentation/liferay-portal/6.1/user-guide/-/ai/installing-a-bund-5


Portlets Installation
---------------------

-Now you can copy the file of the "WURFL" plugin previously downloaded in the folder 'deploy' in the root of Liferay,
 so that it is installed in Liferay.

-To set the contents of the portal you need to compile and export the WAR files
 projects (portlet, hook, theme, ...) downloaded from GitHub.
 The compilation will be done through the SDK and Liferay IDE in Eclipse and then
 you can export each project as a WAR file.
 Refer to:
 	http://www.liferay.com/it/documentation/liferay-portal/6.0/development/-/ai/liferay-i-2

-To import the project in eclipse and then compile it yourself, refer to:
 	http://www.liferay.com/it/documentation/liferay-portal/6.0/development/-/ai/importing-existing-projects-into-liferay-ide

Once completed projects you can export them as WAR files, using Eclipse.
After that, start Liferay and as soon as the server has completed its startup, copy the
WAR files in the folder 'deploy' in the root of Liferay.

NOTE
We recommend copying a WAR file at a time in the deploy folder with the server started,
and wait for each of the deployment occurred.

At the end of all the deployments, make a page refresh on the browser and you should see the
portal with its content (portlets), otherwise restart your server.


Proxy Settings
---------------------

If your network  is connected to the internet through a proxy server you can manually configure the settings for accessing to external web service used in the portal "Mi Muovo - Smart City".
There are four webservices used in the portal:
-Traffic webservice
-Problems Circulation webservice
-Parking webservice
-Bus Stop webservice

For the  first three services you can configure the proxy settings opening the Java Archive TrafficKMLGenerator.jar that is located into the java project "SMARTiP-DynamicData". Inside this archive there is a config.properties file; there are five properties for proxy settings:

-proxy=yes/no
-proxyHost=name of the server proxy
-proxyPort=port used by server proxy
And if  your proxy requires authentication you can also set username and password

For Bus Stop webservice you can configure the proxy settings opening the two Java Archive fermatebusclient2.jar that are located into the java projects SMARTiP-Cisium-Traffico-portlet and MobileSplit-portlet. 
In both of them you should go to the WEB-INF/lib folder and open the jar;each archive contains the config.properties file with its section for proxy settings.

Fusion Tables
---------------------
The properties files LanguageTraffico.properties and LanguageMobile.properties, that are located into the java projects SMARTiP-Cisium-Traffico-portlet and MobileSplit-portlet, contain a section at the end of file for Fusion Tables setting; the new release of portal "Mi Muovo - Smart City" uses this technology for rendering the layers on the map.
For each table there are two parameters for configuration:
-id of the table
-column number containing datas for geolocalization of the information on the map
