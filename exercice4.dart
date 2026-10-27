
class MotdepasseCourtException implements Exception {
  String message;

  MotdepasseCourtException(this.message);

  @override
  String toString() {
    return message;
  }
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException(
      "Le mot de passe doit contenir au moins 6 caractères."
    );
  }

  print("Mot de passe valide.");
}

void main() {
  try {
    verifierMotdepasse("abc");
  } on MotdepasseCourtException catch (e) {
    print("Erreur : $e");
  }
}
