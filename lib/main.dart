import 'package:flutter/material.dart';
import 'package:gestion_celluleeglise/pages/Acceuil/acceuilPage.dart';



void main() {
  runApp(GestionCellule());
}

class GestionCellule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestion Cellule',
      home: AcceuilPage(),
    );

  }

}