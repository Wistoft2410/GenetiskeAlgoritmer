import java.util.Collections;

class Parent {
  char letter;
  int parentWeight;
  int parentValue;
  ArrayList<Genstand> kombination = new ArrayList<Genstand>();


  Parent(ArrayList<Genstand> genstande, char letter) {
    this.letter = letter;

    // Shuffle array list so it's random
    Collections.shuffle(genstande);

    // Only add a maximum of 6 objects
    for (int i = 0; i < 6; i++) {
      // Retrieve the specific object
      Genstand genstand = genstande.get(i);

      // Collect all the weights
      parentWeight += genstand.weight;

      // Collect all the values
      parentValue += genstand.value;

      // Finally add the object to this parent's combination/DNA
      kombination.add(genstand);
    }
  }
}
