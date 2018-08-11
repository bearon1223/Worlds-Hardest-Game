float coinAmountPublic = 0;
float coinsCollected = 0;
boolean allowedcoin = false;

void pixel(float x, float y, color c) {
  fill(c);
  rect(x * 25, y * 25, 25, 25);
}

void lineg(float x, float y, float sx, float sy) {
  fill(0, 0, 0);
  stroke(0, 0, 0);
  strokeWeight(2);
  line(x * 25, y * 25, (x * 25) + (sx * 25), (y * 25) + (sy * 25));
}

void coin(float x, float y) {
  coinAmountPublic = 0;
  if (!allowd) {
    stroke(1);
    strokeWeight(1);
    fill(255, 255, 0);
    ellipse((x * 25) + (25 / 2), (y * 25) + (25 / 2), 15, 15);
  }
}

void coin(float x, float y, float coinAmount, float currentCoin) {
  boolean currentCoinCollected = false;
  if (coinsCollected >= currentCoin) {
    currentCoinCollected = true;
  } else {
    currentCoinCollected = false;
  }
  
  if(currentCoin == coinsCollected + 1){
    fill(255, 255, 0);
  } else {
    fill(255, 254, 0);
  }

  if (!currentCoinCollected && !allowd) {
    stroke(1);
    strokeWeight(1);
    ellipse((x * 25) + (25 / 2), (y * 25) + (25 / 2), 15, 15);
  }

  if (coinsCollected >= coinAmount) {
    allowd = true;
  }

  coinAmountPublic = coinAmount;
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
      save();
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
      coins = 100;
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
  noStroke();
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
  noStroke();
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
  noStroke();
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
  rect(25 + (25 * offx), 25 + (25 * (offy + 1)), widths, widths);
}

