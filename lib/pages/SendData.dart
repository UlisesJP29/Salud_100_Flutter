import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:salud_100/pages/Modelo.dart';

Future<String?> senddata(Modelo models) async {
  print(models.toJson());
  var client = http.Client();
  try {
    var response = await client.post(
        Uri.parse('https://clasificadordeobesidad.herokuapp.com/api'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(models.toJson()));
// var response = await client.get(
//       Uri.parse('https://pokeapi.co/api/v2/pokemon/ditto'),
// );

    var decodedResponse = response.body;
    print(decodedResponse);

    return decodedResponse;
  } catch (e) {
    print(e);
    client.close();
  }
}
