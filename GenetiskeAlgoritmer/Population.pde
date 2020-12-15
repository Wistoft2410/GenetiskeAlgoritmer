import java.util.Collections;

class Population {

  Population() {
  }

  void feedbackLoop() {
    for (int i = 0; i < 10; i++) {
      println("iteration number: " + (i + 1));
      println();

      ArrayList<Parent> matingParentPool = newGeneration.isEmpty() ? parentMating(parents) : parentMating(newGeneration);

      newGeneration = crossOver(matingParentPool);

      // This function won't return a new array as the other functions does.
      // Instead it will mutate the existing array as that makes a bit more sense
      mutation(newGeneration);

      if (!newGeneration.isEmpty()) {
        println("We have now found the most optimized parent/kombination of items in a back under 5kg:");
        Parent parent = newGeneration.get(0);
        println("The overall weight of the parent/kombination is: " + parent.parentWeight + "grams");
        println("The overall value of the parent/kombination is: " + parent.parentValue + "kr");
        println("Here are all its items:");

        for (Genstand genstand : parent.kombination) {
          println();
          println("item name: " + genstand.name);
          println("item weight: " + genstand.weight);
          println("item value: " + genstand.value);
          println("item gene: " + genstand.gene);
        }
      }
    }
  }
  void mutation(ArrayList<Parent> newGeneration) {
    for (Parent parent : newGeneration) {
      for (Genstand genstand : parent.kombination) {
        // flip the gene boolean variable with a chance of 1%
        genstand.gene = (int) random(1, 101) == 1  ? !genstand.gene : genstand.gene;
      }
    }
  }
}