void checkerboard2x1(float x, float y, boolean i) {
  float offx = x;
  float offy = y;
  float widths = 25;
  noStroke();
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

void trophy(String l) {
  background(0);
  noStroke();
  // Left Handel
  pixel(5, 3, color(255, 174, 0));
  pixel(5, 4, color(255, 174, 0));
  pixel(6, 3, color(255, 174, 0));
  pixel(7, 3, color(255, 174, 0));
  pixel(5, 5, color(255, 174, 0));
  pixel(5, 6, color(255, 174, 0));
  pixel(6, 6, color(255, 174, 0));
  pixel(6, 7, color(255, 174, 0));
  pixel(7, 7, color(255, 174, 0));

  // Right Handel
  pixel(18, 3, color(255, 174, 0));
  pixel(18, 4, color(255, 174, 0));
  pixel(17, 3, color(255, 174, 0));
  pixel(16, 3, color(255, 174, 0));
  pixel(18, 5, color(255, 174, 0));
  pixel(18, 6, color(255, 174, 0));
  pixel(17, 6, color(255, 174, 0));
  pixel(17, 7, color(255, 174, 0));
  pixel(16, 7, color(255, 174, 0));

  // Cup
  pixel(8, 2, color(255, 222, 0));
  pixel(9, 2, color(255, 222, 0));
  pixel(10, 2, color(255, 222, 0));
  pixel(11, 2, color(255, 222, 0));
  pixel(12, 2, color(255, 222, 0));
  pixel(13, 2, color(255, 222, 0));
  pixel(14, 2, color(255, 222, 0));
  pixel(15, 2, color(255, 204, 0));

  pixel(8, 5, color(255, 222, 0));
  pixel(9, 5, color(255, 222, 0));
  pixel(10, 5, color(255, 222, 0));
  pixel(11, 5, color(255, 222, 0));
  pixel(12, 5, color(255, 222, 0));
  pixel(13, 5, color(255, 222, 0));
  pixel(14, 5, color(255, 222, 0));
  pixel(15, 5, color(255, 204, 0));

  pixel(8, 3, color(255, 222, 0));
  pixel(9, 3, color(255));
  pixel(10, 3, color(255));
  pixel(11, 3, color(255));
  pixel(12, 3, color(255));
  pixel(13, 3, color(255, 222, 0));
  pixel(14, 3, color(255, 222, 0));
  pixel(15, 3, color(255, 204, 0));

  pixel(8, 4, color(255, 222, 0));
  pixel(9, 4, color(255));
  pixel(10, 4, color(255));
  pixel(11, 4, color(255));
  pixel(12, 4, color(255));
  pixel(13, 4, color(255, 222, 0));
  pixel(14, 4, color(255, 222, 0));
  pixel(15, 4, color(255, 204, 0));

  pixel(8, 6, color(255, 222, 0));
  pixel(9, 6, color(255, 222, 0));
  pixel(10, 6, color(255, 222, 0));
  pixel(11, 6, color(255, 222, 0));
  pixel(12, 6, color(255, 222, 0));
  pixel(13, 6, color(255, 222, 0));
  pixel(14, 6, color(255, 222, 0));
  pixel(15, 6, color(255, 204, 0));

  pixel(8, 7, color(255, 222, 0));
  pixel(9, 7, color(255, 222, 0));
  pixel(10, 7, color(255, 222, 0));
  pixel(11, 7, color(255, 222, 0));
  pixel(12, 7, color(255, 222, 0));
  pixel(13, 7, color(255, 222, 0));
  pixel(14, 7, color(255, 204, 0));
  pixel(15, 7, color(255, 204, 0));

  pixel(8, 8, color(255, 222, 0));
  pixel(9, 8, color(255, 222, 0));
  pixel(10, 8, color(255, 222, 0));
  pixel(11, 8, color(255, 222, 0));
  pixel(12, 8, color(255, 222, 0));
  pixel(13, 8, color(255, 204, 0));
  pixel(14, 8, color(255, 204, 0));
  pixel(15, 8, color(255, 204, 0));

  pixel(9, 9, color(255, 222, 0));
  pixel(10, 9, color(255, 222, 0));
  pixel(11, 9, color(255, 204, 0));
  pixel(12, 9, color(255, 204, 0));
  pixel(13, 9, color(255, 204, 0));
  pixel(14, 9, color(255, 204, 0));

  // Stand
  pixel(11, 10, color(255, 174, 0));
  pixel(12, 10, color(255, 174, 0));
  pixel(11, 11, color(255, 174, 0));
  pixel(12, 11, color(255, 174, 0));
  pixel(11, 12, color(255, 174, 0));
  pixel(12, 12, color(255, 174, 0));
  pixel(11, 13, color(255, 174, 0));
  pixel(12, 13, color(255, 174, 0));
  pixel(11, 14, color(255, 174, 0));
  pixel(12, 14, color(255, 174, 0));
  pixel(11, 15, color(255, 174, 0));
  pixel(12, 15, color(255, 174, 0));
  pixel(11, 16, color(255, 174, 0));
  pixel(12, 16, color(255, 174, 0));
  pixel(11, 17, color(255, 174, 0));
  pixel(12, 17, color(255, 174, 0));

  pixel(8, 18, color(255, 174, 0));
  pixel(9, 18, color(255, 174, 0));
  pixel(10, 18, color(255, 174, 0));
  pixel(11, 18, color(255, 174, 0));
  pixel(12, 18, color(255, 174, 0));
  pixel(13, 18, color(255, 174, 0));
  pixel(14, 18, color(255, 174, 0));
  pixel(15, 18, color(255, 174, 0));

  pixel(8 - 2, 19, color(255, 154, 0));
  pixel(9 - 2, 19, color(255, 154, 0));
  pixel(10 - 2, 19, color(255, 154, 0));
  pixel(11 - 2, 19, color(255, 154, 0));
  pixel(12 - 2, 19, color(255, 154, 0));
  pixel(13 - 2, 19, color(255, 154, 0));
  pixel(14 - 2, 19, color(255, 154, 0));
  pixel(15 - 2, 19, color(255, 154, 0));
  pixel(16 - 2, 19, color(255, 154, 0));
  pixel(17 - 2, 19, color(255, 154, 0));
  pixel(18 - 2, 19, color(255, 154, 0));
  pixel(19 - 2, 19, color(255, 154, 0));
  fill(0);
  textSize(146);
  text(l, 299, 125);

  if (keyCode == UP) {
    save("level " + l + " Trophy.jpg");
    scene = 1;
  }
}