void setup() {
  size(800, 800);

  ArrayList<Genstand> genstande = new ArrayList<Genstand>();

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

  ArrayList<Parent> parents = new ArrayList<Parent>();
  
  // Only add a maximum of 4 parents
  for (int i = 0; i < 4; i++) {
    Parent parent = new Parent(genstande);
    if (!(parent.overallWeight  > 5000)) {
      parents.add(parent);
    }
  }
}

void draw() {
  
}

void newIteration() {
  
}
