boolean setup;
boolean allowd = false;
float rotatary_dude = 0;

player p = new player(91, 268, 1);

enemys e = new enemys(7.5, 7.9, 16.5, false);
enemys e2 = new enemys(16.5, 9.1, 7.5, true);
enemys e3 = new enemys(7.5, 10.2, 16.5, false);
enemys e4 = new enemys(16.5, 11.3, 7.5, true);
enemys e5 = new enemys(7.5, 12.4, 16.5, false);
//enemys e6 = new enemys(414, 333, 186, true);
//enemys e7 = new enemys(186, 363, 414, false);

enemyu eu = new enemyu(0, 0, 0, false, 0);
enemyu eu2 = new enemyu(0, 0, 0, false, 0);
enemyu eu3 = new enemyu(0, 0, 0, false, 0);
enemyu eu4 = new enemyu(0, 0, 0, false, 0);
enemyu eu5 = new enemyu(0, 0, 0, false, 0);
enemyu eu6 = new enemyu(0, 0, 0, false, 0);
enemyu eu7 = new enemyu(0, 0, 0, false, 0);
enemyu eu8 = new enemyu(0, 0, 0, false, 0);
enemyu eu9 = new enemyu(0, 0, 0, false, 0);
enemyu eu10 = new enemyu(0, 0, 0, false, 0);
enemyu eu11 = new enemyu(0, 0, 0, false, 0);

