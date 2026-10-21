
import 'package:flutter/material.dart';

void main() => runApp(const AplicacionEjercicio());

class AplicacionEjercicio extends StatelessWidget {
  const AplicacionEjercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sesion 6 - Leer errores de layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sesion 6: Leer errores de layout',
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                Icons.warning_amber,
                color: Colors.orange,
                size: 32,
              ),
              SizedBox(width: 8),

              // Correccion: limitar el ancho del texto
              Expanded(
                child: Text(
                  'Precio total: S/ 1,250.00 '
                  '(incluye IGV y descuentos)',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
