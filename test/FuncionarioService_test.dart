import 'package:atividade_mock/Empresa.dart';
import 'package:atividade_mock/Funcionario.dart';
import 'package:atividade_mock/FuncionarioService.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([Empresa])
void main() {
  test('deveria buscar o funcionario 0', () {
    when(Empresa().getFuncionario()).thenReturn(new Funcionario("Gustavo", 75, "Psicólogo"));

    FuncionarioService funcionarioService = new FuncionarioService(Empresa());
    Funcionario funcionarioEsperado = new Funcionario("Gustavo", 75, "Psicólogo");
    Funcionario funcionarioVeridico = funcionarioService.listarFuncionario();

    expect(funcionarioEsperado, funcionarioVeridico);
  });
}