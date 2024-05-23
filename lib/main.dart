import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación de Noticias',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Navegación con Tabs'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.article),
                text: 'Noticias',
              ),
              Tab(
                icon: Icon(Icons.message),
                text: 'Mensajes',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Perfil',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NoticiasTab(),
            MensajesTab(),
            PerfilTab(),
          ],
        ),
      ),
    );
  }
}

class NoticiasTab extends StatelessWidget {
  const NoticiasTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Pestaña de Noticias',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class MensajesTab extends StatelessWidget {
  const MensajesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Pestaña de Mensajes',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
// 
class PerfilTab extends StatelessWidget {
  const PerfilTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Pestaña de Perfil',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
