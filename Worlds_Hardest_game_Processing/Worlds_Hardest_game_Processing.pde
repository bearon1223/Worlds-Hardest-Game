float fail = 0, wins = 0, levels = 0;
float psx, psy;
String titletext, startbutton, leveleb, exitb, lsb, shopb, lt, ft, let, ct;
static final String CONFIG_FILE = "config.dat";
static final String US_LANGUAGE_FILE = "us.lang";
static final String JAPANESE_LANGUAGE_FILE = "japanese.lang";

int coins = 100, wincount;

void setup() {
  size(600, 600);
  surface.setTitle("The Worlds Hardest Game");
  load();
  loadlanguage();
}

void load() {
  String[] lines = loadStrings(CONFIG_FILE);
  coins = int(lines[0]);
  wins = int(lines[1]);
  fail = int(lines[2]);
}

void loadlanguage(){
  String[] lines = loadStrings(US_LANGUAGE_FILE);
  titletext = lines[0];
  startbutton = lines[1];
  leveleb = lines[2];
  exitb = lines[3];
  lsb = lines[4];
  shopb = lines[5];
  lt = lines[6];
  ft = lines[7];
  let = lines[8];
  ct = lines[9];
}

void save() {
  String[] lines = { 
    str(coins), str(wins), str(fail)
  };
  saveStrings(dataFile(CONFIG_FILE), lines);
}

void draw() {
  Scene();
  save();

  if (scene != 0 && scene != 32 && scene != -102 && scene != -103) {
    fill(255);
    textAlign(CORNER, CORNER);
    textSize(20);

    text(ft + floor(fail), 10, 20);
    text(let + floor(levels) + " / 30", 450, 20);
    textAlign(CENTER, CORNER);
    text(ct + floor(coins), 300, 20);

    sceneButton("Title Screen", 600 - 210, 600 - 60, 0, 20);
  }
}