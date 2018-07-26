class player {
  float x, y, s, sx, sy, sxs, sys;
  player(float x, float y, float s) {
    this.x = x;
    this.y = y;
    this.s = s;
    this.sx = s;
    this.sy = s;
    this.sxs = x;
    this.sys = y;
  }

  void render() {
    stroke(121, 0, 0);
    strokeWeight(3);
    fill(255, 0, 0);
    rect(this.x, this.y, 15, 15);
  }

  void win() {
    setup = false;
    scene++;
    wins++;
    allowd = false;
    allowed = false;
  }

  boolean allowed = false;

  void collision() {
    color a1 = get(int(this.x), int(this.y));
    color a2 = get(int(this.x + 15), int(this.y));
    color a3 = get(int(this.x + 15), int(this.y + 15));
    color a4 = get(int(this.x), int(this.y + 15));

    if (a1 == color(0, 0, 255) || a2 == color(0, 0, 255) || a3 == color(0, 0, 255) || a4 == color(0, 0, 255)) {
      this.x = psx;
      this.y = psy;
      fail++;
      allowd = allowed;
    }
    if (a3 == color(0, 255, 119) || a2 == color(0, 255, 119)) {
      psx = this.x;
      psy = this.y;
      if (allowd) {
        allowed = true;
      }
    }
    if (a1 == color(0, 254, 119) || a2 == color(0, 254, 119) || a3 == color(0, 254, 119) || a4 == color(0, 254, 119)) {
      win();
    }

    if ((a1 == color(255, 255, 0) || a2 == color(255, 255, 0) || a3 == color(255, 255, 0) || a4 == color(255, 255, 0))) {
      allowd = true;
    }

    if ((a1 == color(0) || a2 == color(0) || a3 == color(0) || a4 == color(0)) && keyCode == LEFT) {
      this.sx = 0;
      this.x += 1;
    } else {
      this.sx = this.s;
    }
    if ((a1 == color(0) || a2 == color(0) || a3 == color(0) || a4 == color(0)) && keyCode == RIGHT) {
      this.sx = 0;
      this.x -= 1;
    } else {
      this.sx = this.s;
    }
    if ((a1 == color(0) || a2 == color(0) || a3 == color(0) || a4 == color(0)) && keyCode == UP) {
      this.sy = 0;
      this.y += 1;
    } else {
      this.sy = this.s;
    }
    if ((a1 == color(0) || a2 == color(0) || a3 == color(0) || a4 == color(0)) && keyCode == DOWN) {
      this.sy = 0;
      this.y -= 1;
    } else {
      this.sy = this.s;
    }
  }

  void movement() {
    if (keyPressed) {
      if (keyCode == UP) {
        this.y -= this.sy;
      }
      if (keyCode == DOWN) {
        this.y += this.sy;
      }
      if (keyCode == LEFT) {
        this.x -= this.sx;
      }
      if (keyCode == RIGHT) {
        this.x += this.sx;
      }
    }
  }
}

class enemys {
  float Sx, y, Dx, speed, x;
  boolean i;
  float s = 2;
  enemys(float x, float y, float x0, boolean i) {
    this.Sx = (x * 25);
    this.y = (y * 25);
    this.Dx =x0 * 25;
    this.i = i;
    this.x = this.Sx;

    this.speed = s;
  }
  
  enemys(float x, float y, float x0, boolean i, float ss) {
    this.Sx = (x * 25);
    this.y = (y * 25);
    this.Dx =x0 * 25;
    this.i = i;
    this.x = this.Sx;
    s = ss;
    this.speed = ss;
  }
  void move() {
    if (!i) {
      if (this.x < this.Sx) {
        this.speed = s;
      }
      if (this.x > this.Dx) {
        this.speed = -s;
      }
    }
    if (i) {
      if (this.x > this.Sx) {
        this.speed = -s;
      }
      if (this.x < this.Dx) {
        this.speed = s;
      }
    }
    this.x += this.speed;
  }

