import java.util.Collections;

class Population {

  Population() {
  }

  void feedbackLoop() {
    for (int i = 0; i < 10; i++) {
      println("iteration number: " + (i + 1));

      ArrayList<Parent> matingParentPool = newGeneration.isEmpty() ? parentMating(parents) : parentMating(newGeneration);

      if (!matingParentPool.isEmpty()) newGeneration = crossOver(matingParentPool);
      else {
        println("No more parents left :/");
        break;
      }

      // This function won't return a new array as the other functions does.
      // Instead it will mutate the existing array as that makes a bit more sense
      mutation(newGeneration);

      if (!newGeneration.isEmpty()) {
        Parent parent = Collections.max(newGeneration);
        println("Best parent value: " + parent.parentValue);
      } else {
        break;
      }
      println();
    }
  }

  void mutation(ArrayList<Parent> newGeneration) {
    for (Parent parent : newGeneration) {
      for (Genstand genstand : parent.kombination) {
        // flip the gene boolean variable with a chance of 1%
        genstand.gene = (int) random(1, 101) == 1 ? !genstand.gene : genstand.gene;
      }
    }
  }
}
