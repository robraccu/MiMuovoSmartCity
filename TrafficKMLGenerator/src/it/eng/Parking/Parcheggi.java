/**
 * Parcheggi.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package it.eng.Parking;

public interface Parcheggi extends java.rmi.Remote {
    public it.eng.Parking.Parcheggio[] getParcheggi(int authUserId) throws java.rmi.RemoteException, it.eng.Parking.ParkCapabilitiesExceeded, it.eng.Parking.ParkDatabaseFailure;
    public int[] getArchiParcheggio(int authUserId, int idParcheggio) throws java.rmi.RemoteException, it.eng.Parking.ParkCapabilitiesExceeded, it.eng.Parking.ParkDatabaseFailure;
}
