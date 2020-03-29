import 'package:flutter/material.dart';


import 'dart:math';
import 'dart:ui';


class BotonesPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados()
              ],
            ) ,
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar()
    );
  }

  /*

   */

  Widget _botonesRedondeados(){
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonesRedondeados(Colors.blue, Icons.border_all, "General"),
            _crearBotonesRedondeados(Colors.purpleAccent, Icons.directions_bus, "Bus")
          ]
        ),
        TableRow(
          children: [
            _crearBotonesRedondeados(Colors.pinkAccent, Icons.shop, "Buy"),
            _crearBotonesRedondeados(Colors.orange, Icons.insert_drive_file, "File")
          ]
        ),
        TableRow(
          children: [
            _crearBotonesRedondeados(Colors.blueAccent, Icons.movie_filter, "Movie"),
            _crearBotonesRedondeados(Colors.green, Icons.cloud, "Grocery")
          ]
        )
        ,    TableRow(
          children: [
            _crearBotonesRedondeados(Colors.red, Icons.collections, "Photos"),
            _crearBotonesRedondeados(Colors.teal, Icons.help_outline, "General")
          ]
        )
      ]
    );

  }

  Widget _crearBotonesRedondeados( Color colorIcon, IconData icon, String titulo){
    return Container(
          margin: EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
              height: 180.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: colorIcon,
                    radius: 35.0,
                    child:Icon(icon, color: Colors.white, size: 30.0,),
                  ),
                  Text(titulo , style:  TextStyle(color: colorIcon)),
                  SizedBox(height: 5.0,)
                ],
              ),
      ),
            ),
          ),
    );
    
  }

  Widget _bottomNavigationBar(){
    return BottomNavigationBar(
        backgroundColor: Color.fromRGBO(55, 57,84, 1.0),
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Color.fromRGBO(116, 117, 156, 1.0)
        ,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today ),
            title: Container()
            //title: Text("hola")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart ),
            title: Container()  // si no quiero ponerle titulo  uso un container 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle ),
            title: Container()  // si no quiero ponerle titulo  uso un container 
          ),
        ]
      );

  }

  Widget _titulos(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Classify  transaction", style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold,)),
            SizedBox(height: 10.0,),
            Text("Classofy this transaction into a particular category ", style: TextStyle(color: Colors.white, fontSize: 18.0))
        ],)
      ),
    );

  }

  Widget _fondoApp(){
    final gradiente =Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6) ,
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 320.0,
        width: 320.0,
        decoration: BoxDecoration(
          //color: Colors.pink,
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 177, 1.0)
            ]
          )

        ),
      ),
    );
    

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
          ),

    ],);

  }

}