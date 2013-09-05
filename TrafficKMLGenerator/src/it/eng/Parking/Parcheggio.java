/**
 * Parcheggio.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package it.eng.Parking;

public class Parcheggio  implements java.io.Serializable {
    private int idParcheggio;

    private java.lang.String descrizione;

    private int capacita;

    private int postiLiberi;

    private java.util.Calendar data;

    private boolean busNavetta;

    private boolean biciclette;

    private boolean lineeBus;

    private java.lang.String tariffe;

    private java.lang.String telefono;

    private java.lang.String homePage;

    private java.lang.String orario;

    private java.lang.String abbonamenti;

    private java.lang.String idSms;

    private boolean monitorato;

    public Parcheggio() {
    }

    public Parcheggio(
           int idParcheggio,
           java.lang.String descrizione,
           int capacita,
           int postiLiberi,
           java.util.Calendar data,
           boolean busNavetta,
           boolean biciclette,
           boolean lineeBus,
           java.lang.String tariffe,
           java.lang.String telefono,
           java.lang.String homePage,
           java.lang.String orario,
           java.lang.String abbonamenti,
           java.lang.String idSms,
           boolean monitorato) {
           this.idParcheggio = idParcheggio;
           this.descrizione = descrizione;
           this.capacita = capacita;
           this.postiLiberi = postiLiberi;
           this.data = data;
           this.busNavetta = busNavetta;
           this.biciclette = biciclette;
           this.lineeBus = lineeBus;
           this.tariffe = tariffe;
           this.telefono = telefono;
           this.homePage = homePage;
           this.orario = orario;
           this.abbonamenti = abbonamenti;
           this.idSms = idSms;
           this.monitorato = monitorato;
    }


    /**
     * Gets the idParcheggio value for this Parcheggio.
     * 
     * @return idParcheggio
     */
    public int getIdParcheggio() {
        return idParcheggio;
    }


    /**
     * Sets the idParcheggio value for this Parcheggio.
     * 
     * @param idParcheggio
     */
    public void setIdParcheggio(int idParcheggio) {
        this.idParcheggio = idParcheggio;
    }


    /**
     * Gets the descrizione value for this Parcheggio.
     * 
     * @return descrizione
     */
    public java.lang.String getDescrizione() {
        return descrizione;
    }


    /**
     * Sets the descrizione value for this Parcheggio.
     * 
     * @param descrizione
     */
    public void setDescrizione(java.lang.String descrizione) {
        this.descrizione = descrizione;
    }


    /**
     * Gets the capacita value for this Parcheggio.
     * 
     * @return capacita
     */
    public int getCapacita() {
        return capacita;
    }


    /**
     * Sets the capacita value for this Parcheggio.
     * 
     * @param capacita
     */
    public void setCapacita(int capacita) {
        this.capacita = capacita;
    }


    /**
     * Gets the postiLiberi value for this Parcheggio.
     * 
     * @return postiLiberi
     */
    public int getPostiLiberi() {
        return postiLiberi;
    }


    /**
     * Sets the postiLiberi value for this Parcheggio.
     * 
     * @param postiLiberi
     */
    public void setPostiLiberi(int postiLiberi) {
        this.postiLiberi = postiLiberi;
    }


    /**
     * Gets the data value for this Parcheggio.
     * 
     * @return data
     */
    public java.util.Calendar getData() {
        return data;
    }


    /**
     * Sets the data value for this Parcheggio.
     * 
     * @param data
     */
    public void setData(java.util.Calendar data) {
        this.data = data;
    }


    /**
     * Gets the busNavetta value for this Parcheggio.
     * 
     * @return busNavetta
     */
    public boolean isBusNavetta() {
        return busNavetta;
    }


    /**
     * Sets the busNavetta value for this Parcheggio.
     * 
     * @param busNavetta
     */
    public void setBusNavetta(boolean busNavetta) {
        this.busNavetta = busNavetta;
    }


    /**
     * Gets the biciclette value for this Parcheggio.
     * 
     * @return biciclette
     */
    public boolean isBiciclette() {
        return biciclette;
    }


    /**
     * Sets the biciclette value for this Parcheggio.
     * 
     * @param biciclette
     */
    public void setBiciclette(boolean biciclette) {
        this.biciclette = biciclette;
    }


    /**
     * Gets the lineeBus value for this Parcheggio.
     * 
     * @return lineeBus
     */
    public boolean isLineeBus() {
        return lineeBus;
    }


    /**
     * Sets the lineeBus value for this Parcheggio.
     * 
     * @param lineeBus
     */
    public void setLineeBus(boolean lineeBus) {
        this.lineeBus = lineeBus;
    }


    /**
     * Gets the tariffe value for this Parcheggio.
     * 
     * @return tariffe
     */
    public java.lang.String getTariffe() {
        return tariffe;
    }


    /**
     * Sets the tariffe value for this Parcheggio.
     * 
     * @param tariffe
     */
    public void setTariffe(java.lang.String tariffe) {
        this.tariffe = tariffe;
    }


    /**
     * Gets the telefono value for this Parcheggio.
     * 
     * @return telefono
     */
    public java.lang.String getTelefono() {
        return telefono;
    }


    /**
     * Sets the telefono value for this Parcheggio.
     * 
     * @param telefono
     */
    public void setTelefono(java.lang.String telefono) {
        this.telefono = telefono;
    }


    /**
     * Gets the homePage value for this Parcheggio.
     * 
     * @return homePage
     */
    public java.lang.String getHomePage() {
        return homePage;
    }


    /**
     * Sets the homePage value for this Parcheggio.
     * 
     * @param homePage
     */
    public void setHomePage(java.lang.String homePage) {
        this.homePage = homePage;
    }


    /**
     * Gets the orario value for this Parcheggio.
     * 
     * @return orario
     */
    public java.lang.String getOrario() {
        return orario;
    }


    /**
     * Sets the orario value for this Parcheggio.
     * 
     * @param orario
     */
    public void setOrario(java.lang.String orario) {
        this.orario = orario;
    }


    /**
     * Gets the abbonamenti value for this Parcheggio.
     * 
     * @return abbonamenti
     */
    public java.lang.String getAbbonamenti() {
        return abbonamenti;
    }


    /**
     * Sets the abbonamenti value for this Parcheggio.
     * 
     * @param abbonamenti
     */
    public void setAbbonamenti(java.lang.String abbonamenti) {
        this.abbonamenti = abbonamenti;
    }


    /**
     * Gets the idSms value for this Parcheggio.
     * 
     * @return idSms
     */
    public java.lang.String getIdSms() {
        return idSms;
    }


    /**
     * Sets the idSms value for this Parcheggio.
     * 
     * @param idSms
     */
    public void setIdSms(java.lang.String idSms) {
        this.idSms = idSms;
    }


    /**
     * Gets the monitorato value for this Parcheggio.
     * 
     * @return monitorato
     */
    public boolean isMonitorato() {
        return monitorato;
    }


    /**
     * Sets the monitorato value for this Parcheggio.
     * 
     * @param monitorato
     */
    public void setMonitorato(boolean monitorato) {
        this.monitorato = monitorato;
    }

    private java.lang.Object __equalsCalc = null;
    @Override
	public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Parcheggio)) return false;
        Parcheggio other = (Parcheggio) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            this.idParcheggio == other.getIdParcheggio() &&
            ((this.descrizione==null && other.getDescrizione()==null) || 
             (this.descrizione!=null &&
              this.descrizione.equals(other.getDescrizione()))) &&
            this.capacita == other.getCapacita() &&
            this.postiLiberi == other.getPostiLiberi() &&
            ((this.data==null && other.getData()==null) || 
             (this.data!=null &&
              this.data.equals(other.getData()))) &&
            this.busNavetta == other.isBusNavetta() &&
            this.biciclette == other.isBiciclette() &&
            this.lineeBus == other.isLineeBus() &&
            ((this.tariffe==null && other.getTariffe()==null) || 
             (this.tariffe!=null &&
              this.tariffe.equals(other.getTariffe()))) &&
            ((this.telefono==null && other.getTelefono()==null) || 
             (this.telefono!=null &&
              this.telefono.equals(other.getTelefono()))) &&
            ((this.homePage==null && other.getHomePage()==null) || 
             (this.homePage!=null &&
              this.homePage.equals(other.getHomePage()))) &&
            ((this.orario==null && other.getOrario()==null) || 
             (this.orario!=null &&
              this.orario.equals(other.getOrario()))) &&
            ((this.abbonamenti==null && other.getAbbonamenti()==null) || 
             (this.abbonamenti!=null &&
              this.abbonamenti.equals(other.getAbbonamenti()))) &&
            ((this.idSms==null && other.getIdSms()==null) || 
             (this.idSms!=null &&
              this.idSms.equals(other.getIdSms()))) &&
            this.monitorato == other.isMonitorato();
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    @Override
	public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        _hashCode += getIdParcheggio();
        if (getDescrizione() != null) {
            _hashCode += getDescrizione().hashCode();
        }
        _hashCode += getCapacita();
        _hashCode += getPostiLiberi();
        if (getData() != null) {
            _hashCode += getData().hashCode();
        }
        _hashCode += (isBusNavetta() ? Boolean.TRUE : Boolean.FALSE).hashCode();
        _hashCode += (isBiciclette() ? Boolean.TRUE : Boolean.FALSE).hashCode();
        _hashCode += (isLineeBus() ? Boolean.TRUE : Boolean.FALSE).hashCode();
        if (getTariffe() != null) {
            _hashCode += getTariffe().hashCode();
        }
        if (getTelefono() != null) {
            _hashCode += getTelefono().hashCode();
        }
        if (getHomePage() != null) {
            _hashCode += getHomePage().hashCode();
        }
        if (getOrario() != null) {
            _hashCode += getOrario().hashCode();
        }
        if (getAbbonamenti() != null) {
            _hashCode += getAbbonamenti().hashCode();
        }
        if (getIdSms() != null) {
            _hashCode += getIdSms().hashCode();
        }
        _hashCode += (isMonitorato() ? Boolean.TRUE : Boolean.FALSE).hashCode();
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Parcheggio.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://Parcheggi.WebServices.cisium.elsag.it/", "parcheggio"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("idParcheggio");
        elemField.setXmlName(new javax.xml.namespace.QName("", "idParcheggio"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("descrizione");
        elemField.setXmlName(new javax.xml.namespace.QName("", "descrizione"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("capacita");
        elemField.setXmlName(new javax.xml.namespace.QName("", "capacita"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("postiLiberi");
        elemField.setXmlName(new javax.xml.namespace.QName("", "postiLiberi"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("data");
        elemField.setXmlName(new javax.xml.namespace.QName("", "data"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("busNavetta");
        elemField.setXmlName(new javax.xml.namespace.QName("", "busNavetta"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "boolean"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("biciclette");
        elemField.setXmlName(new javax.xml.namespace.QName("", "biciclette"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "boolean"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("lineeBus");
        elemField.setXmlName(new javax.xml.namespace.QName("", "lineeBus"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "boolean"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("tariffe");
        elemField.setXmlName(new javax.xml.namespace.QName("", "tariffe"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("telefono");
        elemField.setXmlName(new javax.xml.namespace.QName("", "telefono"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("homePage");
        elemField.setXmlName(new javax.xml.namespace.QName("", "homePage"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("orario");
        elemField.setXmlName(new javax.xml.namespace.QName("", "orario"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("abbonamenti");
        elemField.setXmlName(new javax.xml.namespace.QName("", "abbonamenti"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("idSms");
        elemField.setXmlName(new javax.xml.namespace.QName("", "idSms"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("monitorato");
        elemField.setXmlName(new javax.xml.namespace.QName("", "monitorato"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "boolean"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
