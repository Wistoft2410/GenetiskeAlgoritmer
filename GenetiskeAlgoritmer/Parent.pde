import java.lang.Float;
import java.util.Collections;

class Parent implements Comparable<Parent> {
  char letter;
  float parentWeight;
  float parentValue;
  ArrayList<Genstand> kombination = new ArrayList<Genstand>();


  Parent(ArrayList<Genstand> genstande, char letter, boolean shuffle) {
    this.letter = letter;

    // Shuffle array list so it's random
    if (shuffle) Collections.shuffle(genstande);

    // Only add a maximum of 6 objects
    for (int i = 0; i < amountOfObjects; i++) {
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

  @Override
  public int compareTo(Parent parent) {
    // use the value which should be used for comparison instead of getSuitability().
    // remember: here you have private access to object o. if your value is not a
    // double, there is also a Integer.compare(..) function, but you could also just
    // return value - other.value..
    return Float.compare(this.parentValue, parent.parentValue);
  }
}
