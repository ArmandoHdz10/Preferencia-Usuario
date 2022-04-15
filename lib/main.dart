import 'package:flutter/material.dart';
import 'package:preferencias_usuario/Screens/screens.dart';
import 'package:preferencias_usuario/Screens/settins_screen.dart';
import 'package:preferencias_usuario/shere_preference/preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: await_only_futures
  await Preferences.init;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
     debugShowCheckedModeBanner: false,
     initialRoute: 'home',
     routes: {
       'home':(_) => const  HomeScreen(),
       'config': (_) => const SettinsScreen()
     },
    );
  }
}