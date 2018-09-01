boolean setup;
boolean allowd = false;
player p = new player(91 / 25, 268 / 25, 1);

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
enemyu eu12 = new enemyu(0, 0, 0, false, 0);
enemyu eu13 = new enemyu(0, 0, 0, false, 0);

enemyr er = new enemyr(1, 1, 5, 5, 1);
enemyr er2 = new enemyr(1, 1, 5, 5, 1);
enemyr er3 = new enemyr(1, 1, 5, 5, 1);
enemyr er4 = new enemyr(1, 1, 5, 5, 1);
enemyr er5 = new enemyr(1, 1, 5, 5, 1);
enemyr er6 = new enemyr(1, 1, 5, 5, 1);
enemyr er7 = new enemyr(1, 1, 5, 5, 1);
enemyr er8 = new enemyr(1, 1, 5, 5, 1);
enemyr er9 = new enemyr(1, 1, 5, 5, 1);
enemyr er10 = new enemyr(1, 1, 5, 5, 1);
enemyr er11 = new enemyr(1, 1, 5, 5, 1);
enemyr er12 =  new enemyr(1, 1, 5, 5, 1);
enemyr er13 = new enemyr(1, 1, 5, 5, 1);

rotatingEnemys r1 = new rotatingEnemys(0, 0, 0, 0, 0, false, 0);
rotatingEnemys r2 = new rotatingEnemys(0, 0, 0, 0, 0, false, 0);
rotatingEnemys r3 = new rotatingEnemys(0, 0, 0, 0, 0, false, 0);
rotatingEnemys r4 = new rotatingEnemys(0, 0, 0, 0, 0, false, 0);
rotatingEnemys r5 = new rotatingEnemys(0, 0, 0, 0, 0, false, 0);
rotatingEnemys r6 = new rotatingEnemys(0, 0, 0, 0, 0, false, 0);

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
    p = new player(91 / 25, 268 / 25, 1);
    e = new enemys(7.5, 7.9, 16.5, false);
    e2 = new enemys(16.5, 9.1, 7.5, true);
    e3 = new enemys(7.5, 10.2, 16.5, false);
    e4 = new enemys(16.5, 11.3, 7.5, true);
    e5 = new enemys(7.5, 12.4, 16.5, false);
    coinsCollected = 0;
    setup = true;
  } else if (setup) {
    background(0, 187, 255);
    checkpoint(2, 6, 4, 8);
    checkerboard2x1(5, 12, true);
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
    checkerboard2x1(15, 5, false);
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
void level(float l) {
  if (l == 1) {
    if (!setup) {
      p = new player(91 / 25, 268 / 25, 1);
      e = new enemys(7.5, 7.9, 16.5, false);
      e2 = new enemys(16.5, 9.1, 7.5, true);
      e3 = new enemys(7.5, 10.2, 16.5, false);
      e4 = new enemys(16.5, 11.3, 7.5, true);
      e5 = new enemys(7.5, 12.4, 16.5, false);
      coinsCollected = 0;
      setup = true;
    } else if (setup) {
      background(0, 187, 255);
      checkpoint(2, 6, 4, 8);
      checkerboard2x1(5, 12, true);
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
      checkerboard2x1(15, 5, false);
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
  } else if (l == 2) {
    float s = 1.2;
    if (!setup) {
      p = new player(86 / 25, 300 / 25, 1);
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
      coinsCollected = 0;
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
      coin((275 - 12.5) / 25, (300 - 12.5) / 25);

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
  } else if (l == 3) {
    if (!setup) {
      p = new player(2.5, 11.5, 1);
      e = new enemys(6, 11.5, 18, false, 1);
      e2 = new enemys(6, 12.5, 18, false, 1);
      e3 = new enemys(18, 11.5, 6, true, 1);
      e4 = new enemys(18, 12.5, 6, true, 1);
      coinsCollected = 0;
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
  } else  if (l == 4) {
    if (!setup) {
      p = new player(12, 2, 1);
      coinsCollected = 0;
      setup = true;
      r1 = new rotatingEnemys(12, 12, 6, 6, 32, true, 0);
    } else {
      background(0, 187, 255);
      checkpoint(11, 1, 2, 2);
      end(11, 21, 2, 2, allowd);
      checkerboard2x2(5, 2);
      checkerboard2x2(4, 2);
      checkerboard2x2(4, 1);
      checkerboard2x2(5, 8);
      checkerboard2x2(4, 8);
      checkerboard2x2(5, 1);
      checkerboard2x2(5, 7);
      checkerboard2x2(4, 7);
      checkerboard2x2(4, 6);
      checkerboard2x2(5, 6);
      checkerboard2x2(4, 8);
      checkerboard2x2(5, 3);
      checkerboard2x2(5, 4);
      checkerboard2x2(4, 5);
      checkerboard2x2(4, 4);
      checkerboard2x2(5, 5);
      checkerboard2x2(4, 3);
      checkerboard2x2(6, 8);
      checkerboard2x2(6, 1);
      checkerboard2x2(6, 4);
      checkerboard2x2(6, 3);
      checkerboard2x2(6, 2);
      checkerboard2x2(6, 7);
      checkerboard2x2(6, 6);
      checkerboard2x2(6, 9);
      checkerboard2x2(5, 9);
      checkerboard2x2(4, 9);
      checkerboard2x2(6, 5);
      checkerboard2x2(7, 5);
      checkerboard2x2(8, 5);
      checkerboard2x2(9, 5);
      checkerboard2x2(1, 5);
      checkerboard2x2(2, 5);
      checkerboard2x2(3, 5);
      checkerboard2x2(3, 4);
      checkerboard2x2(3, 6);
      checkerboard2x2(7, 4);
      checkerboard2x2(7, 6);
      checkerboard2x2(7, 7);
      checkerboard2x2(7, 3);
      checkerboard2x2(3, 3);
      checkerboard2x2(3, 7);
      checkerboard2x2(2, 4);
      checkerboard2x2(2, 6);
      checkerboard2x2(8, 4);
      checkerboard2x2(8, 6);
      checkerboard2x2(1, 6);
      checkerboard2x2(1, 4);
      checkerboard2x2(9, 4);
      checkerboard2x2(9, 6);
      checkerboard2x2(2, 7);
      checkerboard2x2(2, 3);
      checkerboard2x2(3, 2);
      checkerboard2x2(3, 8);
      checkerboard2x2(8, 7);
      checkerboard2x2(7, 8);
      checkerboard2x2(8, 3);
      checkerboard2x2(7, 2);

      lineg(9, 3, 2, 0);
      lineg(11, 1, 2, 0);
      lineg(13, 3, 2, 0);
      lineg(7, 5, 2, 0);
      lineg(5, 7, 2, 0);
      lineg(3, 9, 2, 0);
      lineg(15, 5, 2, 0);
      lineg(17, 7, 2, 0);
      lineg(19, 9, 2, 0);
      lineg(19, 15, 2, 0);
      lineg(17, 17, 2, 0);
      lineg(15, 19, 2, 0);
      lineg(13, 21, 2, 0);
      lineg(11, 23, 2, 0);
      lineg(9, 21, 2, 0);
      lineg(7, 19, 2, 0);
      lineg(5, 17, 2, 0);
      lineg(3, 15, 2, 0);
      lineg(3, 9, 0, 6);
      lineg(21, 9, 0, 6);
      lineg(11, 1, 0, 2);
      lineg(13, 1, 0, 2);
      lineg(9, 3, 0, 2);
      lineg(7, 5, 0, 2);
      lineg(5, 7, 0, 2);
      lineg(5, 15, 0, 2);
      lineg(7, 17, 0, 2);
      lineg(9, 19, 0, 2);
      lineg(15, 3, 0, 2);
      lineg(17, 5, 0, 2);
      lineg(19, 7, 0, 2);
      lineg(19, 15, 0, 2);
      lineg(17, 17, 0, 2);
      lineg(15, 19, 0, 2);
      lineg(13, 21, 0, 2);
      lineg(11, 21, 0, 2);
      r1.normal();

      coin(17, 11.5, 3, 1);
      coin(11.5, 17.5, 3, 2);
      coin(6, 11.5, 3, 3);

      p.movement();
      p.collision();
      p.render();
    }
  } else if (l == 5) {
    if (!setup) {
      p = new player(4.3, 5.3, 1);
      setup = true;
      coinsCollected = 0;
      r1 = new rotatingEnemys(12, 10, 4, 20, 47, false, 1);
      r2 = new rotatingEnemys(12, 10, 1, 30, 47 / 2, false, 1);
    } else {
      background(0, 187, 255);
      checkpoint(4, 5, 1, 1);
      checkerboard2x1(4, 4, false);
      checkerboard2x1(6, 4, false);
      checkerboard2x1(8, 4, false);
      checkerboard2x1(10, 4, false);
      checkerboard2x1(12, 4, false);
      checkerboard2x1(14, 4, false);
      checkerboard2x1(16, 4, false);
      checkerboard1x1(18, 4, false);
      checkpoint(20, 5, 1, 1);

      //5
      checkerboard1x2(17, 5, false);
      checkerboard1x2(17, 7, false);
      checkerboard1x2(17, 9, false);
      checkerboard1x2(17, 11, false);
      checkerboard1x2(17, 13, false);

      checkerboard2x1(4, 14, false);
      checkerboard2x1(6, 14, false);
      checkerboard2x1(8, 14, false);
      checkerboard2x1(10, 14, false);
      checkerboard2x1(12, 14, false);
      checkerboard2x1(14, 14, false);
      checkerboard2x1(16, 14, false);

      //4
      checkerboard1x2(4, 6, false);
      checkerboard1x2(4, 8, false);
      checkerboard1x2(4, 10, false);
      checkerboard1x2(4, 12, false);
      checkerboard1x1(3, 6, true);
      checkpoint(3, 7, 1, 1);

      checkerboard2x1(4, 6, false);
      checkerboard2x1(6, 6, false);
      checkerboard2x1(8, 6, false);
      checkerboard2x1(10, 6, false);
      checkerboard2x1(12, 6, false);
      checkerboard1x1(14, 6, false);

      checkerboard1x2(15, 6, true);
      checkerboard1x2(15, 8, true);
      checkerboard1x2(15, 10, true);
      checkerboard1x1(15, 12, true);

      checkerboard2x1(13, 12, true);
      checkerboard2x1(11, 12, true);
      checkerboard2x1(9, 12, true);
      checkerboard2x1(7, 12, true);
      checkerboard1x1(6, 12, false);

      checkerboard1x2(6, 10, false);
      checkerboard1x2(6, 8, false);

      checkerboard2x1(7, 8, true);
      checkerboard2x1(9, 8, true);
      checkerboard2x1(11, 8, true);
      end(14, 9, 1, 1, true);

      checkerboard2x1(10, 9, true);
      checkerboard2x1(10, 10, false);
      checkerboard2x1(8, 10, false);
      checkerboard2x1(12, 10, false);

      lineg(4, 5, 17, 0);
      lineg(4, 6, 14, 0);
      lineg(3, 7, 14, 0);
      lineg(6, 8, 10, 0);
      lineg(7, 14, 10, 0);
      lineg(8, 13, 8, 0);
      lineg(7, 9, 8, 0);
      lineg(3, 8, 2, 0);
      lineg(5, 16, 14, 0);
      lineg(4, 5, 0, 1);
      lineg(13, 11, 2, 0);
      lineg(9, 11, 2, 0);
      lineg(9, 12, 6, 0);
      lineg(8, 10, 3, 0);
      lineg(13, 10, 2, 0);
      lineg(19, 6, 2, 0);
      lineg(21, 5, 0, 1);
      lineg(19, 6, 0, 10);
      lineg(3, 7, 0, 1);
      lineg(5, 8, 0, 8);
      lineg(6, 8, 0, 7);
      lineg(7, 9, 0, 5);
      lineg(8, 10, 0, 3);
      lineg(9, 11, 0, 1);
      lineg(11, 10, 0, 1);
      lineg(13, 10, 0, 1);
      lineg(15, 11, 0, 1);
      lineg(16, 8, 0, 5);
      lineg(17, 7, 0, 7);
      lineg(18, 6, 0, 9);
      lineg(15, 9, 0, 1);
      lineg(6, 15, 12, 0);

      coin(9, 11, 6, 5);
      coin(10, 11, 6, 3);
      coin(11, 11, 6, 1);
      coin(12, 11, 6, 2);
      coin(13, 11, 6, 4);
      coin(14, 11, 6, 6);

      r1.normal();
      //r2.inverted();

      p.movement();
      p.collision();
      p.render();
    }
  } else if (l == 6) {
    if (!setup) {
      setup = true;
      p = new player(1.5, 5.5, 1);
      r1 = new rotatingEnemys(6, 6, 2, 10, 30, true, 0);
      r2 = new rotatingEnemys(12, 6, 2, 10, 30, true, 0);
      r3 = new rotatingEnemys(18, 6, 2, 10, 30, true, 0);
      r4 = new rotatingEnemys(6, 15, 2, 10, 30, true, 0);
      r5 = new rotatingEnemys(12, 15, 2, 10, 30, true, 0);
      r6 = new rotatingEnemys(18, 15, 2, 10, 30, true, 0);
    } else if (setup) {
      background(0, 187, 255);
      checkpoint(1, 3, 2, 6);
      checkerboard2x2(1, 2);
      checkerboard2x2(2, 2);
      checkerboard2x2(3, 2);
      checkerboard2x2(4, 2);
      checkerboard2x2(5, 2);
      checkerboard2x2(6, 2);
      checkerboard2x2(7, 2);
      checkerboard2x2(8, 2);
      checkerboard2x2(9, 2);
      checkerboard2x2(10, 2);

      checkerboard2x2(1, 1);
      checkerboard2x2(2, 1);
      checkerboard2x2(3, 1);
      checkerboard2x2(4, 1);
      checkerboard2x2(5, 1);
      checkerboard2x2(6, 1);
      checkerboard2x2(7, 1);
      checkerboard2x2(8, 1);
      checkerboard2x2(9, 1);
      checkerboard2x2(10, 1);

      checkerboard2x2(1, 3);
      checkerboard2x2(2, 3);
      checkerboard2x2(3, 3);
      checkerboard2x2(4, 3);
      checkerboard2x2(5, 3);
      checkerboard2x2(6, 3);
      checkerboard2x2(7, 3);
      checkerboard2x2(8, 3);
      checkerboard2x2(9, 3);
      checkerboard2x2(10, 3);


      checkerboard2x2(1, 7);
      checkerboard2x2(2, 7);
      checkerboard2x2(3, 7);
      checkerboard2x2(4, 7);
      checkerboard2x2(5, 7);
      checkerboard2x2(6, 7);
      checkerboard2x2(7, 7);
      checkerboard2x2(8, 7);
      checkerboard2x2(9, 7);
      checkerboard2x2(10, 7);

      checkerboard2x2(1, 6);
      checkerboard2x2(2, 6);
      checkerboard2x2(3, 6);
      checkerboard2x2(4, 6);
      checkerboard2x2(5, 6);
      checkerboard2x2(6, 6);
      checkerboard2x2(7, 6);
      checkerboard2x2(8, 6);
      checkerboard2x2(9, 6);
      checkerboard2x2(10, 6);

      checkerboard2x1(1 * 2, 8 * 2, false);
      checkerboard2x1(2 * 2, 8 * 2, false);
      checkerboard2x1(3 * 2, 8 * 2, false);
      checkerboard2x1(4 * 2, 8 * 2, false);
      checkerboard2x1(5 * 2, 8 * 2, false);
      checkerboard2x1(6 * 2, 8 * 2, false);
      checkerboard2x1(7 * 2, 8 * 2, false);
      checkerboard2x1(8 * 2, 8 * 2, false);
      checkerboard2x1(9 * 2, 8 * 2, false);
      checkerboard2x1(10 * 2, 8 * 2, false);

      checkerboard2x1(1 * 2, 5.5 * 2, true);
      checkerboard2x1(2 * 2, 5.5 * 2, true);
      checkerboard2x1(3 * 2, 5.5 * 2, true);
      checkerboard2x1(4 * 2, 5.5 * 2, true);
      checkerboard2x1(5 * 2, 5.5 * 2, true);
      checkerboard2x1(6 * 2, 5.5 * 2, true);
      checkerboard2x1(7 * 2, 5.5 * 2, true);
      checkerboard2x1(8 * 2, 5.5 * 2, true);
      checkerboard2x1(9 * 2, 5.5 * 2, true);
      checkerboard2x1(10 * 2, 5.5 * 2, true);
      checkerboard2x1(20, 10, false);
      checkerboard2x2(10, 4);
      checkerboard2x1(18, 10, false);
      checkerboard2x2(9, 4);
      end(1, 12, 2, 6, allowd);

      coin(16, 13, 3, 3);
      coin(10, 13, 3, 2);
      coin(4, 13, 3, 1);

      lineg(1, 3, 22, 0);
      lineg(1, 12, 18, 0);
      lineg(1, 9, 18, 0);
      lineg(1, 18, 22, 0);
      lineg(1, 3, 0, 6);
      lineg(23, 3, 0, 15);
      lineg(1, 12, 0, 6);
      lineg(19, 9, 0, 3);

      r1.normal();
      r2.normal();
      r3.normal();
      r4.normal();
      r5.normal();
      r6.normal();

      p.movement();
      p.collision();
      p.render();
    }
  } else if (l == 7) {
    if (!setup) {
      p = new player(3.5, 13, 1);
      eu = new enemyu(5.9, 9.5, 16.5, false, 2);
      eu2 = new enemyu(7, 16.5, 9.5, true, 2);
      eu3 = new enemyu(8, 9.5, 16.5, false, 2);
      eu4 = new enemyu(9, 16.5, 9.5, true, 2);
      eu5 = new enemyu(10, 9.5, 16.5, false, 2);
      eu6 = new enemyu(11, 16.5, 9.5, true, 2);
      eu7 = new enemyu(12, 9.5, 16.5, false, 2);
      eu8 = new enemyu(13, 16.5, 9.5, true, 2);
      eu9 = new enemyu(14, 9.5, 16.5, false, 2);
      eu10 = new enemyu(15, 16.5, 9.5, true, 2);
      eu11 = new enemyu(16, 9.5, 16.5, false, 2);
      eu12 = new enemyu(17, 16.5, 9.5, true, 2);
      eu13 = new enemyu(18.1, 9.5, 16.5, false, 2);
      setup = true;
      coinsCollected = 0;
    } else {
      background(0, 187, 255);
      checkpoint(2, 12, 3, 2);
      checkerboard2x2(2, 6);
      checkerboard2x2(3, 6);
      checkerboard2x2(4, 6);
      checkerboard2x2(5, 6);
      checkerboard2x2(6, 6);
      checkerboard2x2(7, 6);
      checkerboard2x2(8, 6);

      checkerboard2x2(2, 5);
      checkerboard2x2(3, 5);
      checkerboard2x2(4, 5);
      checkerboard2x2(5, 5);
      checkerboard2x2(6, 5);
      checkerboard2x2(7, 5);
      checkerboard2x2(8, 5);

      checkerboard2x2(2, 4);
      checkerboard2x2(3, 4);
      checkerboard2x2(4, 4);
      checkerboard2x2(5, 4);
      checkerboard2x2(6, 4);
      checkerboard2x2(7, 4);
      checkerboard2x2(8, 4);

      checkerboard2x2(2, 7);
      checkerboard2x2(3, 7);
      checkerboard2x2(4, 7);
      checkerboard2x2(5, 7);
      checkerboard2x2(6, 7);
      checkerboard2x2(7, 7);
      checkerboard2x2(8, 7);
      end(19, 12, 3, 2, allowd);
      coin(5, 9, 4, 1);
      coin(5, 16, 4, 2);
      coin(18, 9, 4, 3);
      coin(18, 16, 4, 4);
      lineg(5, 9, 14, 0);
      lineg(5, 17, 14, 0);
      lineg(2, 12, 3, 0);
      lineg(2, 14, 3, 0);
      lineg(19, 12, 3, 0);
      lineg(19, 14, 3, 0);
      lineg(2, 12, 0, 2);
      lineg(22, 12, 0, 2);
      lineg(5, 9, 0, 3);
      lineg(19, 9, 0, 3);
      lineg(5, 14, 0, 3);
      lineg(19, 14, 0, 3);

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
      eu12.move();
      eu12.render();
      eu13.move();
      eu13.render();

      p.movement();
      p.collision();
      p.render();
    }
  } else if (l == 8) {
    if (!setup) {
      setup = true;
      p = new player(12, 12, 1);
      psx = 12 * 25;
      psy = 12 * 25;
      er = new enemyr(10.5, 10.5, 3, 3, 1);
      er2 = new enemyr(10.5, 10.5, 3, 3, 1, 11.5, 10.5, false, false, false);
      er3 = new enemyr(10.5, 10.5, 3, 3, 1, 12.5, 10.5, false, false, false);
      er4 = new enemyr(10.5, 10.5, 3, 3, 1, 13.5, 10.5, false, false, false);
      er5 = new enemyr(10.5, 10.5, 3, 3, 1, 13.5, 11.5, true, false, false);
      er6 = new enemyr(10.5, 10.5, 3, 3, 1, 13.5, 12.5, true, false, false);
      er7 = new enemyr(10.5, 10.5, 3, 3, 1, 13.5, 13.5, true, false, false);
      er8 = new enemyr(10.5, 10.5, 3, 3, 1, 10.5, 13.5, false, true, false);
      er9 = new enemyr(10.5, 10.5, 3, 3, 1, 11.5, 13.5, false, true, false);
      er10 = new enemyr(10.5, 10.5, 3, 3, 1, 12.5, 13.5, false, true, false);
      er11 = new enemyr(10.5, 10.5, 3, 3, 1, 10.5, 12.5, false, false, true);
    } else {
      background(0, 187, 255);
      
      end(11, 11, 2, 2, allowd, false);
      
      checkerboard2x1(10, 9, true);
      checkerboard2x1(10, 12, false);
      checkerboard1x2(9, 10, true);
      checkerboard1x2(12, 10, false);
      checkerboard1x1(9, 9, false);
      checkerboard1x1(9, 8, true);
      checkerboard1x1(9, 12, true);
      checkerboard1x1(12, 12, false);
      checkerboard1x1(12, 9, true);
      
      er.normal();
      er2.normal();
      er3.normal();
      er4.normal();
      er5.normal();
      er6.normal();
      er7.normal();
      er8.normal();
      er9.normal();
      er10.normal();
      er11.normal();
      
      er.render();
      er2.render();
      er3.render();
      er4.render();
      er5.render();
      er6.render();
      er7.render();
      er8.render();
      er9.render();
      er10.render();
      er11.render();
      
      coin(10, 9);
      
      p.movement();
      p.collision();
      p.render();
    }
  } else {
    background(0);
    fill(255);
    text("ERROR 404: LEVEL NOT FOUND", 300, 300);
  }
}