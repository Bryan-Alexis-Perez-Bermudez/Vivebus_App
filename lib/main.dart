import 'package:flutter/material.dart';

void main() {
  runApp(VivebusApp());
} //funcion principal

class VivebusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Vivebus',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: PaginaPrincipal());
  } //widget
} //clase Vivebus App widgets sin estado

class PaginaPrincipal extends StatefulWidget {
  PaginaPrincipal({Key? key}) : super(key: key);
  @override
  _PaginaPrincipalState createState() => _PaginaPrincipalState();
} //widget con estado

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  List<String> images = [
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
    "assets/4.jpg",
    "assets/5.jpg",
    "assets/6.jpg",
    "assets/7.jpg",
    "assets/8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tutorial GridView"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 8,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
