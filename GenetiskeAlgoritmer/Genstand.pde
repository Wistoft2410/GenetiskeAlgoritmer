import java.util.Random;

class Genstand {
  boolean gene;
  String name;
  float weight;
  float value;
  
  Genstand(String tempName, float tempWeight, float tempValue) {
    name = tempName; 
    weight = tempWeight; 
    value = tempValue; 

    Random rd = new Random();
    gene = rd.nextBoolean();
  }
}
