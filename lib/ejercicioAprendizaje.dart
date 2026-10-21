import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: ActividadSesion6(),
));

class ActividadSesion6 extends StatelessWidget {
  const ActividadSesion6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sesión 6: diagnóstico de layout')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Actividad: analizar y corregir errores comunes de layout',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'La fila siguiente evita el overflow horizontal usando Expanded '
              'y TextOverflow.ellipsis.',
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const Icon(Icons.shopping_cart, size: 32),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'Precio total: S/ 1,250.00 (incluye IGV y descuentos)',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Ver'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Contenido largo dentro de un scroll para evitar overflow vertical:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ...List.generate(
              8,
              (i) => Card(
                child: ListTile(
                  leading: const Icon(Icons.check_circle_outline),
                  title: Text('Caso de diagnóstico ${i + 1}'),
                  subtitle: const Text(
                    'Revisar restricciones, tamaño y posición del widget.',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Para completar la actividad: provoca un overflow en una copia, '
              'registra el error, corrígelo y compara el resultado.',
            ),
          ],
        ),
      ),
    );
  }
}
