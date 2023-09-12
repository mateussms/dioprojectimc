
import 'package:dioprojectimc/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Calcula IMC', () {
    expect(Pessoa("Mateus", 111.5, 1.67).messageIMC(), equals("O paciente Mateus encontra-se com o IMC 33.383233532934135, que caracteriza: Obesidade Grau I"));
  });
}
