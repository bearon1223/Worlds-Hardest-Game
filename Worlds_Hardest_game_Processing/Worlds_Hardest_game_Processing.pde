float fail = 0, wins = 0, level = 0;
float psx, psy;
static final String CONFIG_FILE = "config.dat";

int coins = 500, wincount;

void setup() {
  size(600, 600);
  surface.setTitle("The Worlds Hardest Game");
  load();
}

void load() {
  String[] lines = loadStrings(CONFIG_FILE);
  println(lines);
  coins = int(lines[0]);
  wins = int(lines[1]);
  fail = int(lines[2]);
}

void save() {
  String[] lines = { str(coins), str(wins), str(fail)
  };
  //println(lines);

  saveStrings(dataFile(CONFIG_FILE), lines);
}

void draw() {
  Scene();
  
  save();
  
  if (scene != 0 && scene != 32) {
    fill(255);
    textAlign(CORNER, CORNER);
    textSize(20);

    text("Fails: " + floor(fail), 10, 20);
    text("Level " + floor(level) + " / 30", 450, 20);
    textAlign(CENTER, CORNER);
    text("Coins: " + floor(coins), 300, 20);

    sceneButton("Title Screen", 600 - 210, 600 - 60, 0, 20);
  }
}