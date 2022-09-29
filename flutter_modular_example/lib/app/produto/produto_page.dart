import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';

class ProdutoPage extends StatelessWidget {
  final String p;
  const ProdutoPage({Key? key, required this.p}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          Text(Modular.args?.params['nome'] ?? 'sem nome'),
          TextButton(
              onPressed: (() {
                Modular.get<PrecoModel>();
              }),
              child: Text('Get Prexo'))
        ],
      ),
    );
  }
}
