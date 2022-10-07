import 'package:atividade_mock/Empresa.dart';
import 'package:atividade_mock/Funcionario.dart';

class FuncionarioService{
  Empresa empresa;

  FuncionarioService(this.empresa);

  Funcionario listarFuncionario(){
    return empresa.getFuncionario();
  }
}