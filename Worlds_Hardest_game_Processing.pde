float fail = 0, wins = 30, level = 0;
float psx, psy;

void setup() {
  size(600, 600);
  surface.setTitle("The Worlds Hardest Game");
}

void draw() {
  Scene();

  if (scene != 0) {

    fill(255);
    textAlign(CORNER, CORNER);
    textSize(20);

    text("Fails: " + floor(fail), 10, 20);
    text("Level " + floor(level) + " / 30", 450, 20);

    sceneButton("Title Screen", 600 - 210, 600 - 60, 0, 20);
  }
}