//*************************La Classe Du Trotoire **************************//
class Trotoir {
  ////////////////////////// attributs////////////////////////////////////////
  float xTrotoire, yTrotoire;
  float vitesse;
  color couleur;
  float taille;

  ///////////////////////constructeurs//////////////////////////////////////////


  Trotoir(float xTrotoire, float yTrotoire, float vitesse, color couleur, float taille) {
    this.xTrotoire = xTrotoire;
    this.yTrotoire = yTrotoire;
    this.vitesse = vitesse;
    this.couleur = couleur;
    this.taille = taille;
  }

  //////////////////////// méthodes ////////////////////////////////////////////
  //dessiner le trotoire:
  void dessiner() {
    rectMode(CENTER);
    fill(couleur);
    for (int j =1; j<=5; j++) {
      rect(j*xTrotoire, yTrotoire, taille/2, taille *2);
      j++;
    }
  }
  // faire bouger le trotoire :
  void bouger() {
   yTrotoire = (yTrotoire + vitesse) % width;
  }
}
