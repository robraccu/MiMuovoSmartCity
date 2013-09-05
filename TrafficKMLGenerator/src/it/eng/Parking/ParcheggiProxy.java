package it.eng.Parking;

public class ParcheggiProxy implements it.eng.Parking.Parcheggi {
  private String _endpoint = null;
  private it.eng.Parking.Parcheggi parcheggi = null;
  
  public ParcheggiProxy() {
    _initParcheggiProxy();
  }
  
  public ParcheggiProxy(String endpoint) {
    _endpoint = endpoint;
    _initParcheggiProxy();
  }
  
  private void _initParcheggiProxy() {
    try {
      parcheggi = (new it.eng.Parking.ParcheggiServiceLocator()).getParcheggiPort();
      if (parcheggi != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)parcheggi)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)parcheggi)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (parcheggi != null)
      ((javax.xml.rpc.Stub)parcheggi)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public it.eng.Parking.Parcheggi getParcheggi() {
    if (parcheggi == null)
      _initParcheggiProxy();
    return parcheggi;
  }
  
  public it.eng.Parking.Parcheggio[] getParcheggi(int authUserId) throws java.rmi.RemoteException, it.eng.Parking.ParkCapabilitiesExceeded, it.eng.Parking.ParkDatabaseFailure{
    if (parcheggi == null)
      _initParcheggiProxy();
    return parcheggi.getParcheggi(authUserId);
  }
  
  public int[] getArchiParcheggio(int authUserId, int idParcheggio) throws java.rmi.RemoteException, it.eng.Parking.ParkCapabilitiesExceeded, it.eng.Parking.ParkDatabaseFailure{
    if (parcheggi == null)
      _initParcheggiProxy();
    return parcheggi.getArchiParcheggio(authUserId, idParcheggio);
  }
  
  
}