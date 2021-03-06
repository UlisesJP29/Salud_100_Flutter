import 'package:flutter/material.dart';

class DetalleDeResultados extends StatelessWidget {
  const DetalleDeResultados({Key? key, required this.resultado})
      : super(key: key);
  final String? resultado;

  @override
  Widget build(BuildContext context) {
    print("el resultado es $resultado");
    dynamic cambioDeTipo = resultado;
    dynamic tipoPeso = "Peso";
    switch (cambioDeTipo) {
      case "0":
        {
          tipoPeso = "Bajo de peso";
        }
        break;

      case "1":
        {
          tipoPeso = "Peso normal";
        }
        break;
      case "2":
        {
          tipoPeso = "Sobrepeso 1";
        }
        break;
      case "3":
        {
          tipoPeso = "Sobrepeso 2";
        }
        break;
      case "4":
        {
          tipoPeso = "Obesidad 1";
        }
        break;
      case "5":
        {
          tipoPeso = "Obesidad 2";
        }
        break;
      case "6":
        {
          tipoPeso = "Obesidad 3";
        }
        break;

      default:
        {
          tipoPeso = "Contesta todas las Preguntas";
        }
        break;
    }
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          toolbarHeight: 130,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              Text(
                "Resultado",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 10.0,
            right: 10.0,
          ),
          child: ListView(
            children: [
              Column(children: [
                buildCard1(tipoPeso),
                buildCard2(tipoPeso, cambioDeTipo),
                buildCard3(),
              ])
            ],
          )),
    );
  }
}

Card buildCard1(String result) {
  return Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          title: Text(
            "Tu prueba da como resultado: ",
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Poppins-SemiBold',
              color: Colors.white,
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
            child: Text(
              "$result",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Poppins-SemiBold',
              ),
              textAlign: TextAlign.center,
            ),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Color.fromRGBO(210, 230, 3, 1),
              elevation: 10,
              shadowColor: Colors.black,
              shape: StadiumBorder(),
            ),
            onPressed: () {},
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
  );
}

Card buildCard2(String tipo, String valor) {
  String info = "animo";
  switch (valor) {
    case "0":
      {
        info =
            "Las personas con bajo peso generalmente no obtienen suficientes calor??as para alimentar el cuerpo. A menudo, tambi??n sufren de desnutrici??n. La desnutrici??n significa que no est?? obteniendo suficientes vitaminas y minerales de sus alimentos.";
      }
      break;

    case "1":
      {
        info = "Tienes un buen control en tu cuerpo, ??sigue as??!";
      }
      break;
    case "2":
      {
        info =
            "Al sobrepeso se le puede considerar preobesidad, si no se ponen las medidas oportunas para adelgazar y perder esos kilos de m??s. Someterse a una dieta para adelgazar es una cuesti??n casi obligatoria cuando tenemos un exceso de peso, sobre todo si se localiza en la zona de la cintura.";
      }
      break;
    case "3":
      {
        info =
            "Al sobrepeso se le puede considerar preobesidad, si no se ponen las medidas oportunas para adelgazar y perder esos kilos de m??s. Someterse a una dieta para adelgazar es una cuesti??n casi obligatoria cuando tenemos un exceso de peso, sobre todo si se localiza en la zona de la cintura.";
      }
      break;
    case "4":
      {
        info =
            "Si se tiene obesidad, lo m??s recomendable es acudir al m??dico y plantearle el problema. La obesidad no s??lo se produce por ingerir m??s calor??as de las que se gastan sino que tambi??n puede haber otras causas subyacentes como enfermedades (hipotiroidismo, diabetes, s??ndrome de Prader-Willi, etc).";
      }
      break;
    case "5":
      {
        info =
            "Si se tiene obesidad, lo m??s recomendable es acudir al m??dico y plantearle el problema. La obesidad no s??lo se produce por ingerir m??s calor??as de las que se gastan sino que tambi??n puede haber otras causas subyacentes como enfermedades (hipotiroidismo, diabetes, s??ndrome de Prader-Willi, etc).";
      }
      break;
    case "6":
      {
        info =
            "Si se tiene obesidad, lo m??s recomendable es acudir al m??dico y plantearle el problema. La obesidad no s??lo se produce por ingerir m??s calor??as de las que se gastan sino que tambi??n puede haber otras causas subyacentes como enfermedades (hipotiroidismo, diabetes, s??ndrome de Prader-Willi, etc).";
      }
      break;

    default:
      {
        info = "Hubo un problema en la app :c";
      }
      break;
  }
  return Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          title: Text(
            tipo,
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Poppins-SemiBold',
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            info,
            style: TextStyle(
              color: Color.fromRGBO(46, 193, 172, 1),
              fontSize: 14,
              fontFamily: 'Poppins-SemiBold',
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        const SizedBox(
          height: 20,
          width: 150,
        ),
      ],
    ),
    color: Colors.black,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}

Card buildCard3() {
  return Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          title: Text(
            "??Qu?? sigue?",
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Poppins-SemiBold',
              color: Color.fromRGBO(46, 193, 172, 1),
            ),
          ),
          subtitle: Text(
            'Te sugerimos que contactes a un personal de la salud. Siempre es mejor perder las dudas que tengamos si es el caso de querer bajar de peso o subir de peso.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Poppins-SemiBold',
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        const SizedBox(
          height: 20,
          width: 150,
        ),
      ],
    ), //210, 230, 3, 1
    color: Color.fromRGBO(210, 230, 3, 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}
