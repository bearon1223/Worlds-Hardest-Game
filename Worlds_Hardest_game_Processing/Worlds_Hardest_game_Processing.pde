import processing.sound.*;
SoundFile music;

float fail = 0, wins = 0, levels = 0;
float psx, psy;
PFont times;
PFont SL;

String titletext, startbutton, leveleb, exitb, lsb, shopb, lt, ft, let, ct, sknb, wrn, menu, gridboolt, est, lbt, returnt;
float startbuttons, levelebs, exitbs, lsbs, shopbs, sknbs, menus, wrns, gridbools, ess, lbs, returns, titletexts;
boolean gb = false, es = false, ch = true, mute = true, isLevelEdit = false;
static final String CONFIG_FILE = "config.dat";
static final String US_LANGUAGE_FILE = "us.lang";
static final String FR_LANGUAGE_FILE = "fr.lang";
static final String PS_LANGUAGE_FILE = "pirates_speek.lang";
static final String JP_LANGUAGE_FILE = "jp.lang";
static final String CH_LANGUAGE_FILE = "ch.lang";

int coins = 100, wincount;

void setup() {
  size(600, 600);
  times = createFont("Times-Roman-48", 15);
  SL = createFont("AlBayan-48", 15);
  surface.setTitle("The Worlds Hardest Game");
  load();
  if (langtype == 0) {
    textFont(times);
    loadlanguage(US_LANGUAGE_FILE);
  } else if (langtype == 1) {
    textFont(times);
    loadlanguage(FR_LANGUAGE_FILE);
  } else if (langtype == 2) {
    textFont(times);
    loadlanguage(PS_LANGUAGE_FILE);
  } else if (langtype == 3) {
    textFont(SL);
    loadlanguage(JP_LANGUAGE_FILE);
  } else if (langtype == 4) {
    textFont(SL);
    loadlanguage(CH_LANGUAGE_FILE);
  }
  //music = new SoundFile(this, "music.mp3");
  //music.play(); 
}

void load() {
  String[] lines = loadStrings(CONFIG_FILE);
  coins = int(lines[0]);
  wins = int(lines[1]);
  fail = int(lines[2]);
  gb = boolean(lines[3]);
  es = boolean(lines[4]);
  ch = boolean(lines[5]);
  mute = boolean(lines[6]);
  langtype = int(lines[7]);
  isLevelEdit = boolean(lines[8]);
}

void loadlanguage(String Used) {
  String[] lines = loadStrings(Used);
  titletext = lines[0];
  titletexts = int(lines[1]);
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
    str(coins), str(wins), str(fail), str(gb), str(es), str(ch), str(mute), str(langtype), str(isLevelEdit)
  };
  saveStrings(dataFile(CONFIG_FILE), lines);
}

void draw() {
  Scene();
  save();
  if (langtype == 0) {
    textFont(times);
    loadlanguage(US_LANGUAGE_FILE);
  } else if (langtype == 1) {
    textFont(times);
    loadlanguage(FR_LANGUAGE_FILE);
  } else if (langtype == 2) {
    textFont(times);
    loadlanguage(PS_LANGUAGE_FILE);
  } else if (langtype == 3) {
    textFont(SL);
    loadlanguage(JP_LANGUAGE_FILE);
  } else if (langtype == 4) {
    textFont(SL);
    loadlanguage(CH_LANGUAGE_FILE);
  }
  //textFont(test);
  //text("だ", 10, 10);

  if (scene != 0 && scene != 32 && scene != -102 && scene != -103 && scene != -342) {
    fill(255);
    textAlign(CORNER, CORNER);
    textSize(20);

    text(ft + floor(fail), 10, 20);
    text(let + floor(levels) + " / 30", 450, 20);
    textAlign(CENTER, CORNER);
    text(ct + floor(coins), 300, 20);

    sceneButton(returnt, 600 - (190 + returns), 600 - 60, 0, returns);
  }
}
