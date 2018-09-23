float min = -1, max = 1, btp = 0, emnpc = 0;
String btt = "Checkpoint2x2";

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if (bt <= 7) {
    bt += constrain(e, min, max);
  } else if (bt > 7) {
    bt = 0;
  } else if (bt < 0) {
    bt = 8;
  }
  if (bt == 0) {
    btt = "Checkerboard2x2";
  } else if (bt == 1) {
    btt = "Checkpoint";
  } else if (bt == 2) {
    btt = "End";
  } else if (bt == 3) {
    btt = "Player Start";
  } else if (bt == 4) {
    btt = "Border";
  } else if (bt == 5) {
    btt = "Checkerboard1x1";
  } else if (bt == 6) {
    btt = "Side to Side Enemy to the right";
  } else if (bt == 7) {
    btt = "Side to Side Enemy to the left";
  } else if (bt == 8) {
    btt = "Checkerboard1x1 Inverted";
  }
}

public float bt;
int checkclick = 0;
int cclicked = 0, cclicked2 = 0, cclicked3 = 0, cclicked4 = 0, cclicked5 = 0, cclicked6 = 0;

class levelEdit {
  boolean setup2 = false;
  int clicked = 0;
  boolean pressed = false;

  int px = 12;
  int py = 12;

  levelEdit() {
    p = new player(px, py, 1);
  }

