class ConvertirBinario {
  String texto;

  ConvertirBinario({required this.texto});

  List<String> conversionBinario() {
    List<String> letras = texto.split("");
    List<String> numbers = [];
    for (int i = 0; i < letras.length; i++) {
      numbers.add(letras[i].codeUnitAt(0).toRadixString(2));
    }
    return completarBite(numbers);
  }

  List<String> completarBite(List<String> conBin) {
    for (int i = 0; i < conBin.length; i++) {
      if (conBin[i].length < 8) {
        conBin[i] = '0' + conBin[i];
        i--;
      }
    }
    return conBin;
  }

  static List<int> convertiraNumero(List<String> binariosString) {
    List<int> binariosNumber = [];
    for (int i = 0; i < binariosString.length; i++) {
      for (var j = 0; j < binariosString[i].length; j++) {
        binariosNumber.add(int.parse(binariosString[i][j]));
      }
    }
    return binariosNumber;
  }
}
