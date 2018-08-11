class levelEdit {
  boolean checker2x2 = true;
  boolean player = false;
  boolean setup2 = false;
  int clicked = 0;
  boolean pressed = false;
  int[] chickerboardLx = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  int[] chickerboardLy = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  int[] px = {12};
  int[] py = {12};

  levelEdit() {
    p = new player(px[0], py[0], 1);
  }
  
  void creator() {
    background(0, 187, 255);
    for (int i = 0; i <= clicked; i++) {
      checkerboard2x2(chickerboardLx[i], chickerboardLy[i]);
    }
    p.render();
    if (checker2x2) {
      checkerboard2x2(mouseX / 50, mouseY / 50);

      chickerboardLx[clicked] = mouseX / 50;
      chickerboardLy[clicked] = mouseY / 50;


      if (mousePressed && !pressed) {
        clicked++;
        pressed = true;
      } else if (pressed && !mousePressed) {
        pressed = false;
      }
      if (keyCode ==DOWN) {
        checker2x2 = false;
        player = true;
      }
    } else if (player) {
      p = new player(px[0], py[0], 1);
      if (keyCode ==UP) {
        checker2x2 = true;
        player = false;
      }
      if (mousePressed && !pressed) {
        px[0] = mouseX / 25;
        py[0] = mouseY / 25;
        pressed = true;
      } else if (pressed && !mousePressed) {
        pressed = false;
      }
    }
  }
}