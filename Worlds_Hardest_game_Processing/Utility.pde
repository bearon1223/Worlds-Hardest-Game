void lineg(float x, float y, float sx, float sy) {
  fill(0, 0, 0);
  stroke(0, 0, 0);
  strokeWeight(2);
  line(x * 25, y * 25, (x * 25) + (sx * 25), (y * 25) + (sy * 25));
}

void coin(float x, float y, boolean stroked) {
  if (!allowd) {
    if (stroked) {
      stroke(1);
      strokeWeight(1);
    } else {
      noStroke();
    }
    fill(255, 255, 0);
    ellipse((x * 25) + (25 / 2), (y * 25) + (25 / 2), 15, 15);
  }
}
void coin(float x, float y, boolean stroked, float i) {
  if (!allowd) {
    if (stroked) {
      stroke(1);
      strokeWeight(1);
    } else {
      noStroke();
    }
    fill(255, 255, 0);
    ellipse(x, y, 15, 15);
  }
  if (i == 1) {
    text("the is 'the' most used word in 'the' english language!", 10, -20);
  }
}

void checkpoint(float x, float y, float  sx, float sy) {
  fill(0, 255, 119);
  noStroke();
  rect(x * 25, y * 25, sx * 25, sy * 25);
};
void end(float x, float y, float sx, float sy, boolean allow) {
  if (allow) {
    fill(0, 254, 119);
  } else {
    fill(0, 255, 119);
  }
  noStroke();
  rect(x * 25, y * 25, sx * 25, sy * 25);
};

void sceneButton(String t, float x, float y, int i, float ys) {
  float w = 180 + ys;
  float h = 50;
  fill(96, 96, 96, 96);
  if (mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h) {
    fill(56, 56, 56, 146);
    if (mousePressed) {
      scene = i;
      setup = false;
      allowd = false;
    }
  } 
  strokeWeight(1);
  stroke(0);
  rect(x, y, w, h, 3);
  textSize(35);
  textAlign(CENTER, CENTER);
  fill(0, 0, 0);
  text(t, x + w / 2, y + h / 2);
}

void sceneButtone(String t, float x, float y, float ys) {
  float w = 180 + ys;
  float h = 50;
  fill(96, 96, 96, 96);
  if (mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h) {
    fill(56, 56, 56, 146);
    if (mousePressed) {
      exit();
    }
  } 
  strokeWeight(1);
  stroke(0);
  rect(x, y, w, h, 3);
  textSize(35);
  textAlign(CENTER, CENTER);
  fill(0, 0, 0);
  text(t, x + w / 2, y + h / 2);

  if (mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h) {
    stroke(0);
    fill(255);
    rect(mouseX + 10, mouseY, 150, 20, 5);
    fill(0);
    textSize(10);
    textAlign(CENTER, CENTER);
    text("WARNING will reset progress", mouseX+((150 / 2) + 10), mouseY + 10);
  }
}

void sceneButtonr(String t, float x, float y, int i, float ys) {
  float w = 180 + ys;
  float h = 50;
  float mx = mouseX;
  float my = mouseY;
  fill(96, 96, 96, 96);
  if (mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h) {
    fill(56, 56, 56, 146);
    if (mousePressed) {
      scene = i;
      setup = false;
      fail = 0;
      wins = 0;
      allowd = false;
    }
  } 
  strokeWeight(1);
  stroke(0);
  rect(x, y, w, h, 3);
  textSize(35);
  textAlign(CENTER, CENTER);
  fill(0, 0, 0);
  text(t, x + w / 2, y + h / 2);
  if (mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h && (floor(fail) > 0 || floor(wins) > 0)) {
    stroke(0);
    fill(255);
    rect(mx + 10, my, 150, 20, 5);
    fill(0);
    textSize(10);
    textAlign(CENTER, CENTER);
    text("WARNING will reset progress", mx+((150 / 2) + 10), my + 10);
  }
}

void checkerboard2x2(float x, float y) {
  float offx = x * 2;
  float offy = y * 2;
  float widths = 25;
  fill(255, 255, 255);
  rect(25+(25*offx), 25+(25*offy), widths, widths);
  fill(240, 240, 240);
  rect(25+(25*offx), 25+(25*(offy+1)), widths, widths);
  fill(255, 255, 255);
  rect(25+(25*(offx+1)), 25+(25*(offy+1)), widths, widths);
  fill(240, 240, 240);
  rect(25+(25*(offx+1)), 25+(25*offy), widths, widths);
}

void checkerboard1x1(float x, float y, boolean i) {
  float offx = x;
  float offy = y;
  float widths = 25;
  if (i) {
    fill(240, 240, 240);
  } else {
    fill(255, 255, 255);
  }
  rect(25+(25*offx), 25+(25*offy), widths, widths);
}

void checkerboard1x2(float x, float y, boolean i) {
  float offx = x;
  float offy = y;
  float widths = 25;
  if (!i) {
    fill(255, 255, 255);
  } else {
    fill(240, 240, 240);
  }
  rect(25 + (25 * offx), 25 + (25 * offy), widths, widths);
  if (!i) {
    fill(240, 240, 240);
  } else {
    fill(255, 255, 255);
  }
  rect(25 + (25 * (offx + 1)), 25 + (25 * offy), widths, widths);
}