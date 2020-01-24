import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo =TextStyle(fontSize: 17,fontWeight: FontWeight.bold,);
  final estiloSubTitulo =TextStyle(fontSize: 15,color: Colors.grey);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _imagen(),
          _subTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto()

          ],
        )
      ),
    );
  }

  Widget _crearTexto(){
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 15.0),
        child: Text(
          "daSDA ASD DASN ASDASNAS DASDA asd asdfas asdfasdfasdf asdASa sdASDASA SDFASD FASDF ASD AS ASDASD ASDFASDFA A S A SDFASDFAS  ASDFASD ASDF ASDF A SDFASD FA SD FA SD FA SDFASDFAS DFAS DFASDF A S DF ASDFA SD FA S ASDFA S D",
          textAlign: TextAlign.justify,
          
          ),
      ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
            _accion(Icons.call,"CALL"),
            _accion(Icons.near_me,"ROUTE"),
            _accion(Icons.share,"SHARE"),
      ],); 
  }
  Widget _accion(IconData icon,String texto){
    return Column(
      children: <Widget>[
        Icon(icon,color: Colors.blue,size: 30.0, ),
        SizedBox(height:5.0),
        Text(texto,style: TextStyle(fontSize: 15.0,color: Colors.blue ),)
      ],
    );
  }

  Widget  _imagen(){
    return Image(
            image: NetworkImage("https://static.photocdn.pt/images/articles/2017/04/28/iStock-546424192.jpg"),
          );
  }
  Widget _subTitulo(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Lago ficticio de bosques morados",style: estiloTitulo, overflow: TextOverflow.ellipsis,),
                SizedBox(height: 7.0),
                Text("Lago del bosque perdido",style: estiloSubTitulo, overflow: TextOverflow.ellipsis)
              ],),
          ),
          Icon(Icons.star,size: 20.0,color: Colors.red,),
          Text("41",style: TextStyle(fontSize: 20.0),)
        ],
      ),
    );
  }


}