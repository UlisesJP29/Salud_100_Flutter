import 'package:flutter/material.dart';
import 'package:salud_100/pages/DetalleDeResultados.dart';

import 'Modelo.dart';
import 'SendData.dart';

class PreguntasPage extends StatefulWidget {
  PreguntasPage({Key? key}) : super(key: key);

  @override
  _PreguntasPageState createState() => _PreguntasPageState();
}

class _PreguntasPageState extends State<PreguntasPage> {
  int dropdownvalue1 = 0;
  var items = [
    {'index': 0, 'value': 'Femenino'},
    {'index': 1, 'value': 'Masculino'},
  ];
// Familiar con sobrepeso
  int dropdownvalue2 = 0;
  var items2 = [
    {'index': 0, 'value': 'Si'},
    {'index': 1, 'value': 'No'},
  ];
// ¿Comes alimentos altos en calorías con frecuencia?
  int dropdownvalue3 = 0;
  var items3 = [
    {'index': 0, 'value': 'Si'},
    {'index': 1, 'value': 'No'},
  ];
// 	¿Sueles comer verduras en tus comidas?
  int dropdownvalue4 = 0;
  var items4 = [
    {'index': 0, 'value': 'Nunca'},
    {'index': 1, 'value': 'Algunas veces'},
    {'index': 2, 'value': 'Siempre'},
  ];
//	¿cuántas comidas principales tienes al día?
  int dropdownvalue5 = 0;
  var items5 = [
    {'index': 0, 'value': 'Entre 1 y 2'},
    {'index': 1, 'value': 'Tres'},
    {'index': 2, 'value': 'Mas de Tres'},
  ];
//	¿comes algún alimento entre comidas?
  int dropdownvalue6 = 0;
  var items6 = [
    {'index': 0, 'value': 'No'},
    {'index': 1, 'value': 'Algunas Veces'},
    {'index': 2, 'value': 'Frecuentemente'},
    {'index': 3, 'value': 'Siempre'},
  ];
  // 	¿fumas?
  int dropdownvalue7 = 0;
  var items7 = [
    {'index': 0, 'value': 'Si'},
    {'index': 1, 'value': 'No'},
  ];
// 	¿Cuánta agua bebes a diario?
  int dropdownvalue8 = 0;
  var items8 = [
    {'index': 0, 'value': 'Menos de un Litro'},
    {'index': 1, 'value': 'Entre 1 y 2 L'},
    {'index': 2, 'value': 'Mas de 2L'},
  ];
  //	¿Controlas las calorías que comes a diario?
  int dropdownvalue9 = 0;
  var items9 = [
    {'index': 0, 'value': 'Si'},
    {'index': 1, 'value': 'No'},
  ];
// 	¿Con qué frecuencia realizas actividad física?
  int dropdownvalue10 = 0;
  var items10 = [
    {'index': 0, 'value': 'No realizo  ejercicio'},
    {'index': 1, 'value': '1 o 2 dias'},
    {'index': 2, 'value': '2 o 4 dias'},
    {'index': 3, 'value': '4 o 5 dias'},
  ];
  // ¿Cuánto tiempo utilizas dispositivos tecnológicos como celular, videojuegos, televisión, computadora y otros?
  int dropdownvalue11 = 0;
  var items11 = [
    {'index': 0, 'value': '0 a 2 horas'},
    {'index': 1, 'value': '3 a 5 horas'},
    {'index': 2, 'value': 'Mas de 5 horas'},
  ];
  // ¿Con qué frecuencia bebes alcohol?
  int dropdownvalue12 = 0;
  var items12 = [
    {'index': 0, 'value': 'No bebo'},
    {'index': 1, 'value': 'Algunas veces'},
    {'index': 2, 'value': 'Frecuentemente'},
    {'index': 3, 'value': 'Siempre'},
  ];
  //	¿Qué transporte utilizas habitualmente?
  int dropdownvalue13 = 0;
  var items13 = [
    {'index': 0, 'value': 'Automóvil'},
    {'index': 1, 'value': 'Moto'},
    {'index': 2, 'value': 'Bicicleta'},
    {'index': 3, 'value': 'Transporte'},
    {'index': 4, 'value': 'Caminando'},
  ];

  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              DropdownButton<int>(
                value: dropdownvalue1,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items.map((item) {
                  return DropdownMenuItem(
                      value: int.parse(item['index'].toString()),
                      child: Text(item['value'].toString()));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue1 = newValue!;
                  });
                },
                elevation: 8,
                style: TextStyle(
                  color: Color.fromRGBO(62, 151, 139, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
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
                controller: myController1,
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
                controller: myController2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Ingresa tu Altura en Metros",
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
                controller: myController3,
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
                "¿Familiar con sobrepeso?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              DropdownButton<int>(
                value: dropdownvalue2,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items2.map((item) {
                  return DropdownMenuItem(
                      value: int.parse(item['index'].toString()),
                      child: Text(item['value'].toString()));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue2 = newValue!;
                  });
                },
                elevation: 8,
                style: TextStyle(
                  color: Color.fromRGBO(62, 151, 139, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
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
              DropdownButton<int>(
                value: dropdownvalue3,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items3.map((item) {
                  return DropdownMenuItem(
                      value: int.parse(item['index'].toString()),
                      child: Text(item['value'].toString()));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue3 = newValue!;
                  });
                },
                elevation: 8,
                style: TextStyle(
                  color: Color.fromRGBO(62, 151, 139, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
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
              DropdownButton<int>(
                value: dropdownvalue4,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items4.map((item) {
                  return DropdownMenuItem(
                      value: int.parse(item['index'].toString()),
                      child: Text(item['value'].toString()));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue4 = newValue!;
                  });
                },
                elevation: 8,
                style: TextStyle(
                  color: Color.fromRGBO(62, 151, 139, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿cuántas comidas principales tienes al día?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              DropdownButton<int>(
                value: dropdownvalue5,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items5.map((item) {
                  return DropdownMenuItem(
                      value: int.parse(item['index'].toString()),
                      child: Text(item['value'].toString()));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue5 = newValue!;
                  });
                },
                elevation: 8,
                style: TextStyle(
                  color: Color.fromRGBO(62, 151, 139, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿comes algún alimento entre comidas?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              DropdownButton<int>(
                value: dropdownvalue6,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items6.map((item) {
                  return DropdownMenuItem(
                      value: int.parse(item['index'].toString()),
                      child: Text(item['value'].toString()));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue6 = newValue!;
                  });
                },
                elevation: 8,
                style: TextStyle(
                  color: Color.fromRGBO(62, 151, 139, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "¿fumas?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins-SemiBold',
                ),
                textAlign: TextAlign.start,
              ),
              DropdownButton<int>(
                value: dropdownvalue7,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items7.map((item) {
                  return DropdownMenuItem(
                      value: int.parse(item['index'].toString()),
                      child: Text(item['value'].toString()));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue7 = newValue!;
                  });
                },
                elevation: 8,
                style: TextStyle(
                  color: Color.fromRGBO(62, 151, 139, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
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
              DropdownButton<int>(
                value: dropdownvalue8,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items8.map((item) {
                  return DropdownMenuItem(
                      value: int.parse(item['index'].toString()),
                      child: Text(item['value'].toString()));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue8 = newValue!;
                  });
                },
                elevation: 8,
                style: TextStyle(
                  color: Color.fromRGBO(62, 151, 139, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
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
              DropdownButton<int>(
                value: dropdownvalue9,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items9.map((item) {
                  return DropdownMenuItem(
                      value: int.parse(item['index'].toString()),
                      child: Text(item['value'].toString()));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue9 = newValue!;
                  });
                },
                elevation: 8,
                style: TextStyle(
                  color: Color.fromRGBO(62, 151, 139, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
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
              DropdownButton<int>(
                value: dropdownvalue10,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items10.map((item) {
                  return DropdownMenuItem(
                      value: int.parse(item['index'].toString()),
                      child: Text(item['value'].toString()));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue10 = newValue!;
                  });
                },
                elevation: 8,
                style: TextStyle(
                  color: Color.fromRGBO(62, 151, 139, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
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
              DropdownButton<int>(
                value: dropdownvalue11,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items11.map((item) {
                  return DropdownMenuItem(
                      value: int.parse(item['index'].toString()),
                      child: Text(item['value'].toString()));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue11 = newValue!;
                  });
                },
                elevation: 8,
                style: TextStyle(
                  color: Color.fromRGBO(62, 151, 139, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
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
              DropdownButton<int>(
                value: dropdownvalue12,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items12.map((item) {
                  return DropdownMenuItem(
                      value: int.parse(item['index'].toString()),
                      child: Text(item['value'].toString()));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue12 = newValue!;
                  });
                },
                elevation: 8,
                style: TextStyle(
                  color: Color.fromRGBO(62, 151, 139, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
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
              DropdownButton<int>(
                value: dropdownvalue13,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items13.map((item) {
                  return DropdownMenuItem(
                      value: int.parse(item['index'].toString()),
                      child: Text(item['value'].toString()));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue13 = newValue!;
                  });
                },
                elevation: 8,
                style: TextStyle(
                  color: Color.fromRGBO(62, 151, 139, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
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
                onPressed: () async {
                  print('enviar datos');
                  Modelo modelo = Modelo(
                    gender: dropdownvalue1,
                    age: myController1.text,
                    height: myController2.text,
                    weight: myController3.text,
                    fhwo: dropdownvalue2,
                    favc: dropdownvalue3,
                    fcvc: dropdownvalue4,
                    ncp: dropdownvalue5,
                    caec: dropdownvalue6,
                    smoke: dropdownvalue7,
                    ch20: dropdownvalue8,
                    scc: dropdownvalue9,
                    faf: dropdownvalue10,
                    tue: dropdownvalue11,
                    calc: dropdownvalue12,
                    mtrans: dropdownvalue13,
                  );
                  //print(" la edad es $myController1");
                  String? enviar = await senddata(modelo);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return DetalleDeResultados(resultado: enviar);
                  }));
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ],
      ),
    );
  }
}
