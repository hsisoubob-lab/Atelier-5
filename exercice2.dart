
import 'dart:io';

void main() {
  try {
    stdout.write("Entrez votre âge : ");
    String? texte = stdin.readLineSync();

    int age = int.parse(texte!);

    print("Votre âge est : $age");
  } on FormatException {
    print("Erreur : veuillez saisir un âge valide.");
  } finally {
    print("Fin d'opération");
  }
}
