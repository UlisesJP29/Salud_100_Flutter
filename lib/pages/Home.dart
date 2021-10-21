import 'package:flutter/material.dart';

class PaginaHome extends StatelessWidget {
  const PaginaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 30.0,
      ),
      //margin: EdgeInsets.only(top: 30.0, left: 30.0),
      child: ListView(
        children: [
          Text(
            "Home",
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
