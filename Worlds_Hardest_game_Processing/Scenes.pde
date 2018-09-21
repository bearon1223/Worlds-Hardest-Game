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

  if (scene == -1) {
    background(0, 187, 255);
    shop();
  }

  if (scene == -343) {
    background(0, 187, 255);
    sceneButton(lbt, 10, 520, -342, lbs);
    gButton(gridboolt, 10, 30, gridbools);
    textAlign(CORNER, CORNER);
    text(str(gb), 20 + (gridbools + 180), 70);
    gButton2(est, 10, 90, ess);
    textAlign(CORNER, CORNER);
    text(str(es), 20 + (ess + 180), 130);
    gButton3("checker?", 10, 150, 0);
    textAlign(CORNER, CORNER);
    text(str(ch), 20 + (180), 190);
  }

  if (scene == -342) {
    background(0, 187, 255);
    textFont(times);
    menuButton("English", 10, 30, 0, 0);
    menuButton("français", 10, 90, 0, 1);
    menuButton("Pirates Speak", 10, 150, 50, 2);
    textFont(SL);
    menuButton("日本国", 10, 210, 50, 3);
    menuButton("中文", 10, 270, 50, 4);
    if (langtype == 0) {
    textFont(times);
  } else if (langtype == 1) {
    textFont(times);
  } else if (langtype == 2) {
    textFont(times);
  } else if (langtype == 3) {
    textFont(SL);
  } else if (langtype == 4) {
    textFont(SL);
  }
    sceneButton(returnt, 600 - (190 + returns), 600 - 60, -343, returns);
  }

  if (scene == 0) {
    level1(true);
    sceneButtonc(lsb, 300, 260, 1, lsbs);
    sceneButtonr(startbutton, 300, 200, 2, startbuttons);
    sceneButtonc(menu, 300, 380 + 60, -343, menus);

    if (isLevelEdit) {
      sceneButtonc(leveleb, 300, 380, -101, levelebs);
    }

    sceneButtonc(shopb, 300, 320, -1, shopbs);
    textSize(55 + titletexts);
    fill(255, 255, 255);
    textAlign(CENTER, CENTER);
    text(titletext, 300, 108);

    sceneButtone(exitb, 300, 380 + 120, exitbs);
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
    if (gb) {
      for (int i = 0; i <= width; i+= 25) {
        stroke(1);
        strokeWeight(1);
        line(0, i, width, i);
        line(i, 0, i, height);
      }

      fill(255);
      textSize(30);
      if (ch) {
        text(floor(mouseX / 25) - 1, 30, 30);
        text(floor(mouseY / 25) - 1, 30, 70);
      } else if (!ch) {
        text(floor(mouseX / 25), 30, 30);
        text(floor(mouseY / 25), 30, 70);
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
