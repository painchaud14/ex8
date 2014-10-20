//Inspiré de Dzenanr: association members
class Membre {
  String prenom;
  String nomfamille;
  String courriel;
  var clubmembre = [];

  Membre(String prenom, String nomFamille, String courriel) {
    this.prenom = prenom;
    this.nomfamille = nomFamille;
    this.courriel = courriel;
  }

  String toString() {
    return ' {\n' 'MEMBRE\n' 'prenom: ${prenom}\n' 'nomfamille: ${nomfamille}\n'
        'courriel: ${courriel}\n' '}\n';
  }

  ajouter(Association association) {
    clubmembre.add(association);
  }

  enlever(Association association) {
    for (var a = 0; a < clubmembre.length; a++) {
      if (clubmembre[a].nom == association.nom) {
        clubmembre.removeAt(a);
      }
    }
    imprimeclubmembre() {
      for (var a = 0; a < clubmembre.length; a++) {
        print(clubmembre[a].toString());
      }
    }
  }
}

class Association {
  String nom;
  String info;
  var membres = [];

  Association(String nom, String info) {
    this.nom = nom;
    this.info = info;
  }

  String toString() {
    return ' {\n' 'Association\n' 'nom: ${nom}\n' 'info: ${info}\n' '}\n';
  }

  imprimemembre() {
    for (var a = 0; a < membres.length; a++) {
      print(membres[a].toString());
    }
  }

  ajoutmembre(Membre memb) {
    membres.add(memb);
    memb.ajouter(this);
  }

  miseajourmembre(String nom, String prenom, String courriel) {
    for (var a = 0; a < membres.length; a++) {
      if (membres[a].prenom == prenom && membres[a].nom == nom) {
        membres[a].courriel = courriel;
      }
    }
    enlevermembre(String courriel) {
      for (var a = 0; a < membres.length; a++) {
        if (membres[a].courriel == courriel) {
          membres[a].removeclubmembre(this);
          membres.removeAt(a);

        }
      }
    }
  }
}
