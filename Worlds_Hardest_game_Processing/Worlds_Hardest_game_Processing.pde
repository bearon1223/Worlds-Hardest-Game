float fail = 0, wins = 0, levels = 0;
float psx, psy;
String titletext, startbutton, leveleb, exitb, lsb, shopb, lt, ft, let, ct, sknb, wrn, menu;
float startbuttons, levelebs, exitbs, lsbs, shopbs, sknbs, menus, wrns;
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
}

void loadlanguage(String Used){
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
  if(langtype == 0){
  loadlanguage(US_LANGUAGE_FILE);
  } else if(langtype == 1){
    loadlanguage(FR_LANGUAGE_FILE);
  } else if(langtype == 2){
    loadlanguage(PS_LANGUAGE_FILE);
  }

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
