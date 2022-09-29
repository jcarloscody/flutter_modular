import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';

class CategoriaController implements Disposable {
  PrecoModel precoModel;
  CategoriaController(this.precoModel) {
    print('Categoria Model $hashCode');
  }

  @override
  void dispose() {}
}
