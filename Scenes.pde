int scene = 0;

void Scene() {
  if (scene == 0) {
    level1(true);
    sceneButton("Level Select", 200 - 15/2, 260, 1, 20);
    sceneButtonr("Play", 235, 200, 2, -70);
    textSize(56);
    fill(255, 255, 255);
    textAlign(CENTER, CENTER);
    text("Worlds Hardest Game", 300, 108);
    level = 0;
  } else if (scene == 1) {
    background(0, 187, 255);
    if (floor(wins) >= 0) {
      sceneButton("Level 1", 10, 200, 2, 0);
    }
    if (floor(wins) >= 1) {
      sceneButton("Level 2", 10, 260, 3, 0);
    }
  } else if (scene == 2) {
    level1(false);
    level = 1;
  } else if ( scene == 3) {
    level2();
    level = 2;
  }
}