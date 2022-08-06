import 'convertir_binario.dart';

class Bipolar {
  List<String> binariosString;

  Bipolar(this.binariosString);

//!Bipolar positivo NRZ-L
  List<int> bipolarPositivoNRZ_L() {
    List<int> lista = ConvertirBinario.convertiraNumero(binariosString);
    int aux = 2;
    for (var i = 0; i < lista.length; i++) {
      if (lista[i] == 1) {
        aux++;
      }
      if (lista[i] == 1 && aux % 2 == 0) {
        lista[i] = -1;
      }
    }
    return lista;
  }

//!Bipolar negativo NRZ-L
  List<int> bipolarNegativoNRZ_L() {
    List<int> lista = ConvertirBinario.convertiraNumero(binariosString);
    int aux = 2;
    for (var i = 0; i < lista.length; i++) {
      if (lista[i] == 0) {
        aux++;
      }
      if (lista[i] == 0 && aux % 2 == 0) {
        lista[i] = -1;
      } else if (lista[i] == 0) {
        lista[i] = 1;
      } else if (lista[i] == 1) {
        lista[i] = 0;
      }
    }
    return lista;
  }

  //!Bipolar positivo RZ-L
  List<int> bipolarPositivoRZ_L() {
    List<int> lista = ConvertirBinario.convertiraNumero(binariosString);
    List<int> auxiliar = [];
    int aux = 2;
    for (var i = 0; i < lista.length; i++) {
      if (lista[i] == 1) {
        aux++;
      }
      if (lista[i] == 1 && aux % 2 == 0) {
        auxiliar.addAll([-1, 0]);
      } else if (lista[i] == 1 && aux % 2 != 0) {
        auxiliar.addAll([1, 0]);
      } else if (lista[i] == 0) {
        auxiliar.addAll([0, 0]);
      }
    }
    return auxiliar;
  }

//!Bipolar negativos RZ-L
  List<int> bipolarNegativoRZ_L() {
    List<int> lista = ConvertirBinario.convertiraNumero(binariosString);
    List<int> auxiliar = [];
    int aux = 2;
    for (var i = 0; i < lista.length; i++) {
      if (lista[i] == 0) {
        aux++;
      }
      if (lista[i] == 0 && aux % 2 == 0) {
        auxiliar.addAll([-1, 0]);
      } else if (lista[i] == 0) {
         auxiliar.addAll([1, 0]);
      } else if (lista[i] == 1) {
         auxiliar.addAll([0, 0]);
      }
    }
    return auxiliar;
  }
}
