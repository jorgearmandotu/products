import 'package:flutter/material.dart';
import '../ui/widgets/search_bar.dart';

class App extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text(
          'Mercado',
          style:TextStyle(fontSize: 18.0, fontWeight:FontWeight.w600)
        ),
        leading: IconButton(
          icon: Icon(Icons.menu,
          color: Colors.grey,
          size: 40.0,),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_circle_outline,
          color: Colors.grey,
          size: 40.0,),
          onPressed: () {},
          ),
        ],
      ),
      body: SearchBar(),
    );
  }
}