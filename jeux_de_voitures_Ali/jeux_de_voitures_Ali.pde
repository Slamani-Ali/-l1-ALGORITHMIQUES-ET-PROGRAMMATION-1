int score = 0;
boolean gameOver = false;
int meilleurScore = 0;
/////////////////////////////////le trotoire/////////////////////////////////////////////////
Trotoir[] trotoire1 = new Trotoir[100];
Trotoir[] trotoire2 = new Trotoir[100];
Trotoir[] trotoire3 = new Trotoir[100];
Trotoir[] trotoire4 = new Trotoir[100];
Trotoir[] trotoire5 = new Trotoir[100];

////////////////////////////////les voitures/////////////////////////////////////////////////
//***les couleurs***//
float A, B, C, D;

Voiture[] voitures1 = new Voiture[3];
Voiture[] voitures2 = new Voiture[3];
Voiture[] voitures3 = new Voiture[3];
Voiture[] voitures4 = new Voiture[4];
Voiture[] voitures5 = new Voiture[3];
Voiture[] voitures6 = new Voiture[4];
//////////////////////la voitue a manipuler////////////////////////////////////////////////////
Voiture1 voiture;
////////////////////////////////////////////////////////////////////////////////////////////////
void setup() {
  size(600, 600);

  ////////////////////////////le trotoire///////////////////////////////////////////////////////
  for (int i = 0; i < trotoire1.length; i++) {
    trotoire1[i] = new Trotoir(width/7, i *20, 1, color(255), 8);
  }
  for (int i = 0; i < trotoire2.length; i++) {
    trotoire2[i] = new Trotoir(2*width/7, i *20, 1, color(255), 8);
  }
  for (int i = 0; i < trotoire2.length; i++) {
    trotoire3[i] = new Trotoir(3*width/7, i *20, 1, color(255), 8);
  }
  for (int i = 0; i < trotoire2.length; i++) {
    trotoire4[i] = new Trotoir(4*width/7, i *20, 1, color(255), 8);
  }
  for (int i = 0; i < trotoire2.length; i++) {
    trotoire5[i] = new Trotoir(5*width/7, i *20, 1, color(255), 8);
  }

  ////////////////////////////////////les voitures////////////////////////////////////////////////////
  A=random(0, 63);
  B=random(63, 126);
  C=random(126, 189);
  D=random(189, 255);

  for (int i = 0; i < voitures1.length; i++) {
    voitures1[i] = new Voiture(width/12, i*height/5, random(0.80, 1.5), color(A, B), random(width/40, width/25), random(height/20, height/40));
  }
  for (int i = 0; i < voitures2.length; i++) {
    voitures2[i] = new Voiture(5*width/24, i*height/7, random(0.55, 2), color( B, D), random(width/40, width/30), random(height/20, height/30));
  }
  for (int i = 0; i < voitures3.length; i++) {
    voitures3[i] = new Voiture(17*width/48, i*height/6, random(1, 2.25), color(C, A), random(width/40, width/25), random(height/20, height/50));
  }
  for (int i = 0; i < voitures4.length; i++) {
    voitures4[i] = new Voiture(6*width/12, i*height/2, random(1, 2), color(A, B, C), random(width/40, width/25), random(height/20, height/30));
  }
  for (int i = 0; i < voitures5.length; i++) {
    voitures5[i] = new Voiture(31*width/48, i*height/5, random(1, 1.5), color(B, C, D), random(width/40, width/30), random(height/15, height/45));
  }
  for (int i = 0; i < voitures6.length; i++) {
    voitures6[i] = new Voiture(19*width/24, i*height/4, random(1, 1.5), color(C, D, A), random(width/40, width/20), random(height/15, height/50));
  }
  ////////////////////////la voiture a manipuler///////////////////////////////////////////////////////////////////////////////////
  voiture = new Voiture1(width/4, height-25, random(1, 5), color(255, 0, 0), width/30, width/15);
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}

