import 'package:flutter/material.dart';

class PaginaCuestionario extends StatelessWidget {
  const PaginaCuestionario({Key? key}) : super(key: key);

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
                        onChanged: (i) {},
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
                  minimumSize: Size.fromHeight(50),
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
