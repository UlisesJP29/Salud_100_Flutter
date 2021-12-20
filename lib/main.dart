import 'package:flutter/material.dart';
import 'package:salud_100/pages/Preguntas.dart';
import 'package:salud_100/pages/Nosotros.dart';
import 'package:salud_100/pages/Home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 0;
  void paginaCuestionario() {
    setState(() {
      _paginaActual = 1;
    });
  }

  List<Widget> _tituloPaginas = [
    Text(
      "Salud 100",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 36,
        fontFamily: 'Roboto',
        color: Color.fromRGBO(62, 151, 139, 1),
      ),
    ),
    Text(
      "Cuestionario",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 36,
        fontFamily: 'Roboto',
        color: Color.fromRGBO(62, 151, 139, 1),
      ),
    ),
    Text(
      "Nosotros",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 36,
        fontFamily: 'Roboto',
        color: Color.fromRGBO(62, 151, 139, 1),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> _paginas = [
      PaginaHome(onbottonclick: paginaCuestionario),
      PreguntasPage(),
      Nosotros(),
    ];
    const appTitle = 'Cuestionario';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(140.0),
          child: AppBar(
            toolbarHeight: 120,
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              children: [
                Image.asset(
                  'assets/icono2.png',
                  height: 60,
                ),
                SizedBox(
                  width: 10,
                ),
                _tituloPaginas[_paginaActual],
              ],
            ),
          ),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Color.fromRGBO(46, 193, 172, 1),
          unselectedItemColor: Color.fromRGBO(210, 230, 3, 1),
          iconSize: 25,
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_sharp),
              label: "Cuestionario",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              label: "Nosotros",
            ),
          ],
        ),
      ),
    );
  }
}
