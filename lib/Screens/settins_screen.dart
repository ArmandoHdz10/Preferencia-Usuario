import 'package:flutter/material.dart';
import 'package:preferencias_usuario/shere_preference/preferences.dart';
import 'package:preferencias_usuario/widgets/widgets.dart';

class SettinsScreen extends StatefulWidget {
  //Todo manera extra de llamar las rutas de las pantallas de la app
  //  static const String routerName = 'Home';
  const SettinsScreen({Key? key}) : super(key: key);

  @override
  State<SettinsScreen> createState() => _SettinsScreenState();
}

class _SettinsScreenState extends State<SettinsScreen> {
  // bool darkmodo = Preferences.isDark;
  // int genero = 1;
  // String nombreU = 'Jose Armando';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Configuracion'),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer: const drawersWidget(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Ajustes',
                  style: TextStyle(fontSize: 54),
                ),
                const Divider(),
                SwitchListTile(
                    value: Preferences.isDark,
                    title: const Text('Modo Oscuro'),
                    onChanged: (value) {
                      Preferences.isDark = value;
                      setState(() {});
                    }),
                const Divider(),
                RadioListTile<int>(
                    value: 1,
                    groupValue: Preferences.genero,
                    title: const Text('Masculino'),
                    onChanged: (value) {
                      Preferences.genero = value ?? 1;
                      setState(() {});
                    }),
                const Divider(),
                RadioListTile<int>(
                    value: 2,
                    groupValue: Preferences.genero,
                    title: const Text('Femenino'),
                    onChanged: (value) {
                      Preferences.genero = value ?? 2;
                      setState(() {});
                    }),
                const Divider(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextFormField(
                    initialValue: Preferences.name,
                    onChanged: (value) {
                      Preferences.name = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                        labelText: 'Usuario', helperText: 'Nombre del usuario'),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
