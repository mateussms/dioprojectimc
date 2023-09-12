import 'package:dioprojectimc/classes/pessoa.dart';
import 'package:dioprojectimc/classes/util.dart';

void execute(){
  List<Pessoa> pessoas = [];
  
  do{
    String nome   = Util.readLineString("Informe o nome do paciente:");
    double peso   = Util.readLineDouble("Informe o peso do paciente em Kg:");
    double altura = Util.readLineDouble("Informe a altura do paciente em Metros:");
    pessoas.add(Pessoa(nome,peso,altura));
  }while(Util.readLineBoolean("Deseja incluir mais pacientes (S/N):", "S"));

  print("Listar o resultado dos pacientes:");
  for(Pessoa pessoa in pessoas){
    print(pessoa.messageIMC());
  }
}