  void creator() {
    setup2 = false;
    if (keyCode == UP && keyPressed) {
      scene = -104;
    }
    background(0, 187, 255);
    for (int i = 0; i <= clicked; i++) {
      checkerboard2x2(checkerboardLx[i], checkerboardLy[i]);
    }

    for (int i = 0; i <= cclicked2; i++) {
      end(endx[i], endy[i], endsx[i], endsy[i], allowd);
    }

    for (int i = 0; i <= cclicked; i++) {
      checkpoint(checkpointx[i], checkpointy[i], checkpointsx[i], checkpointsy[i]);
    }

    for (int i = 0; i <= cclicked3; i++) {
      lineg(linegx[i], linegy[i], linegsx[i], linegsy[i]);
    }

    for (int i = 0; i <= cclicked4; i++) {
      checkerboard1x1(checkerboardx[i], checkerboardy[i], false);
    }

    for (int i = 0; i <= cclicked5; i++) {
      noStroke();
      fill(0, 0, 255);
      ellipse(enemyStartx[i] * 25, enemyStarty[i] * 25, 15, 15);
      strokeWeight(2);
      stroke(0);
      pointg(enemyEndx[i], enemyStarty[i]);
    }

    for (int i = 0; i <= cclicked6; i++) {
      noStroke();
      fill(0, 0, 255);
      ellipse(enemyStartx2[i] * 25, enemyStarty2[i] * 25, 15, 15);
      strokeWeight(2);
      stroke(0);
      pointg(enemyEndx2[i], enemyStarty2[i]);
    }
    p.render();

    fill(255);
    textAlign(CORNER, CORNER);
    textSize(15);
    text("Block Type: " + btt, 10, 15);

    if (bt == 0) {
      checkerboard2x2((mouseX / 25) - 1, (mouseY / 25) - 1);

      if (mousePressed && !pressed && mouseButton == LEFT) {
        clicked++;      

        checkerboardLx[clicked] = (mouseX / 25) - 1;
        checkerboardLy[clicked] = (mouseY / 25) - 1;

        pressed = true;
      } else if (pressed && !mousePressed) {
        pressed = false;
      }

      if (mousePressed && !pressed && mouseButton == RIGHT) {
        clicked--;
        pressed = true;
      } else if (pressed && !mousePressed) {
        pressed = false;
      }
    } else if (bt == 3) {
      p = new player(px, py, 1);
      if (mousePressed && !pressed && mouseButton == LEFT) {
        px = mouseX / 25;
        py = mouseY / 25;
        pressed = true;
      } else if (pressed && !mousePressed) {
        pressed = false;
      }
    } else if (bt == 1) {
      //checkpoint
      if (checkclick == 0) {
        checkpoint(mouseX / 25, mouseY / 25, 1, 1);
      }

      if (checkclick == 1) {
        checkpoint(checkpointx[cclicked], checkpointy[cclicked], (mouseX / 25 - checkpointx[cclicked]) + 1, (mouseY / 25 - checkpointy[cclicked] + 1));
      }

      if (mousePressed && !pressed && mouseButton == LEFT && checkclick == 0) {
        //x / y;
        checkclick = 1;
        cclicked++;
        pressed = true;
        checkpointx[cclicked] = mouseX / 25;
        checkpointy[cclicked] = mouseY / 25;
      } else if (mousePressed && !pressed && mouseButton == LEFT && checkclick == 1) {
        //x2 / y2;
        checkclick = 0;
        checkpointsx[cclicked] = ((mouseX / 25) - checkpointx[cclicked]) + 1;
        checkpointsy[cclicked] = ((mouseY / 25) - checkpointy[cclicked]) + 1;
        pressed = true;
      } else if (!mousePressed && pressed) {
        pressed = false;
      }
    } else if (bt == 2) {
      end(mouseX / 25, mouseY / 25, 1, 1, false);
      if (checkclick == 1) {
        end(endx[cclicked2], endy[cclicked2], (mouseX / 25 - endx[cclicked2]) + 1, (mouseY / 25 - endy[cclicked2] + 1), false);
      }
      if (mousePressed && !pressed && mouseButton == LEFT && checkclick == 0) {
        //x / y;
        checkclick = 1;
        cclicked2++;
        pressed = true;
        endx[cclicked2] = mouseX / 25;
        endy[cclicked2] = mouseY / 25;
      } else if (mousePressed && !pressed && mouseButton == LEFT && checkclick == 1) {
        //x2 / y2;
        checkclick = 0;
        endsx[cclicked2] = ((mouseX / 25) - endx[cclicked2]) + 1;
        endsy[cclicked2] = ((mouseY / 25) - endy[cclicked2]) + 1;
        pressed = true;
      } else if (!mousePressed && pressed) {
        pressed = false;
      }
    } else if (bt == 4) {
      if (checkclick == 0) {
        lineg(mouseX / 25, mouseY / 25, 0, 0);
      }
      if (checkclick == 1) {
        lineg(linegx[cclicked3], linegy[cclicked3], (mouseX / 25 - linegx[cclicked3]) + 1, (mouseY / 25 - linegy[cclicked3] + 1));
      }
      if (mousePressed && !pressed && mouseButton == LEFT && checkclick == 0) {
        //x / y;
        checkclick = 1;
        cclicked3++;
        pressed = true;
        linegx[cclicked3] = mouseX / 25;
        linegy[cclicked3] = mouseY / 25;
      } else if (mousePressed && !pressed && mouseButton == LEFT && checkclick == 1) {
        //x2 / y2;
        checkclick = 0;
        linegsx[cclicked3] = ((mouseX / 25) - linegx[cclicked3]) + 1;
        linegsy[cclicked3] = ((mouseY / 25) - linegy[cclicked3]) + 1;
        pressed = true;
      } else if (!mousePressed && pressed) {
        pressed = false;
      }
    } else if (bt == 5) {
      checkerboard1x1((mouseX / 25) - 1, (mouseY / 25) - 1, false);

      if (mousePressed && !pressed && mouseButton == LEFT) {
        cclicked4++;      

        checkerboardx[clicked] = (mouseX / 25) - 1;
        checkerboardy[clicked] = (mouseY / 25) - 1;

        pressed = true;
      } else if (pressed && !mousePressed) {
        pressed = false;
      }

      if (mousePressed && !pressed && mouseButton == RIGHT) {
        cclicked4--;
        pressed = true;
      } else if (pressed && !mousePressed) {
        pressed = false;
      }
    } else if (bt == 6) {
      if (emnpc == 0) {
        strokeWeight(2);
        pointg(mouseX / 25 + 0.5, mouseY / 25 + 0.5);
      } else if (emnpc == 1) {
        noStroke();
        fill(0, 0, 255);
        ellipse(enemyStartx[cclicked5] * 25, enemyStarty[cclicked5] * 25, 15, 15);
        strokeWeight(2);
        stroke(0);
        pointg(mouseX / 25 + 0.5, enemyStarty[cclicked5]);
      }

      if (emnpc == 0 && !pressed && mousePressed) {
        cclicked5++;

        enemyStartx[cclicked5] = mouseX / 25 + 0.5;
        enemyStarty[cclicked5] = mouseY / 25 + 0.5;
        pressed = true;
        emnpc = 1;
      } else if (emnpc == 1 && !pressed && mousePressed) {
        enemyEndx[cclicked5] = mouseX / 25 + 0.5;
        pressed = true;
        emnpc = 0;
      } else if (pressed && !mousePressed) {
        pressed = false;
      }
    } else if (bt == 7) {
      if (emnpc == 0) {
        strokeWeight(2);
        pointg(mouseX / 25 + 0.5, mouseY / 25 + 0.5);
      } else if (emnpc == 1) {
        noStroke();
        fill(0, 0, 255);
        ellipse(enemyStartx2[cclicked6] * 25, enemyStarty2[cclicked6] * 25, 15, 15);
        strokeWeight(2);
        stroke(0);
        pointg(mouseX / 25 + 0.5, enemyStarty2[cclicked6]);
      }

      if (emnpc == 0 && !pressed && mousePressed) {
        cclicked6++;

        enemyStartx2[cclicked6] = mouseX / 25 + 0.5;
        enemyStarty2[cclicked6] = mouseY / 25 + 0.5;
        pressed = true;
        emnpc = 1;
      } else if (emnpc == 1 && !pressed && mousePressed) {
        enemyEndx2[cclicked6] = mouseX / 25 + 0.5;
        pressed = true;
        emnpc = 0;
      } else if (pressed && !mousePressed) {
        pressed = false;
      }
    }
  }

