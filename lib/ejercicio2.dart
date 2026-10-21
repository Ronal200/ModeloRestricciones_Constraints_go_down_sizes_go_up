
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
          title: const Text('Ejercicio 2: Tight vs. Loose'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '1. Restricción Tight: 100 × 100',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(
                    width: 100,
                    height: 100,
                  ),
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: const Text(
                      '100 × 100',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                '2. Restricción Loose: máximo 300 × 300',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                    maxHeight: 300,
                  ),
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: const Text(
                      '50 × 50',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                '3. Ancho Tight y altura Loose',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 50,
                    maxWidth: 50,
                    maxHeight: 200,
                  ),
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: const Text(
                      '50 × 50',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),
              const Text(
                'Conclusión: las restricciones del padre '
                'limitan el tamaño que puede tener el hijo.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
