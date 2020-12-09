ArrayList<Genstand> genstande = new ArrayList<Genstand>();
ArrayList<Parent> parents = new ArrayList<Parent>();

// This variable will eventually contain all the values/prices from the parents
float overallParentValue = 0;

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
  
  // Only add a maximum of 4 parents
  for (int i = 0; i < 4; i++) {
    Parent parent = new Parent(genstande, (char) ('a' + i));

    if (!(parent.parentWeight > 5000)) {
      parents.add(parent);
      overallParentValue += parent.parentValue;
    }
  }

  parentMating();
}

void draw() {
}

void parentMating() {
  ArrayList<Parent> matingParentPool = new ArrayList<Parent>();

  println("here are all the parents' probability:");
  for (Parent parent : parents) {
    // Calculation:
    float parentProbability = parent.parentValue / overallParentValue * 4.0;
    println("Parent " + parent.letter + " has a probability on: " + parentProbability);

    for (int i = 1; i < parentProbability; i++) {
      matingParentPool.add(parent);
    }
  }

  println();
  println("here are all the parents in the mating pool");
  for (Parent parent : matingParentPool) {
    println(parent.letter);
  }
}