  void render() {
    fill(0, 0, 255);
    stroke(0, 0, 0);
    noStroke();
    ellipse(this.x, y, 15, 15);
  }
}

class enemyu {
  float speeds = 2, Sy, y, x, Dy, speed;
  boolean i;
  enemyu(float x, float y, float y0, boolean i, float speedr) {
    this.Sy = (y * 25);
    this.y = this.Sy;
    this.x = (x * 25);
    this.Dy = (y0 * 25);
    this.i = i;
    speeds = speedr;
    if (i) {
      this.speed = -speedr;
    } else {
      this.speed = speedr;
    }
  }

  void move() {
    if (!i) {
      if (this.y > this.Dy) {
        this.speed = -speeds;
      }
      if (this.y < this.Sy) {
        this.speed = speeds;
      }
    } else if (i) {
      if (this.y < this.Dy) {
        this.speed = speeds;
      }
      if (this.y > this.Sy) {
        this.speed = -speeds;
      }
    }
    this.y += this.speed;
  }

  void render() {
    fill(0, 0, 255);
    stroke(0, 0, 0);
    noStroke();
    ellipse(x, this.y, 15, 15);
  }
}

class enemyp {

  void howto() {
    fill(255);
    textSize(20);
    text("px1 / py1 = top left, px2 / py2 = top right, px3 / py3 = bottom right, px4 / py4 = bottom left \n †Only works with rectangels", 10, 50);
  }

  float x1, x2, x3, x4, y1, y2, y3, y4, x, y, speed = 1, speedx = 1, speedy = 0;

  enemyp(float px1, float py1, float px2, float py2, float px3, float py3, float px4, float py4, float sx, float sy) {
    this.x1 = px1 * 25;
    this.x2 = px2 * 25;
    this.x3 = px3 * 25;
    this.x4 = px4 * 25;
    this.y1 = py1 * 25;
    this.y2 = py2 * 25;
    this.y3 = py3 * 25;
    this.y4 = py4 * 25;
    this.x = sx * 25;
    this.y = sy * 25;
  }


  void movement() {
    if (this.x >= this.x2 && this.y <= this.y2) {
      speedx = 0;
      speedy = speed;
    } else if (this.x >= this.x3 && this.y >= this.y3) {
      speedy = 0;
      speedx = -speed;
    } else if (this.x <= this.x4 && this.y >= this.y4) {
      speedx = 0;
      speedy = -speed;
    } else if (this.x <= this.x1 && this.y <= this.y1) {
      speedy = 0;
      speedx = speed;
    }
    this.x += speedx;
    this.y += speedy;
  }

  void render() {
    fill(0, 0, 255);
    noStroke();
    ellipse(this.x, this.y, 15, 15);
  }
}
class enemypr {
  float x1, x2, x3, x4, y1, y2, y3, y4, x, y, speed = 1, speedx = 1, speedy = 0;
  
  enemypr(float px1, float py1, float px2, float py2, float px3, float py3, float px4, float py4, float sx, float sy) {
    this.x1 = px1 * 25;
    this.x2 = px2 * 25;
    this.x3 = px3 * 25;
    this.x4 = px4 * 25;
    this.y1 = py1 * 25;
    this.y2 = py2 * 25;
    this.y3 = py3 * 25;
    this.y4 = py4 * 25;
    this.x = sx * 25;
    this.y = sy * 25;
  }


  void movement() {
    if (this.x >= this.x2 && this.y <= this.y2) {
      speedx = 0;
      speedy = speed;
    } else if (this.x >= this.x3 && this.y >= this.y3) {
      speedy = 0;
      speedx = -speed;
    } else if (this.x <= this.x4 && this.y >= this.y4) {
      speedx = 0;
      speedy = -speed;
    } else if (this.x <= this.x1 && this.y <= this.y1) {
      speedy = 0;
      speedx = speed;
    }
    this.x += speedx;
    this.y += speedy;
  }

  void render() {
    fill(255);
    noStroke();
    rect(this.x, this.y, 25, 25);
  }
}