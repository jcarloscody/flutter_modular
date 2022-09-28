import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_page.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';
import 'package:flutter_modular_example/app/produto/produto_module.dart';

class CategoriaModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          //argumentos
          child: (contexto, argumentos) => CategoriaPage(cat2: argumentos.data),
        ),
        ModuleRoute('/produto', module: ProdutoModule()),
      ];

  @override
  List<Bind<Object>> get binds => [
        Bind((i) => CategoriaController(i()), isLazy: true, isSingleton: true),
        Bind.lazySingleton((i) => PrecoModel()),
      ];
}
