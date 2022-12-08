// arkanoid = https://www.dailymotion.com/video/x5f1vv
/////////////////////////////////////////////////////
//
// Arkanoid
// DM2 "UED 131 - Programmation impérative" 2022-2023
// NOM         : MOHAMMED KHOKAN
// Prénom      : Akshey
// N° étudiant : 20224297
//
// Collaboration avec : 
//
/////////////////////////////////////////////////////
//import processing.sound.*;

//===================================================
// les variables globales
//===================================================

/////////////////////////////
// Pour les effets sonores //
/////////////////////////////

/////////////////////////////
// Pour la balle           //
/////////////////////////////
int balleD = 10;
int balleVitesse = 2;
float balleX, balleY, balleVx, balleVy;
float newBalleX = 0.0;
float newBalleY = 0.0;
/////////////////////////////
// Pour la raquette        //
/////////////////////////////
int raquetteY = 630-50;
int raquetteL = 100; 
int raquetteH = 20;
int raquetteX;
/////////////////////////////
// Pour la zone de jeu     //
/////////////////////////////
int minX = 30;
int minY = 30; 
int maxX = 710;
int centreX = maxX/2;
/////////////////////////////
// Pour les briques        //
/////////////////////////////

/////////////////////////////
// Pour le "boss"          //
/////////////////////////////

/////////////////////////////
// Pour le contrôle global //
/////////////////////////////

////////////////////////////////////
// Pour la gestion de l'affichage //
////////////////////////////////////

//===================================================
// l'initialisation
//===================================================
void setup() {
  size(960, 630);
}

//===================================================
// l'initialisation de la balle et de la raquette
//===================================================
void initBalleEtRaquette() {
  float angle = random(5*PI/4, 7*PI/4);
  balleVx = balleVitesse * cos(angle);
  balleVy = balleVitesse * sin(angle);
  raquetteX = centreX;
  balleX = maxX/2;
  balleY = 560;
}

//===================================================
// l'initialisation des briques
//===================================================
void initBriques() {
}

//===================================================
// l'initialisation de la partie
//===================================================
void initJeu() {
}

//===================================================
// la boucle de rendu
//===================================================
void draw() {
  miseAJourBalle();
  deplaceBalle();
  afficheJeu();
}

//===================================================
// gère les rebonds sur les murs
//===================================================
void rebondMurs() {
}

//===================================================
// gère le rebond sur la raquette
//===================================================
void rebondRaquette() {
}

//===================================================
// gère le rebond sur une "boîte"
// --------------------------------------------------
// (x1, y1) = l'ancienne position de la balle
// (x2, y2) = la nouvelle position de la balle
// (bx, by) = le coin supérieur gauche de la boîte
// (bw, bh) = la largeur et la hauteur de la boîte
// --------
// résultat = vrai si rebond / faux sinon
// --------
// met à jour la vitesse de la balle en fonction du 
// rebond
//===================================================
boolean rebond(float x1, float y1, float x2, float y2, 
  float bx, float by, float bw, float bh) {
  return false;
}

//===================================================
// gère le rebond sur les briques
// --------------------------------------------------
// (x1, y1) = l'ancienne position de la balle
// (x2, y2) = la nouvelle position de la balle
//===================================================
void rebondBriques(float x1, float y1, float x2, float y2) {
}

//===================================================
// gère le rebond sur le boss
// --------------------------------------------------
// (x1, y1) = l'ancienne position de la balle
// (x2, y2) = la nouvelle position de la balle
//===================================================
void rebondBoss(float x1, float y1, float x2, float y2) {
}

//===================================================
// calcule la nouvelle position de la balle
//===================================================
void deplaceBalle() {
  newBalleX += balleVx;
  newBalleY += balleVy;
}

//===================================================
// met à jour la position de la balle
//===================================================
void miseAJourBalle() {
  balleX = newBalleX;
  balleY = newBalleY;
}

//===================================================
// affiche un écran, avec un message
// --------------------------------------------------
// msg = le message à afficher
//===================================================
void afficheEcran(String msg) {
}

//===================================================
// fait le dessin de pavage au fond
//===================================================
void pavage() {
}

//===================================================
// affiche le cadre
//===================================================
void cadre() {
  fill(128);
  noStroke();
  rect(0,0,680,30);
  rect(0,0,30,630);
  rect(680,0,30,630);
}

//===================================================
// formate le score sur 6 chiffres
// --------------------------------------------------
// score = le score à afficher
// --------
// résultat = une chaîne de caractères sur 6 chiffres
//===================================================
String formatScore(int score) {
  return "";
}

