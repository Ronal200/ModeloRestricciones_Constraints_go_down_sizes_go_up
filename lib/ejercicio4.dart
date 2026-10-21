
  import 'package:flutter/material.dart';

  void main() => runApp(const AplicacionEjercicio());

  class AplicacionEjercicio extends StatelessWidget {
    const AplicacionEjercicio({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sesión 6 - Corregir restricciones infinitas',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
          ),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Sesión 6: Corregir restricciones infinitas',
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 220,
                      height: 180,
                      child: ListView(
                        children: const [
                          ListTile(
                            title: Text('Elemento A'),
                          ),
                          ListTile(
                            title: Text('Elemento B'),
                          ),
                          ListTile(
                            title: Text('Elemento C'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),  
            ],
          ),
        ),
      );
    }
  }
