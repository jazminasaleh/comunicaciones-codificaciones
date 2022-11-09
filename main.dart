import 'codigo_bipolares.dart';
import 'codigo_polares.dart';
import 'codigo_unipolar.dart';
import 'convertir_binario.dart';
import 'diferencial.dart';
import 'manchester.dart';

void main(List<String> args) {
  var a = new ConvertirBinario(texto: 'b');

  var unipolar = new CodigoUnipolar(a.conversionBinario());
  print('UNIPOLAR POSITIVO');
  print(unipolar.unipolarPositivoNRZ_L());
  print(unipolar.unipolarPositivoRZ_L());
  print('UNIPOLAR NEGATIVO');
  print(unipolar.unipolarNegativoNRZ_L());
  print(unipolar.unipolarNegativoRZ_L());

  var polar = new Polar(a.conversionBinario());
  print('POLAR NRZ-L');
  print(polar.polarNRZ_L());
  print('POLAR RZ-L');
  print(polar.polarRZ_L());

  var bipolar = new Bipolar(a.conversionBinario());
  print('BIPOLAR POSITIVO');
  print(bipolar.bipolarPositivoNRZ_L());
  print(bipolar.bipolarPositivoRZ_L());
  print('BIPOLAR NEGATIVO');
  print(bipolar.bipolarNegativoNRZ_L());
  print(bipolar.bipolarNegativoRZ_L());

  var man = new Manchester(a.conversionBinario());
  print('MANCHESTER');
  print(man.manchester());
  print('MANCHESTER DIFERNCIAL');
  print(man.manchesterDifernacial());

  var dif = new Difernecial(a.conversionBinario());
  print('Diferncial');
  print(dif.difernacial());
}
