class Pessoa {
  String _nome;
  double _peso;
  double _altura;

  Pessoa(this._nome, this._peso, this._altura);

  double retornaIMC(){
    return (_peso/(_altura * 2)).ceilToDouble();
  }

  String retornaClassificacao(){
    switch(retornaIMC()){
      case < 16.0:             return "Magreza grave";
      case  >= 16.0 && < 17.0: return "Magreza moderada";
      case  >= 17.0 && < 18.5: return "Magreza leve";
      case  >= 18.5 && < 25.0: return "Saudável";
      case  >= 25.0 && < 30.0: return "Sobrepeso";
      case  >= 30.0 && < 35.0: return "Obesidade Grau I";
      case  >= 35.0 && < 40.0: return "Obesidade Grau II (severa)";
      case  >= 40.0:           return "Obesidade Grau III (mórbida)";
      default:                 return "Faixa não identificada";
    }
  }

  String messageIMC(){
      return "O paciente ${_nome} encontra-se com o IMC ${retornaIMC()}, que caracteriza: ${retornaClassificacao()}";
  }
}