import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences? _prefs;

  static String _name = '';
  static bool _modooscuro = false;
  static int _genero = 1;


  static Future init()async{
    _prefs = await SharedPreferences?.getInstance();
  }

  static String get name {
    return _prefs?.getString('name') ?? _name; 
  }

  static set name (String name){
    _name = name;
    _prefs?.setString('name', name);
  }

  static bool get isDark {
    return _prefs?.getBool('modooscuro') ?? _modooscuro;

  }
  static set isDark (bool value){
    _modooscuro = value;
    _prefs?.setBool('modooscuro', value);
  }

   static int get genero {
    return _prefs?.getInt('genero') ?? _genero;

  }
  static set genero (int value){
    _genero = value;
    _prefs?.setInt('genero', value);
  }
}