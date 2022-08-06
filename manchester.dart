import 'convertir_binario.dart';

class Manchester {
  List<String> binariosString;

  Manchester(this.binariosString);

//!Manchester
  List<int> manchester() {
    List<int> lista = ConvertirBinario.convertiraNumero(binariosString);
    List<int> aux = [];
    for (int i = 0; i < lista.length; i++) {
      if (lista[i] == 1) {
        aux.addAll([-1, 1]);
      } else if (lista[i] == 0) {
        aux.addAll([1, -1]);
      }
    }
    return aux;
  }

//!Manchester diferncial
  List<int> manchesterDifernacial() {
    List<int> lista = ConvertirBinario.convertiraNumero(binariosString);
    List<int> aux = [];
    for (int i = 0; i < lista.length; i++) {
      if (i == 0 && lista[i]==0) {
        aux.addAll([0, -1, 1]);
      }else if(i == 0 && lista[i]==1){
        aux.addAll([0, 1, -1]);
      }else if (lista[i] == 0 && aux.last == 1) {
        aux.addAll([-1, 1]);
      } else if (lista[i] == 0 && aux.last == -1) {
        aux.addAll([1, -1]);
      } else if (lista[i] == 1 && aux.last  == 1) {
        aux.addAll([1, -1]);
      } else if (lista[i] == 1 && aux.last == -1) {
        aux.addAll([-1, 1]);
      }
    }
    return aux;
  }
}
