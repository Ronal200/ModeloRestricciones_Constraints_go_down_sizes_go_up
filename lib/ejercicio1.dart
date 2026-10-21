import 'package:flutter/material.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejercicio 1: Restricciones'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 400,
                height: 50,
                color: Colors.green,
              ),
            ),
          ),
        ),
      ),
    );
  }
}