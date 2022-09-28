import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/produto/produto2_page.dart';
import 'package:flutter_modular_example/app/produto/produto_page.dart';
//fu-m3-module

class ProdutoModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    //path param
    //param obrigatorio
    ChildRoute(
      '/:nome/x',
      child: (contexto, argumentos) =>
          ProdutoPage(p: argumentos.params['nome']),
    ),
    //query param =?
    ChildRoute(
      '/d',
      child: (contexto, argumentos) =>
          Produto2Page(p: argumentos.queryParams['id']),
    ),
  ];
}
