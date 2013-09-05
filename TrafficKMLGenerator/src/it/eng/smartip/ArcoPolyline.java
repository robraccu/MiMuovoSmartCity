package it.eng.smartip;

import java.util.ArrayList;

public class ArcoPolyline {
	
		
		 private String id;
		 private String name;
		 private ArrayList<Punto> step;
		 private String trafficStatus;
		 private int key;//indica la posizione di un arco all'interno del filePredefinedLocation.xml (es. arco con id=257 ha key=1)
		 
		 public ArcoPolyline(String id, String n,ArrayList<Punto> s,String t,int k){
			
			this.id=id;
			this.name=n;
			this.step=s;			
			this.trafficStatus=t;
			this.key=k;
		}
		public ArcoPolyline(){
			
			
		}
		
		public String getId()
		{
			return id;
		}
		
		public String getName()
		{
			return name;
		}
		
		public ArrayList<Punto> getStep()
		{
			return step;
			
		}
		
		
		
		public String getTrafficStatus()
		{
			return trafficStatus;
		}
		public int getKey()
		{
			return key;
			
		}
		public void SetId(String id){
			
			this.id=id;
		}
		public void setStep(ArrayList<Punto> step) {
		       this.step = step;
	}
		
		public void setTrafficStatus(String trafficStatus) {
			       this.trafficStatus = trafficStatus;
	   }
		public void setName(String name) {
		       this.name = name;
}
	}
