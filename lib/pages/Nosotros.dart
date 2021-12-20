import 'package:flutter/material.dart';

class Nosotros extends StatelessWidget {
  const Nosotros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 10.0,
        right: 10.0,
      ),
      child: info1(),
    );
  }
}

Card info1() {
  return Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 30),
        const ListTile(
          title: Text(
            'Salud 100',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Poppins-SemiBold',
            ),
          ),
          subtitle: Text(
            "La obesidad es una enfermedad crónica de alta prevalencia en México y en la mayoría de los países del mundo.",
            style: TextStyle(
              color: Color.fromRGBO(46, 193, 172, 1),
              fontSize: 14,
              fontFamily: 'Poppins-SemiBold',
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 15.0,
            right: 10.0,
          ),
          child: Text(
            "Teniendo en cuenta esto, nosotros hemos decidido crear una aplicación movil donde las personas puedan ver si tienen un problema de sobrepeso para poder atenderlo a tiempo.",
            style: TextStyle(
              color: Color.fromRGBO(46, 193, 172, 1),
              fontSize: 14,
              fontFamily: 'Poppins-SemiBold',
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 15.0,
            right: 10.0,
          ),
          child: Text(
            "Los datos ingresados en esta aplicación son enviados a un modelos de Machine Learning en la nube. Este modelo da una presición de 95% de efectividad, lo cual garantiza un resultado asegurado y de confianza para nuestros usuarios.",
            style: TextStyle(
              color: Color.fromRGBO(46, 193, 172, 1),
              fontSize: 14,
              fontFamily: 'Poppins-SemiBold',
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 15.0,
            right: 10.0,
          ),
          child: Text(
            "Si tienes mas dudas y nos sabes qué es lo que sigue al tener tu resultado, te recomendamos ir con un experto del área de la salud.",
            style: TextStyle(
              color: Color.fromRGBO(46, 193, 172, 1),
              fontSize: 14,
              fontFamily: 'Poppins-SemiBold',
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 18),
            Text(
              "ATTE. El equipo de Salud 100.",
              style: TextStyle(
                color: Color.fromRGBO(46, 193, 172, 1),
                fontSize: 14,
                fontFamily: 'Poppins-SemiBold',
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ),
    color: Color.fromRGBO(0, 0, 0, 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}