void draw() {
  if (!gameOver) {
    background(170, 165, 165);

    /////////////////////////////////////le trotoire//////////////////////////////////////////////////////////////////////////////
    for (int i = 0; i < trotoire1.length; i++) {
      trotoire1[i].dessiner();
      trotoire1[i].bouger();
    }
    for (int i = 0; i < trotoire2.length; i++) {
      trotoire2[i].dessiner();
      trotoire2[i].bouger();
    }
    for (int i = 0; i < trotoire3.length; i++) {
      trotoire3[i].dessiner();
      trotoire3[i].bouger();
    }
    for (int i = 0; i < trotoire4.length; i++) {
      trotoire4[i].dessiner();
      trotoire4[i].bouger();
    }
    for (int i = 0; i < trotoire5.length; i++) {
      trotoire5[i].dessiner();
      trotoire5[i].bouger();
    }

    fill(255);
    rectMode(CORNER);
    rect(width-width/7, 1, width /6, height);
    fill(0, 225, 0);
    rect(width-width/6.5, 1, width/50, height);
    rect(0, 1, width/50, height);

    /////////////////////////////////les voitures////////////////////////////////////////////////////////////////////////////////////

    for (int i = 0; i < voitures1.length; i++) {
      voitures1[i].dessiner();
      voitures1[i].bouger();
      voitures1[i].verifierCollision(voiture);
    }
    for (int i = 0; i < voitures2.length; i++) {
      voitures2[i].dessiner();
      voitures2[i].bouger();
      voitures2[i].verifierCollision(voiture);
    }
    for (int i = 0; i < voitures3.length; i++) {
      voitures3[i].dessiner();
      voitures3[i].bouger();
      voitures3[i].verifierCollision(voiture);
    }
    for (int i = 0; i < voitures4.length; i++) {
      voitures4[i].dessiner();
      voitures4[i].bouger();
      voitures4[i].verifierCollision(voiture);
    }
    for (int i = 0; i < voitures5.length; i++) {
      voitures5[i].dessiner();
      voitures5[i].bouger();
      voitures5[i].verifierCollision(voiture);
    }
    for (int i = 0; i < voitures6.length; i++) {
      voitures6[i].dessiner();
      voitures6[i].bouger();
      voitures6[i].verifierCollision(voiture);
    }


    //////////////////////////////////la voitu a manipuler/////////////////////////////////////
    voiture.dessiner();
    voiture.bouger();
    voiture.incrementScore();
    //////////////////////////////le contacte et collision/////////////////////////////////////////////////////
    afficherScore();
  } else {
    afficherGameOver();
  }
}
void afficherScore() {
  fill(255);
  textSize(20);
  textAlign(LEFT, TOP);
  text("Score: " + score, 10, 10);
}

boolean contact(float xDeLaVoiturePrincipale, float yDeLaVoiturePrincipale, float xDesVoiture, float yDesVoitures) {
  if (dist(xDeLaVoiturePrincipale, yDeLaVoiturePrincipale, xDesVoiture, yDesVoitures) <width/25) {
    return true;
  } else {
    return false;
  }
}
void afficherGameOver() {
  // Fond avec une couleur solide
  fill(0, 0, 0, 10); // Noir
  rect(0, 0, 2*width, 2*height);

  // Mettre à jour le meilleur score si nécessaire
  if (score > meilleurScore) {
    meilleurScore = score;
  }

  // Ou utilisez une couleur plus vive
  // fill(50, 50, 150); // Bleu foncé

  // Texte Game Over
  fill(255, 0, 0); // Rouge
  textSize(width/10);
  textAlign(CENTER, CENTER);
  text("Game Over !", width/2, height/2 - 70);

  // Score final
  fill(255); // Blanc
  textSize(width/20);
  text("Score final : " + score, width/2, height/2 + 80);

  fill(255); // rouge
  textSize(width/20);
  text("Meilleur score : " + meilleurScore, width/2, height/2 + 20);

  fill(255); // blanc
  // Message pour recommencer (clignotant)
  if (frameCount % 60 < 30) {
    textSize(width/30);
    text("Appuyez sur ESPACE pour recommencer", width/2, height/2 + 160);
  }
}
void reinitialiserJeu() {
  score = 0;
  gameOver = false;

  // Réinitialisez la position de la voiture principale
  voiture = new Voiture1(width / 4, height - 25, random(1, 5), color(255, 0, 0), width /30, width/15);

  // Réinitialisez les positions des autres voitures si nécessaire
  for (int i = 0; i < voitures1.length; i++) {
    voitures1[i] = new Voiture(width/12, i*height/5, random(0.80, 1.5), color(random(255), random(255)), random(width/40, width/25), random(height/20, height/40));
    // Répétez pour voitures2, voitures3...
  }

  loop();
}
void keyPressed() {
  if (gameOver && key == ' ') {
    reinitialiserJeu();
  }
}
