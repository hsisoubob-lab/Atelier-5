
import 'dart:io';

class NombreNegatifException implements Exception {
  final String message;

  NombreNegatifException(this.message);

  @override
  String toString() => message;
}

void verifierNombre(int nombre) {
  if (nombre < 0) {
    throw NombreNegatifException(
      "Erreur : le nombre ne doit pas être négatif."
    );
  }

  int carre = nombre * nombre;
  print("Le carré de $nombre est $carre.");
}

void main() {
  try {
    stdout.write("Entrez un nombre entier : ");
    String? saisie = stdin.readLineSync();

    int nombre = int.parse(saisie!);

    verifierNombre(nombre);
  } on NombreNegatifException catch (e) {
    print(e);
  } on FormatException {
    print("Erreur : veuillez entrer un nombre entier valide.");
  } finally {
    print("Fin d'opération");
  }
}
