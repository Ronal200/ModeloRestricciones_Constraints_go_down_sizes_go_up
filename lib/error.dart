
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OverflowScreen(),
  ));
}

class OverflowScreen extends StatelessWidget {
  const OverflowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de Overflow'),
      ),
      body: Center(
        child: Row(
          children: [
            const Icon(Icons.shopping_cart, size: 40),
            const SizedBox(width: 10),
            const Text(
              'Precio total: S/ 1,250.00 '
              'incluye IGV, impuestos y descuentos especiales',
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
