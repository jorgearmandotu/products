import 'package:flutter/material.dart';
import 'products_list.dart';

class SearchBar extends StatelessWidget {
  
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    final _screenWidth = _screenSize.width;
    final _screenHeigth =_screenSize.height;
    
    return StreamBuilder<int>(
      initialData: 0,
      builder: (context, snapshot){
        return Container(
          width: _screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search: ',
                  counterText: '',
                  icon: Icon(Icons.search)
                ),
              ),
              ProductsList(),
            ],
          ),
        );
      },
    );
  }
}