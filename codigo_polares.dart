import 'convertir_binario.dart';

class Polar {
  List<String> binariosString;

  Polar(this.binariosString);

  //!polar NRZ-L
  List<int> polarNRZ_L() {
    List<int> lista = ConvertirBinario.convertiraNumero(binariosString);
    for (int i = 0; i < lista.length; i++) {
      if (lista[i] == 0) {
        lista[i] = -1;
      }
    }
    return lista;
  }

  //!polar RZ-L
  List<int> polarRZ_L() {
    List<int> lista = ConvertirBinario.convertiraNumero(binariosString);
    List<int> aux = [];
    for (int i = 0; i < lista.length; i++) {
      if (lista[i] == 0) {
        aux.addAll([-1, 0]);
      }else if(lista[i] == 1){
        aux.addAll([1, 0]);
      }
    }
    return aux;
  }
}
