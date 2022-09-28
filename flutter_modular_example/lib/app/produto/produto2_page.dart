import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Produto2Page extends StatelessWidget {
  final String? p;
  const Produto2Page({Key? key, required this.p}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [Text(Modular.args?.queryParams['id'] ?? 'sem nome')],
      ),
    );
  }
}
