public float bt;
int[] checkerboardLx = new int[96];
int[] checkerboardLy = new int[96];

// = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
//    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
//    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
//    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
//  int[] checkerboardLy = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
//    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
//    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
//    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

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
    saveStrings(dataFile(LEVEL_EDITOR_SAVE_FILE), str(checkerboardLx));
    sceneButton("Menu", 410, 600 - 60, -103, 0);
    if (bt == 0) {
      checkerboard2x2(mouseX / 50, mouseY / 50);

      checkerboardLx[clicked] = mouseX / 50;
      checkerboardLy[clicked] = mouseY / 50;


      if (mousePressed && !pressed) {
        clicked++;
        pressed = true;
      } else if (pressed && !mousePressed) {
        pressed = false;
      }
    } else if (bt == 3) {
      p = new player(px, py, 1);
      if (mousePressed && !pressed) {
        px = mouseX / 25;
        py = mouseY / 25;
        pressed = true;
      } else if (pressed && !mousePressed) {
        pressed = false;
      }
    }
  }
}