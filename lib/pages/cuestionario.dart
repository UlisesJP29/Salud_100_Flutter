import 'package:flutter/material.dart';
import 'package:salud_100/pages/DetalleDeResultados.dart';

class PaginaCuestionario extends StatefulWidget {
  const PaginaCuestionario({Key? key}) : super(key: key);

  @override
  _PaginaCuestionarioState createState() => _PaginaCuestionarioState();
}

class _PaginaCuestionarioState extends State<PaginaCuestionario> {
  @override
  Widget build(BuildContext context) {
    int? dropGenero = 0;
    var items = [
      {'index': 0, 'value': '0-999'},
      {'index': 1, 'value': '1000-1999'},
      {'index': 2, 'value': '2000-2999'},
      {'index': 3, 'value': 'mayor de 3000'},
    ];
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 30.0,
        right: 30.0,
      ),
      margin: EdgeInsets.only(bottom: 30.0),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Genero",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  DropdownButton(
                    value: dropGenero,
                    items: [
                      DropdownMenuItem(
                        child: Text("First Item"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("Second Item"),
                        value: 2,
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {
                          setState(() {
                            value = true;
                          });
                        },
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Femenino",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Masculino",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Edad",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Ingresa tu Edad",
                ),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Altura",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Ingresa tu Altura en cm",
                ),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Peso",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Ingresa tu Peso en Kilogramos",
                ),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Tienes Familiares con Obesidad?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Si",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "No",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Comes alimentos altos en calorías con frecuencia?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Si",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "No",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Sueles comer verduras en tus comidas?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Nunca",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "A veces",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Siempre",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Cuántas comidas principales tienes al día?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Entre 1 y 2",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Tres",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Más de tres",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Comes algún alimento entre comidas?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "No",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "A veces",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Frecuentemente",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Siempre",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Fumas",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Si",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "No",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Cuánta agua bebes a diario?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Menos de un litro",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Entre 1 y 2 L",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "o	Más de 2 L",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Controlas las calorías que comes a diario?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Si",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "No",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Con qué frecuencia realizas actividad física?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "No tengo",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "1 o 2 días",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "2 o 4 días",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "4 o 5 días",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Cuánto tiempo utilizas dispositivos tecnológicos como celular, videojuegos, televisión, computadora y otros?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "0–2 horas",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "3–5 horas",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Más de 5 horas",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Con qué frecuencia bebes alcohol?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "No bebo",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "A veces",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Frecuentemente",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Siempre",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿Qué transporte utilizas habitualmente?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Automóvil",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Moto",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Bicicleta",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Transporte Público",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (i) {},
                        shape: CircleBorder(),
                      ),
                      Text(
                        "Camino",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 151, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(210, 230, 3, 1),
                  shadowColor: Colors.black,
                  elevation: 2,
                  textStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                  minimumSize: Size.fromHeight(30),
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "Enviar",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Poppins-SemiBold',
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 30),
            ],
          )
        ],
      ),
    );
  }
}
