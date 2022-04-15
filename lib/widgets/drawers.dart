import 'package:flutter/material.dart';

// ignore: camel_case_types
class drawersWidget extends StatelessWidget {
  const drawersWidget({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          const _DrawerHeader(),
          ListTile(
            leading: const   Icon(Icons.home),
            title: const  Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'home');

            },
          ),
          ListTile(
            leading: const   Icon(Icons.access_alarm),
            title: const  Text('Alarma'),
            onTap: () {

            },
          ),
          ListTile(
            leading: const   Icon(Icons.settings),
            title: const  Text('Configuracion'),
            onTap: () {
              // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'config');
            },
          )

        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const  BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/fondo.jpg'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}