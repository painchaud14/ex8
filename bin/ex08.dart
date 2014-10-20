//inspiré de l'exercice_08 de Pierre-Olivier Cote
library ex08;
import 'modele.dart';

part 'variable.dart';

classerFn(var members) {
  print('Les prénoms');
  members.sort((x, y) => x['firstName'].compareTo(y['firstName']));
  for (var j in members) {
    print(j);

  }
}
//#1
classerLn(var members) {
  print('Les Noms de famille');
  members.sort((x, y) => x['lastName'].compareTo(y['lastName']));
  for (var j in members) {
    print(j);
  }
}
//
trouverLettre(var association, var individuelle) {
  print('');
  print('Trouver un Membre par sa Lettre: $individuelle');
  for (var i = 0; i < association.length; i++) {
    for (var k = 0; k < association[i]['members'].length; k++) {
      if (association[i]['members'][k]['lastName'][0] == individuelle) {
        print('Find member: ' + association[i]['members'][k]['lastName']);
      }
    }
  }
}

void main() {
//#1 (dans le main)
  print('#1 association par nom par prénom et par lettre');
  print('Association SG (1)');
  classerFn(associations[0]['members']);
  print('');
  print('Association AD (2)');
  classerLn(associations[1]['members']);
  trouverLettre(associations, 'S');
//#2(complet)
  var membresasso = [];
  var asso = [];
  var identifiant1 = new Membre('Philippe', 'Painchaud', 'ph@gmail.com');
  membresasso.add(identifiant1);
  var identifiant2 = new Membre('Georges', 'Tremblay', 'GT@gmail.com');
  membresasso.add(identifiant2);
  var identifiant3 = new Membre('Simon', 'Boivin', 'SM@gmail.com');
  membresasso.add(identifiant3);
  var identifiant4 = new Membre('Jacques', 'Chicoyne', 'JC@gmail.com');
  membresasso.add(identifiant4);
  var identifiant5 = new Membre('Charles', 'Bélanger', 'CH@hotmail.com');
  membresasso.add(identifiant5);
  var identifiant6 = new Membre('Antoine', 'Mordret', 'AM@hotmail.com');
  membresasso.add(identifiant6);
  var identifiant7 = new Membre('Pierre', 'Andres', 'PA@hotmail.com');
  membresasso.add(identifiant7);
  var identifiant8 = new Membre('Nicolas', 'Tailleur', 'NT@hotmail.com');
  membresasso.add(identifiant8);
  var identifiant9 = new Membre('Jean', 'Roy', 'JR@hotmail.com');
  membresasso.add(identifiant9);
  var identifiant10 = new Membre('Jérémie', 'Lauzon', 'JL@hotmail.com');
  membresasso.add(identifiant10);

  var association2 = new Association('AD', 'Administration');
  asso.add(association2);
  for (var a = 0; a < membresasso.length; a++) {
    association2.ajoutmembre(membresasso[a]);
  }
  var association1 = new Association('SG', 'Science et Genie');
  var identifiant11 = new Membre('Marcel', 'Aubut', 'MA@gmail.com');
  membresasso.add(identifiant11);
//Fonction pour ajouter un membre dans une association
  association1.ajoutmembre(identifiant11);
//Mise a jour des membres
  association1.miseajourmembre('Michel', 'Aubut', 'MA@gmail.com');
  asso.add(association1);


  print('Question #2');
  print('Les Associations par rapport a leur membre');
  for (var a = 0; a < asso.length; a++) {
    print(asso[a].toString());
    asso[a].imprimemembre();
  }
}
