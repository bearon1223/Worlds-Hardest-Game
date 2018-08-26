void getMoney(float amount) {
  coins += amount;
}
boolean mp = false;
void shopButton(String t, float x, float y, float ys, float cost, int action) {
  float w = 180 + ys;
  float h = 50;
  fill(96, 96, 96, 96);
  if (mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h && coins >= cost) {
    fill(56, 56, 56, 146);
    if (mousePressed && !mp) {
      mp = true;
      coins -= cost;
      if (action == 1) {
        wins++;
      }
    } else if(mp && !mousePressed){
      mp = false;
    }
  } 
  if (coins >= cost) {
    strokeWeight(1);
    stroke(0);
    rect(x, y, w, h, 3);
    textSize(35);
    textAlign(CENTER, CENTER);
    fill(0, 0, 0);
    text(t, x + w / 2, y + h / 2);
  }
}

void shop() {
  shopButton("Skip Next Level", 10, 100, 100, 50, 1);
}