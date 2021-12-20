import 'package:flutter/material.dart';

class PaginaHome extends StatefulWidget {
  final Function() onbottonclick;
  const PaginaHome({
    Key? key,
    required this.onbottonclick,
  }) : super(key: key);

  @override
  _PaginaHomeState createState() => _PaginaHomeState();
}

class _PaginaHomeState extends State<PaginaHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 10.0,
        right: 10.0,
      ),
      //margin: EdgeInsets.only(top: 30.0, left: 30.0),
      margin: EdgeInsets.only(bottom: 30.0),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              title: Text(
                'Cuestionario de Salud',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Realiza un cuestionario para saber como se encuentra tu cuerpo.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins-SemiBold',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 10.0,
                right: 10.0,
              ),
              child: TextButton(
                child: const Text(
                  '¡Vamos!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins-SemiBold',
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Color.fromRGBO(210, 230, 3, 1),
                  elevation: 10,
                  shadowColor: Colors.black,
                  shape: StadiumBorder(),
                ),
                onPressed: () {
                  widget.onbottonclick();
                },
              ),
            ),
            const SizedBox(
              height: 20,
              width: 150,
            ),
          ],
        ),
        color: Color.fromRGBO(46, 193, 172, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
