//*************************La Classes De La Voiture Principale******************************//
class Voiture1 {
  //////////////////////////////////attributs///////////////////////////////////////////////
  float xVoiture, yVoiture;
  float vitesse;
  color couleur;
  float taille1;
  float taille2;

  ///////////////////////////////constructeurs//////////////////////////////////////////////

  Voiture1(float xVoiture, float yVoiture, float vitesse, color couleur, float taille1, float taille2) {
    this.xVoiture = xVoiture;
    this.yVoiture = yVoiture;
    this.vitesse = vitesse;
    this.couleur = couleur;
    this.taille1 = taille1;
    this.taille2 = taille2;
  }

  //////////////////////////////////méthodes///////////////////////////////////////////////
  void incrementScore() {
    score += 10;
  }
  
  
  // dessiner la voiture principale:
  void dessiner() {
    rectMode(CENTER);
    fill(couleur);
    rect(xVoiture, yVoiture, taille1, taille2, 10);
  }
  // faire bouger la voiture principale:
  void bouger() {
    if (key == CODED) {
      if (keyCode == UP) {
        yVoiture=yVoiture-1;
      } else if (keyCode == DOWN) {
        yVoiture=yVoiture+1;
      } else if (keyCode==LEFT) {
        xVoiture=xVoiture-1;
      } else if (keyCode == RIGHT) {
        xVoiture=xVoiture+1;
      } else {
        xVoiture=-xVoiture;
      }
    }
    if (xVoiture==width-width/5 ) {
      xVoiture=xVoiture-1;
    } else if (xVoiture==width/20) {
      xVoiture=xVoiture+1;
    } else if (yVoiture==height-height/40) {
      yVoiture=yVoiture-1;
    } else if (yVoiture==height/40) {
      yVoiture=yVoiture+1;
    }
  }
}

/////THE CODING TRAIN
