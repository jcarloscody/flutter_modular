import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// class CategoriaPage extends StatelessWidget {
//   const CategoriaPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('CATEGORIA'),
//       ),
//       body: Center(
//         child: Text(Modular.args?.data ?? 'semmm'),
//       ),
//     );
//   }
// }

class CategoriaPage extends StatefulWidget {
  String? categoria;
  final String? cat2;
  CategoriaPage({Key? key, required this.cat2})
      : categoria = Modular.args?.data,
        super(key: key);

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState extends State<CategoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CATEGORIA'),
      ),
      body: Center(
        child: Text(widget.categoria ?? ''),
      ),
    );
  }
}
