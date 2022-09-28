import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_page.dart';

class CategoriaModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          //argumenot
          child: (contexto, argumentos) => CategoriaPage(cat2: argumentos.data),
        )
      ];
}
