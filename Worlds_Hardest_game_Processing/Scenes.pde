int scene = 0;

void Scene() {
  if (scene == -10) {
    background(0, 187, 255);
    text("Loading...", 300, 300);
    if (!mousePressed) {
      scene = 1;
    }
  }

  //if (scene == -11) {
  //  background(0, 187, 255);
  //  text("Loading...", 300, 300);
  //  if (!mousePressed) {
  //    scene = -2;
  //  }
  //}

  if (scene == -1) {
    background(0, 187, 255);
    shop();
  }
  if (scene == 0) {
    level1(true);
    sceneButton("Level Select", 200 - 15/2, 260, -10, 20);
    sceneButtonr("Play", 235, 200, 2, -70);
    sceneButton("Shop", 235, 320, -1, -70);
    textSize(56);
    fill(255, 255, 255);
    textAlign(CENTER, CENTER);
    text("Worlds Hardest Game", 300, 108);
    sceneButtone("Exit", 300 - 190 / 2, 380, 0);
    levels = 0;
  } else if (scene == 1) {
    background(0, 187, 255);
    for (int i = 0; i < 10; i++) {
      if (floor(wins) >= i) {
        sceneButton("Level " + floor(i + 1), 10, 30 + (55 * i), i + 2, 0);
      }
    }
    for (int j = 0; j < 10; j++) {
      if (floor(wins) >= j + 10) {
        sceneButton("Level " + floor(j + 11), 200, 30 + (55 * j), j + 12, 0);
      }
    }
    for (int k = 0; k < 9; k++) {
      if (floor(wins) >= k + 20) {
        sceneButton("Level " + floor(k + 21), 390, 30 + (55 * k), k + 22, 0);
      }
    }
    //sceneButton("Next Page", 600 - 210, 540 - 60, -11, -11);
  } else if (scene < 31 && scene >= 2) {
    for (int i = 0; i <= 30; i++) {
      if (scene == 2 + i) {
        level(i + 1);
        levels = i + 1;
      }
    }
  } else if (scene == 31) {
    levels = scene - 1;
    scene++;
    textSize(10);
    fill(255);
    text("if you beat this level press the up arrow to download a surprise", 10, 35);
  } else if (scene == 32) {
    trophy("30");
  }
}
