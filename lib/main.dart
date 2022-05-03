import 'package:flutter/material.dart';
import 'package:perez/galeriadebusses.dart';

void main() {
  runApp(VivebusApp());
} //funcion principal

class VivebusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Vivebus V2',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: PaginaPrincipal());
  } //widget
} //clase Vivebus App widgets sin estado
