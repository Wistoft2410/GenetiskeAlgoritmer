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

  void data() {
    // Name, weight, value
    genstande.add(new Genstand("kort", 90, 150));
    genstande.add(new Genstand("kompas", 130, 35));
    genstande.add(new Genstand("vand", 1530, 200));
    genstande.add(new Genstand("sandwich", 500, 160));
    genstande.add(new Genstand("sukker", 150, 60));
    genstande.add(new Genstand("dåsemad", 680, 45));
    genstande.add(new Genstand("banan", 270, 60));
    genstande.add(new Genstand("æble", 390, 40));
    genstande.add(new Genstand("ost", 230, 30));
    genstande.add(new Genstand("øl", 520, 10));
    genstande.add(new Genstand("solcreme", 110, 70));
    genstande.add(new Genstand("kamera", 320, 30));
    genstande.add(new Genstand("T-shirt", 240, 15));
    genstande.add(new Genstand("bukser", 480, 10));
    genstande.add(new Genstand("paraply", 730, 40));
    genstande.add(new Genstand("vandhæfte bukser", 420, 70));
    genstande.add(new Genstand("vandtæt overtøj", 430, 75));
    genstande.add(new Genstand("pung", 220, 80));
    genstande.add(new Genstand("solbriller", 70, 20));
    genstande.add(new Genstand("håndklæde", 180, 12));
    genstande.add(new Genstand("sokker", 40, 50));
    genstande.add(new Genstand("bog", 300, 10));
    genstande.add(new Genstand("notesbog", 900, 1));
    genstande.add(new Genstand("telt", 2000, 150));

    // Only add a maximum of amountOfParents parents
    for (int i = 0; i < amountOfParents; i++) {
      Parent parent = new Parent(genstande, (char) ('a' + i), true);

      if (!(parent.parentWeight > 5000)) {
        parents.add(parent);
        overallParentValue += parent.parentValue;
      }
    }
  }
}