enemypr epr = new enemypr(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

enemyp ep = new enemyp(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
enemyp ep2 = new enemyp(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
enemyp ep3 = new enemyp(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
enemyp ep4 = new enemyp(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
enemyp ep5 = new enemyp(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
enemyp ep6 = new enemyp(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
enemyp ep7 = new enemyp(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
enemyp ep8 = new enemyp(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
enemyp ep9 = new enemyp(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
enemyp ep10 = new enemyp(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
enemyp ep11 = new enemyp(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/*
 checkpoint(2, 11, 3, 2);
 checkerboard2x2(2, 5);
 checkerboard2x2(3, 5);
 checkerboard2x2(4, 5);
 checkerboard2x2(5, 5);
 checkerboard2x2(6, 5);
 checkerboard2x2(7, 5);
 checkerboard2x2(2, 4);
 checkerboard2x2(3, 4);
 checkerboard2x2(4, 4);
 checkerboard2x2(5, 4);
 checkerboard2x2(6, 4);
 checkerboard2x2(7, 4);
 checkerboard2x2(2, 6);
 checkerboard2x2(3, 6);
 checkerboard2x2(4, 6);
 checkerboard2x2(5, 6);
 checkerboard2x2(6, 6);
 checkerboard2x2(7, 6);
 end(17, 11, 3, 2, allowd);
 */


void level1(boolean display) {
  if (!setup) {
    p = new player(91, 268, 1);
    e = new enemys(7.5, 7.9, 16.5, false);
    e2 = new enemys(16.5, 9.1, 7.5, true);
    e3 = new enemys(7.5, 10.2, 16.5, false);
    e4 = new enemys(16.5, 11.3, 7.5, true);
    e5 = new enemys(7.5, 12.4, 16.5, false);
    setup = true;
  } else if (setup) {
    background(0, 187, 255);
    checkpoint(2, 6, 4, 8);
    checkerboard1x2(5, 12, true);
    checkerboard2x2(3, 5);
    checkerboard2x2(4, 5);
    checkerboard2x2(5, 5);
    checkerboard2x2(6, 5);
    checkerboard2x2(7, 5);
    checkerboard2x2(3, 4);
    checkerboard2x2(4, 4);
    checkerboard2x2(5, 4);
    checkerboard2x2(6, 4);
    checkerboard2x2(7, 4);
    checkerboard2x2(3, 3);
    checkerboard2x2(4, 3);
    checkerboard2x2(5, 3);
    checkerboard2x2(6, 3);
    checkerboard2x2(7, 3);
    checkerboard1x2(15, 5, false);
    end(18, 6, 4, 8, true);
    // start
    lineg(2, 6, 4, 0);
    lineg(2, 14, 6, 0);
    lineg(2, 6, 0, 8);
    lineg(6, 6, 0, 7);
    // end
    lineg(16, 6, 6, 0);
    lineg(18, 14, 4, 0);
    lineg(22, 6, 0, 8);
    lineg(18, 7, 0, 7);
    // game area
    lineg(7, 7, 9, 0);
    lineg(8, 13, 9, 0);
    lineg(7, 7, 0, 6);
    lineg(17, 7, 0, 6);
    lineg(6, 13, 1, 0);
    lineg(17, 7, 1, 0);
    lineg(16, 6, 0, 1);
    lineg(8, 13, 0, 1);
    if (!display) {
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
      p.movement();
      p.collision();
      p.render();
    }
    if (display) {
      p = new player(91, 268, 0);
      e = new enemys(7.5, 7.9, 16.5, false);
      e2 = new enemys(16.5, 9.1, 7.5, true);
      e3 = new enemys(7.5, 10.2, 16.5, false);
      e4 = new enemys(16.5, 11.3, 7.5, true);
      e5 = new enemys(7.5, 12.4, 16.5, false);
      p.render();
      e.render();
      e2.render();
      e3.render();
      e4.render();
      e5.render();
    }
  }
};

void level2() {
  float s = 1.2;
  if (!setup) {
    p = new player(86, 291, 1);
    eu = new enemyu(5.9, 9.8, 14.2, false, s);
    eu2 = new enemyu(7, 14.2, 9.8, true, s);
    eu3 = new enemyu(8, 9.8, 14.2, false, s);
    eu4 = new enemyu(9, 14.2, 9.8, true, s);
    eu5 = new enemyu(10, 9.8, 14.2, false, s);
    eu6 = new enemyu(11, 14.2, 9.8, true, s);
    eu7 = new enemyu(12, 9.8, 14.2, false, s);
    eu8 = new enemyu(13, 14.2, 9.8, true, s);
    eu9 = new enemyu(14, 9.8, 14.2, false, s);
    eu10 = new enemyu(15, 14.2, 9.8, true, s);
    eu11 = new enemyu(16.1, 9.8, 14.2, false, s);

    setup = true;
  } else {
    background(0, 187, 255);
    checkpoint(2, 11, 3, 2);
    checkerboard2x2(2, 5);
    checkerboard2x2(3, 5);
    checkerboard2x2(4, 5);
    checkerboard2x2(5, 5);
    checkerboard2x2(6, 5);
    checkerboard2x2(7, 5);
    checkerboard2x2(2, 4);
    checkerboard2x2(3, 4);
    checkerboard2x2(4, 4);
    checkerboard2x2(5, 4);
    checkerboard2x2(6, 4);
    checkerboard2x2(7, 4);
    checkerboard2x2(2, 6);
    checkerboard2x2(3, 6);
    checkerboard2x2(4, 6);
    checkerboard2x2(5, 6);
    checkerboard2x2(6, 6);
    checkerboard2x2(7, 6);
    end(17, 11, 3, 2, allowd);
    lineg(2, 11, 3, 0);
    lineg(17, 11, 3, 0);
    lineg(2, 13, 3, 0);
    lineg(17, 13, 3, 0);
    lineg(17, 9, 0, 2);
    lineg(5, 13, 0, 2);
    lineg(17, 13, 0, 2);
    lineg(5, 9, 0, 2);
    lineg(5, 9, 12, 0);
    lineg(5, 15, 12, 0);
    lineg(2, 11, 0, 2);
    lineg(20, 11, 0, 2);
    coin(275, 300, true, 1);

    eu.move();
    eu.render();
    eu2.move();
    eu2.render();
    eu3.move();
    eu3.render();
    eu4.move();
    eu4.render();
    eu5.move();
    eu5.render();
    eu6.move();
    eu6.render();
    eu7.move();
    eu7.render();
    eu8.move();
    eu8.render();
    eu9.move();
    eu9.render();
    eu10.move();
    eu10.render();
    eu11.move();
    eu11.render();

    p.movement();
    p.collision();
    p.render();
  }
}

void level3() {
  if (!setup) {
    p = new player(2.5*25, 11.5 * 25, 1);
    e = new enemys(6, 11.5, 18, false, 1);
    e2 = new enemys(6, 12.5, 18, false, 1);
    e3 = new enemys(18, 11.5, 6, true, 1);
    e4 = new enemys(18, 12.5, 6, true, 1);
    //e = new enemys(170 / 25, 290 / 25, 297.5 / 25, false, 1.5);
    //e2 = new enemys(170 / 25, 310 / 25, 297.5 / 25, false, 1.5);
    //e3 = new enemys(425 / 25, 290 / 25, 297.5 / 25, true, 1.5);
    //e4 = new enemys(425 / 25, 310 / 25, 297.5 / 25, true, 1.5);
    setup = true;
  } else {
    background(0, 187, 255);
    checkpoint(2, 11, 3, 2);
    checkerboard2x2(2, 5);
    checkerboard2x2(3, 5);
    checkerboard2x2(4, 5);
    checkerboard2x2(5, 5);
    checkerboard2x2(6, 5);
    checkerboard2x2(7, 5);
    checkerboard2x2(8, 5);
    checkpoint(7, 9, 1, 1);
    checkpoint(10, 14, 1, 1);
    checkpoint(13, 9, 1, 1);
    checkpoint(16, 14, 1, 1);
    checkerboard1x1(12, 9, true);
    checkerboard1x1(15, 12, true);
    checkerboard1x1(9, 12, true);
    checkerboard1x1(6, 9, true);
    end(19, 11, 3, 2, true);
    lineg(2, 11, 5, 0);
    lineg(8, 11, 5, 0);
    lineg(14, 11, 8, 0);
    lineg(2, 13, 8, 0);
    lineg(11, 13, 5, 0);
    lineg(17, 13, 5, 0);
    lineg(2, 11, 0, 2);
    lineg(22, 11, 0, 2);
    lineg(7, 9, 0, 2);
    lineg(8, 9, 0, 2);
    lineg(13, 9, 0, 2);
    lineg(14, 9, 0, 2);
    lineg(10, 13, 0, 2);
    lineg(11, 13, 0, 2);
    lineg(16, 13, 0, 2);
    lineg(17, 13, 0, 2);
    lineg(7, 9, 1, 0);
    lineg(13, 9, 1, 0);
    lineg(10, 15, 1, 0);
    lineg(16, 15, 1, 0);

    e.move();
    e.render();
    e2.move();
    e2.render();
    e3.move();
    e3.render();
    e4.move();
    e4.render();

    p.movement();
    p.collision();
    p.render();
  }
}

void level4() {
  if (!setup) {
    p = new player(1, 1, 1);
    setup = true;
    rotatary_dude = 0;
  } else {
    background(0, 187, 255);
    checkpoint(10, 2, 2, 2);
    translate(300, 300);
    rotate(rotatary_dude);
    fill(0, 0, 255);
    ellipse(0, 0, 15, 15);
    ellipse(0, -30, 15, 15);
    ellipse(0, 30, 15, 15);
    ellipse(-30, 0, 15, 15);
    ellipse(30, 0, 15, 15);
    ellipse(0, -60, 15, 15);
    ellipse(0, 60, 15, 15);
    ellipse(-60, 0, 15, 15);
    ellipse(60, 0, 15, 15);
    ellipse(0, -90, 15, 15);
    ellipse(0, 90, 15, 15);
    ellipse(-90, 0, 15, 15);
    ellipse(90, 0, 15, 15);
    ellipse(0, -120, 15, 15);
    ellipse(0, 120, 15, 15);
    ellipse(-120, 0, 15, 15);
    ellipse(120, 0, 15, 15);
    ellipse(0, -150, 15, 15);
    ellipse(0, 150, 15, 15);
    ellipse(-150, 0, 15, 15);
    ellipse(150, 0, 15, 15);
    ellipse(0, -180, 15, 15);
    ellipse(0, 180, 15, 15);
    ellipse(-180, 0, 15, 15);
    ellipse(180, 0, 15, 15);
    rotate(-rotatary_dude);
    rotatary_dude+=0.007;
    if(rotatary_dude >= 360){
      rotatary_dude = 0;
    }
    translate(-300, -300);
    fill(255);
    text(rotatary_dude, 300, 300);
    p.movement();
    p.collision();
    p.render();
  }
}