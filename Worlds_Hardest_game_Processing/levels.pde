boolean setup;
enemys e = new enemys(7.5, 7.9, 16.5, false);
enemys e2 = new enemys(16.5, 9.1, 7.5, true);
enemys e3 = new enemys(7.5, 10.2, 16.5, false);
enemys e4 = new enemys(16.5, 11.3, 7.5, true);
enemys e5 = new enemys(7.5, 12.4, 16.5, false);
//enemys e6 = new enemys(414, 333, 186, true);
//enemys e7 = new enemys(186, 363, 414, false);


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
    end(18, 6, 4, 8);
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
  background(0, 187, 255);
  checkpoint(2, 11, 3, 2);
  checkerboard2x2(2, 5);
  checkerboard2x2(3, 5);
  checkerboard2x2(4, 5);
  checkerboard2x2(5, 5);
  checkerboard2x2(6, 5);
}