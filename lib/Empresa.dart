import 'package:atividade_mock/Funcionario.dart';

class Empresa{
  
  List<Funcionario> funcionarios = new List.filled(1, new Funcionario("", 18, ""));

  Funcionario getFuncionario(){
    return funcionarios.elementAt(0);
  }
}