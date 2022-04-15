import 'package:flutter/material.dart';
import 'package:preferencias_usuario/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Principal'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: drawersWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Modo oscuro'),
          Divider(),
          Text('Genero'),
          Divider(),
          Text('Nombre de Usuario'),
          Divider(),
        ],
      )
    );
  }
}