//===================================================
// affiche le cartouche de droite
//===================================================
void cartouche() {
  fill(0);
  rect(710,0,250,630);
  PImage img = loadImage("data/arkanoid.png");
  image(img, 710, 0) ;
  fill(255,0,0);
  PFont fonte = createFont("joystix.ttf", 20);
  textFont(fonte);
  text("1UP", 810, 100);
  fill(255);
  text("HIGHSCORE", 760, 200);
  text("COPYRIGHT", 760, 630-80);
  text("A.KHOKAN", 770, 630-60);
  text("@ 2022", 780, 630-40);
}

//===================================================
// affiche le boss dans sa cage
//===================================================
void boss() { // Doflamingo de One Piece
    // Cou
    noStroke();
    fill(#E6916C);
    rect(84,264,225,140);
    rect(281,255,26,20);
    stroke(0);
    strokeWeight(3.5);
    line(85,265,85,400);
    line(309,254,309,400);
    line(139,339,126,385);
    line(214,341,262,384);

    
    // Cheveux
    noStroke();
    fill(#CFC12A);
    beginShape();
    curveVertex(77,  211);
    curveVertex(78,  210);
    curveVertex(56,  172);
    curveVertex(40,  150);
    curveVertex(65,  124);
    curveVertex(67,  87);
    curveVertex(90,  87);
    curveVertex(162,  57);
    curveVertex(153, 41);
    curveVertex(220,  50);
    curveVertex(258, 52);
    curveVertex(301,  66);
    curveVertex(307, 131);
    curveVertex(343,  119);
    curveVertex(308, 170);
    curveVertex(309, 171);
    endShape(OPEN);
    beginShape();
    curveVertex(56+20,  172+21);
    curveVertex(40+20,  150+21);
    curveVertex(65+20,  124+21);
    curveVertex(67+20,  87+21);
    curveVertex(87+20,  77+21);
    curveVertex(90+20,  87+21);
    curveVertex(109+20,  35+21);
    curveVertex(118+20,  27+21);
    curveVertex(122+20,  27+21);
    curveVertex(162+20,  57+21);
    curveVertex(153+20, 41+21);
    curveVertex(190+20,  17+21);
    curveVertex(220+20,  50+21);
    curveVertex(240+20,  51+21);
    curveVertex(258+20, 52+21);
    curveVertex(301+20,  66+21);
    curveVertex(307+20, 131+21);
    curveVertex(343+20,  119+21);
    endShape();
    triangle(48,186,82,183,83,204);
    triangle(99,60,97,91,123,83);
    triangle(330,97,296,96,309,131);
    
    // Tête
    stroke(0);
    strokeWeight(3.5);
    line(165,330,235,320);
    fill(#E6916C);
    beginShape();
    curveVertex(165,  330);
    curveVertex(165,  330);
    curveVertex(100,  265);
    curveVertex(80, 165);
    curveVertex(82, 141);
    curveVertex(110, 100);
    curveVertex(188, 70);
    curveVertex(266, 82);
    curveVertex(305, 180);
    curveVertex(300, 250);
    curveVertex(235, 320);
    curveVertex(235, 320);
    endShape();
    
    // Frange
    fill(#CFC12A);
    noStroke();
    rect(93,86,20,30);
    rect(112,85,50,7);
    rect(115,93,55,7);
    rect(112,98,50,7);
    rect(97,89,55,7);
    rect(137,60,118,30);
    rect(235,71,20,20);
    stroke(0);
    strokeWeight(3);
    triangle(235,86,253,89,257,78);
    fill(#CFC12A);
    beginShape();
    curveVertex(101, 110);
    curveVertex(101, 110);
    curveVertex(110, 122);
    curveVertex(121, 103);
    curveVertex(141, 104);
    curveVertex(146, 90);
    curveVertex(163, 100);
    curveVertex(177, 87);
    curveVertex(183, 102);
    curveVertex(195, 85);
    curveVertex(205, 95);
    curveVertex(221, 84);
    curveVertex(244, 105);
    curveVertex(235, 86);
    curveVertex(235, 86);
    endShape();
    

    // Oreille droite
    fill(#E6916C);
    noStroke();
    circle(90,240,44);
    circle(307,197,44);
    stroke(0);
    strokeWeight(3.5);
    beginShape();
    vertex(325, 180);
    bezierVertex(340, 215, 320, 260, 300, 255);
    endShape();
    line(308,188, 312,168);
    line(312,168, 325,180);
    // Creux de l'oreille
    strokeWeight(1);
    circle(317, 212, 10);
    strokeWeight(2);
    line(312,190, 321,195);
    line(312,234, 321, 228);
    line(316,192, 320, 205);
    line(315,216, 312, 233);
    
    // Oreille gauche
    strokeWeight(3.5);
    beginShape();
    vertex(67, 227);
    bezierVertex(62, 240, 80, 268, 103, 272);
    endShape();
    line(67,227, 73,210);
    line(73,210, 87,220);
    // Creux de l'oreille
    strokeWeight(1);
    circle(79, 237, 10);
    strokeWeight(2);
    line(75,224, 81,226);
    line(78,223, 77, 232);
    line(83,242, 88, 250);
    line(88,250, 84, 256);
    
    // Menton
    stroke(0);
    noFill();
    strokeWeight(2.7);
    line(169,312, 227,303);
    
    // Lèvre inférieure
    stroke(0);
    strokeWeight(2.7);
    beginShape();
    vertex(107, 216);
    bezierVertex(163, 345, 250, 297, 283, 191);
    endShape();
    
    // Front
    strokeWeight(0.5);
    stroke(0);
    bezier(226, 103, 196, 122, 203, 148, 190, 164);
    bezier(226+4, 103, 196+4, 122, 203+4, 148, 190+4, 164);
    bezier(180, 165, 171, 122, 95, 148, 143, 115);
    bezier(180+4, 165, 171+4, 122, 95+4, 148, 143+4, 115);
    
    // Dents (bas)
    strokeWeight(1.2);
    line(150,278, 242,265);
    line(173,276, 173,291);
    line(161,278, 161,287);
    line(226,268, 226,278);
    line(187,273, 187,294);
    line(207,289, 207,270);
    
    // Lèvre supérieure
    strokeWeight(2.7);
    beginShape();
    vertex(107, 216);
    bezierVertex(157, 240, 240, 215, 283, 191);
    endShape();
    
    // Langue
    fill(#B21A36);
    stroke(0);
    strokeWeight(2);
    arc(196, 272, 70, 45, PI, PI*2);
    strokeWeight(1);
    fill(#FACDD9);
    ellipse(200, 259, 30, 10);

    
    // Dents (haut)
    strokeWeight(1.2);
    beginShape();
    vertex(122, 244);
    bezierVertex(157, 242, 240, 229, 269, 228);
    endShape();
    line(123,222,123+5,243);
    line(144,226,144+5,241);
    line(166,227,166+5,240);
    line(193,223,193,236);
    line(215,232,215,218);
    line(234,211,234,231);
    line(254,206,253,229);
    line(265,201,265,229);
    line(272,197,272,212);
    line(121,245,147,252);
    line(147,252,148,241);
    line(265,231,242,239);
    line(242,239,244,231);
    
    // Fossettes
    noFill();
    strokeWeight(3);
    line(119,204,101,206);
    line(101,206,102,214);
    line(268,184,287,180);
    line(287,180,289,189);
    
    // Nez
    strokeWeight(3);
    triangle(183, 204, 198, 201, 186, 180);
    strokeWeight(0.5);
    rect(181, 168, 10, 20);
    

    
    // Lunettes
    stroke(255);
    fill(255);
    strokeWeight(2);
    arc(184, 168, 40, 10, PI, PI+3);
    fill(#B21A36);
    // Gauche
    line(96,162,83,214);
    beginShape();
    vertex(95, 158);
    bezierVertex(110, 195, 148, 170, 173, 184);
    endShape();
    beginShape();
    vertex(90, 155);
    bezierVertex(144, 155, 166, 168, 173, 184);
    endShape(); 
    // Droite
    line(307,180,274,146);
    beginShape();
    vertex(275, 144);
    bezierVertex(290, 176, 232, 165, 204, 184);
    endShape();
    beginShape();
    vertex(279, 141);
    bezierVertex(250, 143, 196, 160, 204, 184);
    endShape();
    
}

//===================================================
// affiche la balle
//===================================================
void afficheBalle() {
  initBalleEtRaquette();
  fill(255);
  circle(balleX, balleY, balleD);
}

//===================================================
// affiche la raquette
//===================================================
void afficheRaquette() {
  fill(255);
  rectMode(CENTER);
  rect(raquetteX, raquetteY, raquetteL, raquetteH, 8);
  rectMode(CORNER);
  initBalleEtRaquette();

}

//===================================================
// affiche le jeu
//===================================================
void afficheJeu() {
  background(0, 60, 130);
  afficheBalle();
  afficheRaquette();
  cadre();
  cartouche();
  translate(255, 100);
  scale(0.5);
  boss();
}

//===================================================
// gère les interactions clavier
//===================================================
void keyPressed() {
}

//===================================================
// gère les interactions souris
//===================================================
void mouseMoved() {
  centreX = mouseX;

}
