int scene = 0;
int timer = 0;
levelEdit l = new levelEdit();

void Scene() {
  if (scene == -101) {
    background(0, 187, 255);
    text("Loading...", 300, 300);
    
    if (!mousePressed) {
      scene = -102;
    }
    
  } else if (scene == -102) {
    l.creator();
    timer = 0;
  } else if (scene == -104) {
    l.playLevel();
    timer = 0;
  } else if (scene == -103) {
    textSize(30);
    fill(0);
    textAlign(CENTER, CENTER);
    text("YOU WIN", 300, 300);
    
    timer++;
    
    if (timer == 500) {
      scene = 0;
    }
    
  }
  if (scene == -10) {
    background(0, 187, 255);
    text("Loading...", 300, 300);
    if (!mousePressed) {
      scene = 1;
    }
  }

  if (scene == -1) {
    background(0, 187, 255);
    shop();
  }
  
  if (scene == 0) {
    level1(true);
    sceneButton(lsb, 200 - 15/2, 260, -10, 20);
    sceneButtonr(startbutton, 235, 200, 2, -70);
    
    if (wins > 4) {
      sceneButton(leveleb, (300 - 240 / 2), 380, -101, 50);
    }
    
    sceneButton(shopb, 235, 320, -1, -70);
    textSize(56);
    fill(255, 255, 255);
    textAlign(CENTER, CENTER);
    text(titletext, 300, 108);
    
    sceneButtone(exitb, 300 - 190 / 2, 380 + 60, 0);
    levels = 0;
  } else if (scene == 1) {
    background(0, 187, 255);
    
    for (int i = 0; i < 10; i++) {
      if (floor(wins) >= i) {
        sceneButton(lt + floor(i + 1), 10, 30 + (55 * i), i + 2, 0);
      }
    }
    
    for (int j = 0; j < 10; j++) {
      if (floor(wins) >= j + 10) {
        sceneButton(lt + floor(j + 11), 200, 30 + (55 * j), j + 12, 0);
      }
    }
    
    for (int k = 0; k < 9; k++) {
      if (floor(wins) >= k + 20) {
        sceneButton(lt + floor(k + 21), 390, 30 + (55 * k), k + 22, 0);
      }
    }
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