import 'convertir_binario.dart';
import 'dart:math';

class Difernecial {
  List<String> binariosString;

  Difernecial(this.binariosString);

//!Diferncial
  List<int> difernacial() {
    List<int> lista = ConvertirBinario.convertiraNumero(binariosString);
    for (int i = 0; i < lista.length; i++) {
      if (i == 0 && lista[i] == 0) {
        lista[i] = 0;
      } else if (i == 0 && lista[i] == 1) {
        lista[i] = 1;
      } else if (lista.last == 1 && lista[i] == 1) {
       lista[i] = 1;
      } else if (lista.last  == 0 && lista[i] == 0) {
       lista[i] = 0;
      } else if (lista.last == 0 && lista[i] == 1) {
         lista[i] = 1;
      } else if (lista.last == 1 && lista[i] == 0) {
         lista[i] = 0;
      }
    }
    return lista;
  }
}
