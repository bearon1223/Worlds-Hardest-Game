public float bt;
//int[] checkerboardLx = new int[96];
//int[] checkerboardLy = new int[96];
int checkclick = 0;
int cclicked = 0;

int[] checkerboardLx = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int[] checkerboardLy = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

//checkpoint x
int[] checkpointx = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

//checkpoint y
int[] checkpointy = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

//checkpoint sx
int[] checkpointsx = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

//checkpoint sy
int[] checkpointsy = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

int[] bg = {0, 187, 255};

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
    p.render();
    //saveStrings(dataFile(LEVEL_EDITOR_SAVE_FILE), str(checkerboardLx));
    sceneButton("Menu", 410, 600 - 60, -103, 0);
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
        //checkpoint(
      }
      if (mousePressed && !pressed && mouseButton == LEFT && checkclick == 0) {
        //x / y;
        checkclick = 1;
        cclicked++;
        pressed = true;
        checkpointx[cclicked] = mouseX / 25;
        checkpointy[cclicked] = mouseX / 25;
      } else if (mousePressed && !pressed && mouseButton == LEFT && checkclick == 1) {
        //x2 / y2;
        checkclick = 0;
        checkpointsx[cclicked] = mouseX / 25;
        checkpointsy[cclicked] = mouseX / 25;
        pressed = true;
      } else if (!mousePressed && pressed) {
        pressed = false;
      }
      for (int i = 0; i <= cclicked; i++) {
        checkpoint2(checkpointx[i], checkpointx[i], checkpointsx[i], checkpointsy[i]);
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
      //autoBorder();
      p.movement();
      p.collision();
      p.render();
    }
  }
}
