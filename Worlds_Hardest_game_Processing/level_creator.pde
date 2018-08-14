public float bt;
//int[] checkerboardLx = new int[96];
//int[] checkerboardLy = new int[96];
int checkclick = 0;
int cclicked = 0, cclicked2 = 0, cclicked3 = 0;



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
    p.render();

    if (keyCode == UP && keyPressed) {
      scene = -103;
    }
    if (bt == 0) {
      checkerboard2x2(mouseX / 50, mouseY / 50);

      checkerboardLx[clicked] = mouseX / 50;
      checkerboardLy[clicked] = mouseY / 50;


      if (mousePressed && !pressed && mouseButton == LEFT) {
        clicked++;
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
      if (checkclick == 0) {
        end(mouseX / 25, mouseY / 25, 1, 1, false);
      }
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
    }
  }

  void playLevel() {
    if (!setup2) {
      p = new player(px, py, 1);
      setup2 = true;
    } else {
      background(bg[0], bg[1], bg[2]);
      for (int i = 0; i <= clicked; i++) {
        checkerboard2x2(checkerboardLx[i], checkerboardLy[i]);
      }
      for (int i = 0; i <= cclicked; i++) {
        checkpoint(checkpointx[i], checkpointx[i], checkpointsx[i], checkpointsy[i]);
      }
      //autoBorder();
      p.movement();
      p.collision();
      p.render();
    }
  }
}
