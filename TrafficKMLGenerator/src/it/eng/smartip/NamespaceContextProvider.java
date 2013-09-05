package it.eng.smartip;
import java.util.Iterator;
import javax.xml.*;
import javax.xml.namespace.NamespaceContext;
 
class NamespaceContextProvider implements NamespaceContext {
  public String getNamespaceURI (String prefix) {
    if (prefix==null) {
      throw new NullPointerException("Null prefix");
    } else if ("soapenv".equals(prefix)) {
      return "http://schemas.xmlsoap.org/soap/envelope/";
    } else if ("d".equals(prefix)) {
      return "http://datex2.eu/schema/1_0/1_0";
    } else if ("xsi".equals(prefix)) {
        return "http://www.w3.org/2001/XMLSchema-instance";
      
    } else {
      return XMLConstants.NULL_NS_URI;
    }
  }
 
  //this method isn't necessary for XPath processing
  public String getPrefix (String uri) {
    throw new UnsupportedOperationException();
  }
 
  //this method isn't necessary for XPath processing
  public Iterator getPrefixes (String uri) {
    throw new UnsupportedOperationException();
  }
}