  void playLevel() {
    if (!setup2) {
      p = new player(px, py, 1);
      e = new enemys(enemyStartx[0], enemyStarty[0], enemyEndx[0], false);
      e2 = new enemys(enemyStartx[1], enemyStarty[1], enemyEndx[1], false);
      e3 = new enemys(enemyStartx[2], enemyStarty[2], enemyEndx[2], false);
      e4 = new enemys(enemyStartx[3], enemyStarty[3], enemyEndx[3], false);
      e5 = new enemys(enemyStartx[4], enemyStarty[4], enemyEndx[4], false);
      e6 = new enemys(enemyStartx[5], enemyStarty[5], enemyEndx[5], false);
      e7 = new enemys(enemyStartx[6], enemyStarty[6], enemyEndx[6], false);
      e8 = new enemys(enemyStartx[7], enemyStarty[7], enemyEndx[7], false);
      e9 = new enemys(enemyStartx[8], enemyStarty[8], enemyEndx[8], false);
      e10 = new enemys(enemyStartx[9], enemyStarty[9], enemyEndx[9], false);
      e11 = new enemys(enemyStartx[10], enemyStarty[10], enemyEndx[10], false);
      e12 = new enemys(enemyStartx[11], enemyStarty[11], enemyEndx[11], false);
      e13 = new enemys(enemyStartx[12], enemyStarty[12], enemyEndx[12], false);
      e14 = new enemys(enemyStartx[13], enemyStarty[13], enemyEndx[13], false);
      e15 = new enemys(enemyStartx[14], enemyStarty[14], enemyEndx[14], false);
      e16 = new enemys(enemyStartx[15], enemyStarty[15], enemyEndx[15], false);
      e17 = new enemys(enemyStartx[16], enemyStarty[16], enemyEndx[16], false);
      e18 = new enemys(enemyStartx[17], enemyStarty[17], enemyEndx[17], false);
      e19 = new enemys(enemyStartx[18], enemyStarty[18], enemyEndx[18], false);
      e20 = new enemys(enemyStartx[19], enemyStarty[19], enemyEndx[19], false);

      ei = new enemys(enemyStartx2[0], enemyStarty2[0], enemyEndx2[0], true);
      ei2 = new enemys(enemyStartx2[1], enemyStarty2[1], enemyEndx2[1], true);
      ei3 = new enemys(enemyStartx2[2], enemyStarty2[2], enemyEndx2[2], true);
      ei4 = new enemys(enemyStartx2[3], enemyStarty2[3], enemyEndx2[3], true);
      ei5 = new enemys(enemyStartx2[4], enemyStarty2[4], enemyEndx2[4], true);
      ei6 = new enemys(enemyStartx2[5], enemyStarty2[5], enemyEndx2[5], true);
      ei7 = new enemys(enemyStartx2[6], enemyStarty2[6], enemyEndx2[6], true);
      ei8 = new enemys(enemyStartx2[7], enemyStarty2[7], enemyEndx2[7], true);
      ei9 = new enemys(enemyStartx2[8], enemyStarty2[8], enemyEndx2[8], true);
      ei10 = new enemys(enemyStartx2[9], enemyStarty2[9], enemyEndx2[9], true);
      ei11 = new enemys(enemyStartx2[10], enemyStarty2[10], enemyEndx2[10], true);
      ei12 = new enemys(enemyStartx2[11], enemyStarty2[11], enemyEndx2[11], true);
      ei13 = new enemys(enemyStartx2[12], enemyStarty2[12], enemyEndx2[12], true);
      ei14 = new enemys(enemyStartx2[13], enemyStarty2[13], enemyEndx2[13], true);
      ei15 = new enemys(enemyStartx2[14], enemyStarty2[14], enemyEndx2[14], true);
      ei16 = new enemys(enemyStartx2[15], enemyStarty2[15], enemyEndx2[15], true);
      ei17 = new enemys(enemyStartx2[16], enemyStarty2[16], enemyEndx2[16], true);
      ei18 = new enemys(enemyStartx2[17], enemyStarty2[17], enemyEndx2[17], true);
      ei19 = new enemys(enemyStartx2[18], enemyStarty2[18], enemyEndx2[18], true);
      ei20 = new enemys(enemyStartx2[19], enemyStarty2[19], enemyEndx2[19], true);
      setup2 = true;
    } else {
      background(0, 187, 255);
      for (int i = 0; i <= clicked; i++) {
        checkerboard2x2(checkerboardLx[i], checkerboardLy[i]);
      }

      for (int i = 0; i <= cclicked2; i++) {
        end(endx[i], endy[i], endsx[i], endsy[i], allowd);
      }

      for (int i = 0; i <= cclicked; i++) {
        checkpoint(checkpointx[i], checkpointy[i], checkpointsx[i], checkpointsy[i]);
      }

      for (int i = 0; i <= cclicked3; i++) {
        lineg(linegx[i], linegy[i], linegsx[i], linegsy[i]);
      }

      for (int i = 0; i <= cclicked4; i++) {
        checkerboard1x1(checkerboardx[i], checkerboardy[i], false);
      }
      //autoBorder();

      e.move();
      e.render();
      e2.move();
      e2.render();
      e3.move();
      e3.render();
      e4.move();
      e4.render();
      e5.move();
      e5.render();
      e6.move();
      e6.render();
      e7.move();
      e7.render();
      e8.move();
      e8.render();
      e9.move();
      e9.render();
      e10.move();
      e10.render();
      e11.move();
      e11.render();
      e12.move();
      e12.render();
      e13.move();
      e13.render();
      e14.move();
      e14.render();
      e15.move();
      e15.render();
      e16.move();
      e16.render();
      e17.move();
      e17.render();
      e18.move();
      e18.render();
      e19.move();
      e19.render();




      ei.move();
      ei.render();
      ei2.move();
      ei2.render();
      ei3.move();
      ei3.render();
      ei4.move();
      ei4.render();
      ei5.move();
      ei5.render();
      ei6.move();
      ei6.render();
      ei7.move();
      ei7.render();
      ei8.move();
      ei8.render();
      ei9.move();
      ei9.render();
      ei10.move();
      ei10.render();
      ei11.move();
      ei11.render();
      ei12.move();
      ei12.render();
      ei13.move();
      ei13.render();
      ei14.move();
      ei14.render();
      ei15.move();
      ei15.render();
      ei16.move();
      ei16.render();
      ei17.move();
      ei17.render();
      ei18.move();
      ei18.render();
      ei19.move();
      ei19.render();
      ei20.move();
      ei20.render();

      allowd = true;
      p.movement();
      p.collision();
      p.render();
    }
  }
}
