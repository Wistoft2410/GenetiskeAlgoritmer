import java.util.Collections;

Population pop = new Population();
ArrayList<Genstand> genstande = new ArrayList<Genstand>();
ArrayList<Parent> parents = new ArrayList<Parent>();

float overallParentValue = 0;
int amountOfParents = 12;
int amountOfObjects = 12;

void setup() {
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

  noLoop();
}

void draw() {
  pop.feedbackLoop();
}

ArrayList<Parent> newGeneration = new ArrayList<Parent>();



ArrayList<Parent> parentMating(ArrayList<Parent> generation) {
  ArrayList<Parent> matingParentPool = new ArrayList<Parent>();

  for (Parent parent : generation) {
    // Calculation:
    float parentProbability = (parent.parentValue / overallParentValue) * 4.0;

    for (int i = 1; i < parentProbability; i++) {
      matingParentPool.add(parent);
    }
  }

  return matingParentPool;
}

ArrayList<Parent> crossOver(ArrayList<Parent> matingParentPool) {
  // *** PICK THE TWO HIGHEST VALUED PARENTS ***
  if (!matingParentPool.isEmpty()) {
    // Pick the highest valued parent
    Parent parentHighValue1 = Collections.max(matingParentPool);
    // Remove the highest valued parent so the next call to "Collections.max" will pick
    // the next largest parent!
    matingParentPool.remove(parentHighValue1);
  } else {
    println("Can't pick a highest valued parent since the list is empty :/");
  }

  if (!matingParentPool.isEmpty()) {
    // Pick the second highest valued parent
    Parent parentHighValue2 = Collections.max(matingParentPool);
  } else {
    println("Can't pick a second highest valued parent since the list is empty :/");
  }

  // *** MIX GENES ***
  ArrayList<Parent> newGeneration = new ArrayList<Parent>();

  if (matingParentPool.size() > 1) {
    Parent parent1 = matingParentPool.get(0);
    Parent parent2 = matingParentPool.get(1);

    ArrayList<Genstand> newChildObjects1 = new ArrayList<Genstand>();
    ArrayList<Genstand> newChildObjects2 = new ArrayList<Genstand>();

    for (int i = 0; i < amountOfObjects / 2; i++) {
      newChildObjects1.add(parent2.kombination.get(i));
      newChildObjects2.add(parent1.kombination.get(i));
    }

    for (int i = 6; i < amountOfObjects; i++) {
      newChildObjects1.add(parent1.kombination.get(i));
      newChildObjects2.add(parent2.kombination.get(i));
    }

    // Add the new paired genes to the new parent (child) object
    newGeneration.add(new Parent(newChildObjects1, 'w', false));
    newGeneration.add(new Parent(newChildObjects2, 'v', false));

    return newGeneration;
  } else println("Not enough parents :/");

  // return empty generation to signal that no new generation could be made.
  // Also have to do this since we must return something
  return new ArrayList<Parent>();
}
