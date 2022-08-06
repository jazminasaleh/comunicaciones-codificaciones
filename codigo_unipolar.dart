import 'convertir_binario.dart';

class CodigoUnipolar {
  List<String> binariosString;

  CodigoUnipolar(this.binariosString);

  //!Unipolar positivo NRZ-L
  List<int> unipolarPositivoNRZ_L() {
    return ConvertirBinario.convertiraNumero(binariosString);
  }

  //!Unipolar negativo NRZ-L
  List<int> unipolarNegativoNRZ_L() {
    List<int> lista = ConvertirBinario.convertiraNumero(binariosString);
    for (int i = 0; i < lista.length; i++) {
      if (lista[i] == 1) {
        lista[i] = -1;
      }
    }
    return lista;
  }

//!Unipolar positivo RZ-L
 List<int> unipolarPositivoRZ_L() {
    List<int> lista = ConvertirBinario.convertiraNumero(binariosString);
    List<int> aux = [];
    for (int i = 0; i < lista.length; i++) {
      if (lista[i] == 1) {
        aux.addAll([1, 0]);
      }else if(lista[i] == 0){
         aux.addAll([0, 0]);
      }
    }
    return aux;
  }

 //!Unipolar negativo RZ-L
  List<int> unipolarNegativoRZ_L() {
    List<int> lista = ConvertirBinario.convertiraNumero(binariosString);
    List<int> aux = [];
    for (int i = 0; i < lista.length; i++) {
      if (lista[i] == 1) {
        aux.addAll([-1, 0]);
      }else if(lista[i] == 0){
         aux.addAll([0, 0]);
      }
    }
    return aux;
  }
}
