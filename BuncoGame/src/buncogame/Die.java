package buncogame;
import java.util.Random;

public class Die {
	
	private int value;
	private String url;
/**
 * 
 */
public Die() { 
	this.setRandom();
	this.setURL();
}

/**
 * @param value
 */

public int getValue(){
	return value;
}

public void setValue(int value){
	this.value = value;
	this.setURL();
}

 public void setRandom(){
	Random rand = new Random();
	value = rand.nextInt(6)+1;
	this.setURL();
	}
 public String toString(){
	 String msg="";
	 return msg;
 }
 
 private void setURL() {
	// String url="";
	 if(this.value == 1) {this.url="http://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Dice-1.svg/557px-Dice-1.svg.png";}
	 if(this.value == 2) {this.url="http://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Dice-2a.svg/557px-Dice-2a.svg.png";}
	 if(this.value == 3) {this.url="https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Dice-3a.svg/557px-Dice-3a.svg.png";}
	 if(this.value == 4) {this.url="http://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Dice-4.svg/557px-Dice-4.svg.png";}
	 if(this.value == 5) {this.url="http://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Dice-5.svg/557px-Dice-5.svg.png";}
	 if(this.value == 6) {this.url="http://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Dice-6a.svg/557px-Dice-6a.svg.png";}
	 
	 //this.url = url;
 }
 
 public String getURL() {
	 return url;
 }
 
}




