void main() {
  try {
    int resultat = 12 ~/ 0;
    print("Résultat : $resultat");
  } catch (e) {
    print("Division impossible");
  }
}
