import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_module.dart';
import 'package:flutter_modular_example/app/produto/produto_module.dart';
import 'package:flutter_modular_example/app/splash/splash_page.dart';

class AppModule extends Module {
  //são nossas dependencias
  @override
  List<Bind<Object>> get binds => super.binds;

//aqui temos nossas rotas, as rotas podem levar para uma pagina ou podem levar para outros modulos que de lá serão direcionados a paginas
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (contexto, argumentos) => SplashPage()),
        ModuleRoute('/categoria', module: CategoriaModule()),
        ModuleRoute('/produto', module: ProdutoModule()),
      ];
}
