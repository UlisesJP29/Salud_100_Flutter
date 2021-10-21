import 'package:flutter/material.dart';

class PaginaResultados extends StatelessWidget {
  const PaginaResultados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 10.0,
        right: 10.0,
      ),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              title: Text(
                'Prueba 01',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                  child: const Text(
                    'Resultado final',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins-SemiBold',
                    ),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color.fromRGBO(210, 230, 3, 1),
                    side: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text(
                    'Sobrepeso 1',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins-SemiBold',
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 60),
                Icon(
                  Icons.arrow_forward_rounded,
                  size: 40,
                  color: Color.fromRGBO(46, 193, 172, 1),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        color: Color.fromRGBO(210, 230, 3, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
