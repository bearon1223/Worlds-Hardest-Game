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
  
  if(scene == 178435){
    scene = 0;
  }
  
  if(scene == -343){
    background(0, 187, 255);
    menuButton("English", 10, 100, 0, 0);
    menuButton("français", 10, 160, 0, 1);
    menuButton("Pirates Speak", 10, 220, 50, 2);
  }
  
  if (scene == 0) {
    level1(true);
    sceneButtonc(lsb, 300, 260, -10, lsbs);
    sceneButtonr(startbutton, 300, 200, 2, startbuttons);
    sceneButtonc(menu, 300, 380 + 60, -343, menus);
    
    if (wins > 4) {
      sceneButtonc(leveleb, 300, 380, -101, levelebs);
    }
    
    sceneButtonc(shopb, 300, 320, -1, shopbs);
    textSize(55);
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
