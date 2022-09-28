import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SPLAHS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/categoria');
                Modular.to.pushNamed('/categoria', arguments: 'xxxxxxxx');
              },
              child: const Text('Texto'),
            ),
            TextButton(
              child: const Text('produto'),
              onPressed: () {
                // Navigator.pushNamed(context, '/categoria');
                Modular.to.pushNamed(
                  '/produto/produtoK/x',
                );
              },
            ),
            TextButton(
              child: const Text('produto query param'),
              onPressed: () {
                // Navigator.pushNamed(context, '/categoria');
                Modular.to.pushNamed(
                  '/produto/d?id=3',
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('aqui'),
        onPressed: () => Navigator.of(context).pushNamed('/categoria'),
      ),
    );
  }
}
