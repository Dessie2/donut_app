import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        ///icono
        leading: Icon(Icons.menu, color:Colors.grey[800]),
        //icono de la derecha
        actions:[
          Padding(
            padding: const EdgeInsets.only(right:24.0),
            child: Icon(Icons.person),
          )
        ]
      ),
      body: const Column(
        children: [
          //Texto principal
          //Pestaña o tabbar
          //Contenido
          //Carito
        ]
      ),
    );
  }
}