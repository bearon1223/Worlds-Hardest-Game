int scene = 0;

void Scene() {
  if(scene == -1){
    background(0, 187, 255);
    shop();
  }
  if (scene == 0) {
    level1(true);
    sceneButton("Level Select", 200 - 15/2, 260, 1, 20);
    sceneButtonr("Play", 235, 200, 2, -70);
    sceneButton("Shop", 235, 320, -1, -70);
    textSize(56);
    fill(255, 255, 255);
    textAlign(CENTER, CENTER);
    text("Worlds Hardest Game", 300, 108);
    sceneButtone("Exit", 300 - 190 / 2, 380, 0);
    level = 0;
  } else if (scene == 1) {
    background(0, 187, 255);
    if (floor(wins) >= 0) {
      sceneButton("Level 1", 10, 200, 2, 0);
    }
    if (floor(wins) >= 1) {
      sceneButton("Level 2", 10, 260, 3, 0);
    }
    if (floor(wins) >= 2) {
      sceneButton("Level 3", 10, 320, 4, 0);
    }
    if (floor(wins) >= 3) {
      sceneButton("Level 4", 10, 380, 5, 0);
    }
    if (floor(wins) >= 4) {
      sceneButton("Level 5", 10, 440, 6, 0);
    }
    if (floor(wins) >= 30) {
      sceneButton("Trophy", 180 * 2 + 20, 440, 32, 0);
    }
  } else if (scene == 2) {
    level1(false);
    level = 1;
  } else if (scene == 3) {
    level2();
    level = 2;
  } else if (scene == 4) {
    level3();
    level = 3;
  } else if (scene == 5) {
    level4();
    level = 4;
  } else if (scene == 6) {
    level5();
    level = 5;
  } else if (scene == 7) {
    level = scene - 1;
  } else if (scene == 8) {
    level = scene - 1;
  } else if (scene == 9) {
    level = scene - 1;
  } else if (scene == 10) {
    level = scene - 1;
  } else if (scene == 11) {
    level = scene - 1;
  } else if (scene == 12) {
    level = scene - 1;
  } else if (scene == 13) {
    level = scene - 1;
  } else if (scene == 14) {
    level = scene - 1;
  } else if (scene == 15) {
    level = scene - 1;
  } else if (scene == 16) {
    level = scene - 1;
  } else if (scene == 17) {
    level = scene - 1;
  } else if (scene == 18) {
    level = scene - 1;
  } else if (scene == 19) {
    level = scene - 1;
  } else if (scene == 20) {
    level = scene - 1;
  } else if (scene == 21) {
    level = scene - 1;
  } else if (scene == 22) {
    level = scene - 1;
  } else if (scene == 23) {
    level = scene - 1;
  } else if (scene == 24) {
    level = scene - 1;
  } else if (scene == 25) {
    level = scene - 1;
  } else if (scene == 26) {
    level = scene - 1;
  } else if (scene == 27) {
    level = scene - 1;
  } else if (scene == 28) {
    level = scene - 1;
  } else if (scene == 29) {
    level = scene - 1;
  } else if (scene == 30) {
    level = scene - 1;
  } else if (scene == 31) {
    level = scene - 1;
    textSize(10);
    fill(255);
    text("if you beat this level press the up arrow to download a surprise", 10, 35);
  } else if (scene == 32) {
    trophy("30");
  }
}