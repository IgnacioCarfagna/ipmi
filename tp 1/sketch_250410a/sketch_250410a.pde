void setup() {
  size(800, 400);
  background(30, 50, 120); // cielo nocturno

  drawStars();
  drawMoon();
  drawSpirals();
  drawMountains();
  drawVillage();
  drawCypress();
  
  // Guardar imagen final
  save("noche_estrellada_simple_800x400.png");
}

// Estrellas como círculos
void drawStars() {
  fill(255, 230, 100);
  noStroke();
  ellipse(150, 80, 20, 20);
  ellipse(300, 60, 18, 18);
  ellipse(500, 90, 16, 16);
  ellipse(650, 70, 20, 20);
  ellipse(700, 120, 15, 15);
  ellipse(400, 50, 18, 18);
}

// Luna creciente
void drawMoon() {
  fill(255, 220, 80);
  ellipse(720, 60, 40, 40);
  
  fill(30, 50, 120); // parte oscura
  ellipse(730, 60, 25, 25);
}

// Espirales simplificadas con círculos concéntricos
void drawSpirals() {
  noFill();
  stroke(200, 220, 255, 100);
  strokeWeight(2);

  for (int r = 8; r <= 40; r += 8) {
    ellipse(400, 200, r, r);
  }

  for (int r = 6; r <= 35; r += 6) {
    ellipse(250, 140, r, r);
  }

  for (int r = 10; r <= 45; r += 10) {
    ellipse(550, 160, r, r);
  }
}

// Montañas con triángulos simples
void drawMountains() {
  noStroke();
  fill(20, 30, 60); // azul oscuro

  triangle(0, 300, 150, 180, 300, 300);
  triangle(200, 300, 350, 160, 500, 300);
  triangle(400, 300, 600, 170, 800, 300);
}

// Pueblo con casas simples (rectángulos y triángulos)
void drawVillage() {
  fill(200, 150, 100);
  rect(100, 320, 50, 50);
  fill(150, 100, 50);
  triangle(100, 320, 125, 295, 150, 320);

  fill(190, 140, 90);
  rect(180, 330, 40, 40);
  fill(140, 90, 40);
  triangle(180, 330, 200, 305, 220, 330);

  fill(210, 160, 110);
  rect(260, 325, 45, 45);
  fill(160, 110, 60);
  triangle(260, 325, 283, 300, 305, 325);

  fill(180, 140, 100);
  rect(350, 290, 35, 80);
  fill(100, 60, 30);
  triangle(350, 290, 368, 260, 385, 290);
}

// Ciprés alto al frente (con formas básicas)
void drawCypress() {
  fill(50, 30, 20); // tronco
  rect(80, 270, 15, 90);

  fill(20, 60, 40); // follaje
  triangle(60, 330, 88, 260, 115, 330);
  triangle(65, 305, 88, 240, 110, 305);
  triangle(70, 280, 88, 220, 105, 280);
  triangle(75, 255, 88, 210, 100, 255);
}
