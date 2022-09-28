import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
        children: [Text(Modular.args?.params['nome'] ?? 'sem nome')],
      ),
    );
  }
}
