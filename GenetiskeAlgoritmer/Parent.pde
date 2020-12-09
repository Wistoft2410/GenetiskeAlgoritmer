import java.util.Collections;

class Parent {
  int overallWeight = 0;
  ArrayList<Genstand> kombination = new ArrayList<Genstand>();


  Parent(ArrayList<Genstand> genstande) {
    // Shuffle array list so it's random
    Collections.shuffle(genstande);

    // Only add a maximum of 6 objects
    for (int i = 0; i < 6; i++) {
      // Retrieve the specific object
      Genstand genstand = genstande.get(i);

      // Collect all the weights
      overallWeight += genstand.weight;

      // Finally add the object to this parent's combination/DNA
      kombination.add(genstand);
    }
    println("overallWeight: " + overallWeight);
    println("Here comes the objects:");
    for (Genstand genstand : kombination) {
      println(genstand.name);
    }
    println();
    println();
  }
}
