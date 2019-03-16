import 'package:flutter/material.dart';
import '../../models/produtc_model.dart';
import '../../bloc/products_list_bloc.dart';

class ProductsList extends StatelessWidget {


  Widget build(BuildContext context) {
    final _screenSize =MediaQuery.of(context).size;
    final _screenWidth = _screenSize.width;

    return StreamBuilder<List<Product>>(
      stream: productsListBloc.productList,
      builder: (context, snapshot){
        return Container(
          width: _screenWidth,
          child: Column(
            children: <Widget>[
              !snapshot.hasData
              ? CircularProgressIndicator()
              :SizedBox(
                height: _screenSize.height*0.5,
                child: ListView.builder(
                  itemCount: snapshot.data.length,
                  onPressed: ,
                  itemBuilder: (BuildContext context, int index ){
                    return Row(
                      children: <Widget>[
                        Text(snapshot.data[index].nombre,),
                        Text(' -> '),
                        Text(snapshot.data[index].unidad),
                        Text(' -> '),
                        Text(snapshot.data[index].presentacion),
                      ], 
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
      );
  }
}

class  ProductListFront extends StatelessWidget {

  final Product productModel;
  ProductListFront({this.productModel});

  Widget build(BuildContext context){

    return Text(productModel.nombre);
  }

  /*Widget build(BuildContext context) {
    
    return ListView.builder(
    itemBuilder: (BuildContext context, int index){
      return Text(productModel.nombre);
      },
    );
  }*/

}