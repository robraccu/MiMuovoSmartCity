/**
 * ParcheggiServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package it.eng.Parking;

import it.eng.smartip.TrafficAnalyzer;

import java.io.IOException;
import java.util.Properties;

public class ParcheggiServiceLocator extends org.apache.axis.client.Service implements it.eng.Parking.ParcheggiService {

	// Use to get a proxy class for ParcheggiPort
    private java.lang.String ParcheggiPort_address = "";
    
    public ParcheggiServiceLocator() {
    	Properties props=new Properties();
    	try {
			props.load(TrafficAnalyzer.class.getResourceAsStream("/config.properties"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String parcheggiPort_address = props.getProperty("urlParkingService");
		setParcheggiPort_address( parcheggiPort_address);
    	
    }


    public ParcheggiServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public ParcheggiServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    

    public java.lang.String getParcheggiPortAddress() {
        return ParcheggiPort_address;
    }

    public void setParcheggiPort_address(java.lang.String parcheggiPort_address) {
		ParcheggiPort_address = parcheggiPort_address;
	}

	// The WSDD service name defaults to the port name.
    private java.lang.String ParcheggiPortWSDDServiceName = "ParcheggiPort";

    public java.lang.String getParcheggiPortWSDDServiceName() {
        return ParcheggiPortWSDDServiceName;
    }

    public void setParcheggiPortWSDDServiceName(java.lang.String name) {
        ParcheggiPortWSDDServiceName = name;
    }

    public it.eng.Parking.Parcheggi getParcheggiPort() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(ParcheggiPort_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getParcheggiPort(endpoint);
    }

    public it.eng.Parking.Parcheggi getParcheggiPort(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            it.eng.Parking.ParcheggiPortBindingStub _stub = new it.eng.Parking.ParcheggiPortBindingStub(portAddress, this);
            _stub.setPortName(getParcheggiPortWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setParcheggiPortEndpointAddress(java.lang.String address) {
        ParcheggiPort_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    @Override
	public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (it.eng.Parking.Parcheggi.class.isAssignableFrom(serviceEndpointInterface)) {
                it.eng.Parking.ParcheggiPortBindingStub _stub = new it.eng.Parking.ParcheggiPortBindingStub(new java.net.URL(ParcheggiPort_address), this);
                _stub.setPortName(getParcheggiPortWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    @Override
	public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("ParcheggiPort".equals(inputPortName)) {
            return getParcheggiPort();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    @Override
	public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://Parcheggi.WebServices.cisium.elsag.it/", "ParcheggiService");
    }

    private java.util.HashSet ports = null;

    @Override
	public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://Parcheggi.WebServices.cisium.elsag.it/", "ParcheggiPort"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("ParcheggiPort".equals(portName)) {
            setParcheggiPortEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
