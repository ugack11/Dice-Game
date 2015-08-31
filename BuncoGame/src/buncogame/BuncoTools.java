package buncogame;

public class BuncoTools {
	String name = "";

	public BuncoTools(String name){
		this.name = name;
	}	
	
	public String getPlayerName(int i) {
		if(i == 0){return "North";}
		if(i == 1){return "East";}
		if(i == 2){return "South";}
		if(i == 3){return "West";} else{return "error";}
	}

}	
	
	
	
	
	
	
	
