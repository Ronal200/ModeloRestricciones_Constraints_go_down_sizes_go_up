
import 'package:flutter/material.dart';

void main() => runApp(const AplicacionEjercicio());

class AplicacionEjercicio extends StatelessWidget {
  const AplicacionEjercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sesión 6 - Elegir Expanded o scroll',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sesión 6: Elegir Expanded o scroll',
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '1. Comentarios ilimitados: usar scroll / ListView.',
              ),
              const Divider(),
              Row(
                children: [
                  const Icon(Icons.person),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      '2. Texto variable: Expanded + ellipsis',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const Divider(),
              const Text(
                '3. Formulario largo: SingleChildScrollView',
              ),
              const Divider(),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Aceptar'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Cancelar'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
