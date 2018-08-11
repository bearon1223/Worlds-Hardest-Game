float fail = 0, wins = 0, levels = 0;
float psx, psy;
static final String CONFIG_FILE = "config.dat";
static final String LEVEL_EDITOR_SAVE_FILE = "level editor.dat";

int coins = 500, wincount;

float line1, line2, line3, line4, line5, line6, line7, line8, line9, line10, line11, line12, 
  line13, line14, line15, line16, line17, line18, line19, line20, line21, line22, line23, line24;

void setup() {
  size(600, 600);
  surface.setTitle("The Worlds Hardest Game");
  load();
}

void saveLevel() {
  String[] lines = {
    str(line1), str(line2), str(line3), str(line4), str(line5), str(line6), 
    str(line7), str(line8), str(line9), str(line10), str(line11), str(line12), 
    str(line13), str(line14), str(line15), str(line16), str(line17), str(line18), 
    str(line19), str(line20), str(line21), str(line22), str(line23), str(line24)
  };
  //println(lines);

  saveStrings(dataFile(LEVEL_EDITOR_SAVE_FILE), lines);
}

void load() {
  String[] lines = loadStrings(CONFIG_FILE);
  //println(lines);
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
    text("Level " + floor(levels) + " / 30", 450, 20);
    textAlign(CENTER, CORNER);
    text("Coins: " + floor(coins), 300, 20);

    sceneButton("Title Screen", 600 - 210, 600 - 60, 0, 20);
  }
}