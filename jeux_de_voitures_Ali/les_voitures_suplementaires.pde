//***********************La Classe Des Voitures ***************************//
class Voiture {
  /////////////////////////// attributs////////////////////////////////////
  float xDesVoitures, yDesVoitures;
  float vitesse;
  color couleur;
  float taille1;
  float taille2;
  boolean toucher =true;
  ////////////////////////// constructeurs ////////////////////////////////
  Voiture(float xDesVoitures, float yDesVoitures, float vitesse, color couleur, float taille1, float taille2) {
    this.xDesVoitures = xDesVoitures;
    this.yDesVoitures = yDesVoitures;
    this.vitesse = vitesse;
    this.couleur = couleur;
    this.taille1 = taille1;
    this.taille2=taille2;
  }

  //////////////////////////// méthodes////////////////////////////////////
  // dessiner les voitures:
  void dessiner() {
    rectMode(CENTER);
    fill(couleur);
    rect(xDesVoitures, yDesVoitures, taille1, taille2, 2);
  }
  // faire bouger les voitures:
  void bouger() {
    yDesVoitures = (yDesVoitures + vitesse) % width;
  }
  void verifierCollision(Voiture1 v) {
    toucher = contact( v.xVoiture, v.yVoiture, xDesVoitures, yDesVoitures);
    if (toucher && !gameOver) {
        gameOver = true;
    }
  }
}
//////////////////////////////////////////////////////////////////////
