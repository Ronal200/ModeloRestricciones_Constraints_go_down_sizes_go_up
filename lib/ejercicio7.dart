
import 'package:flutter/material.dart';

void main() => runApp(const AplicacionEjercicio());

class AplicacionEjercicio extends StatelessWidget {
  const AplicacionEjercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sesion 6 - Prevenir overflow en perfil',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sesion 6: Prevenir overflow en perfil',
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nombre de estudiante con un nombre deliberadamente muy largo',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Ingenieria Informatica',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Biografia',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Estudiante interesado en desarrollo movil, '
                'interfaces, bases de datos y diseño adaptable. '
                'Este texto puede crecer sin desbordar porque '
                'la pantalla permite desplazamiento. '
                'Tambien tiene interes en aprender nuevas '
                'tecnologias y crear aplicaciones utiles.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
