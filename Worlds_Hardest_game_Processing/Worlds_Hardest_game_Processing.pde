float fail = 0, wins = 0, levels = 0;
float psx, psy;
String titletext, startbutton, leveleb, exitb, lsb, shopb, lt, ft, let, ct, sknb, wrn, menu, gridboolt, est, lbt, returnt;
float startbuttons, levelebs, exitbs, lsbs, shopbs, sknbs, menus, wrns, gridbools, ess, lbs, returns;
boolean gb = false, es = false, ch = true;
static final String CONFIG_FILE = "config.dat";
static final String US_LANGUAGE_FILE = "us.lang";
static final String FR_LANGUAGE_FILE = "fr.lang";
static final String PS_LANGUAGE_FILE = "pirates_speek.lang";

int coins = 100, wincount;

void setup() {
  size(600, 600);
  surface.setTitle("The Worlds Hardest Game");
  load();
  loadlanguage(US_LANGUAGE_FILE);
}

void load() {
  String[] lines = loadStrings(CONFIG_FILE);
  coins = int(lines[0]);
  wins = int(lines[1]);
  fail = int(lines[2]);
  gb = boolean(lines[3]);
  es = boolean(lines[4]);
}

void loadlanguage(String Used) {
  String[] lines = loadStrings(Used);
  titletext = lines[0];
  startbutton = lines[2];
  startbuttons = int(lines[3]);
  leveleb = lines[4];
  levelebs = int(lines[5]);
  exitb = lines[6];
  exitbs = int(lines[7]);
  lsb = lines[8];
  lsbs = int(lines[9]);
  shopb = lines[10];
  shopbs = int(lines[11]);
  lt = lines[12];
  ft = lines[14];
  let = lines[12];
  ct = lines[16];
  sknb = lines[18];
  sknbs = int(lines[19]);
  wrn = lines[20];
  wrns = int(lines[21]);
  menu = lines[22];
  menus = int(lines[23]);
  gridboolt = lines[24];
  gridbools = int(lines[25]);
  est = lines[26];
  ess = int(lines[27]);
  lbt = lines[28];
  lbs = int(lines[29]);
  returnt = lines[30];
  returns = int(lines[31]);
}

void save() {
  String[] lines = {
    str(coins), str(wins), str(fail), str(gb), str(es)
  };
  saveStrings(dataFile(CONFIG_FILE), lines);
}

void draw() {
  Scene();
  save();
  if (langtype == 0) {
    loadlanguage(US_LANGUAGE_FILE);
  } else if (langtype == 1) {
    loadlanguage(FR_LANGUAGE_FILE);
  } else if (langtype == 2) {
    loadlanguage(PS_LANGUAGE_FILE);
  }

  if (scene != 0 && scene != 32 && scene != -102 && scene != -103 && scene != -342) {
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
