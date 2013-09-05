package it.eng.smartip;

public class Punto {

	private String latitude;
	private String longitude;
	
	
	public Punto(String lat, String lon){
		
		this.latitude=lat;
		this.longitude=lon;
	}
public Punto(){
		
		
	}
	
	public String getLatitude()
    {
       return latitude;
     }
	public String getLongitude()
    {
       return longitude;
     }
	public void setLatitude(String latitude)
    {
       this.latitude=latitude;
     }
	public void setLongitude(String longitude)
    {
       this.longitude=longitude;
     }
}
