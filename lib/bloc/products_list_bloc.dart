import 'dart:async';
import 'package:rxdart/rxdart.dart';
import '../models/produtc_model.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class ProductsListBloc {
  BehaviorSubject<List<Product>> _productCollection = new BehaviorSubject<List<Product>>();

  List<Product> _products;

  Stream <List<Product>> get productList => _productCollection.stream;

  void initialData() async {
    var inititalData =await rootBundle.loadString('data/productData.json');
    var decodedJson = jsonDecode(inititalData);
    _products =ProductModel.fromJson(decodedJson).products;

    _productCollection.sink.add(_products);
  }

  ProductsListBloc(){
    initialData();
  }

  void addProductToList(Product newProduct){
    _products.add(newProduct);
    _productCollection.sink.add(_products);
  }

  void dispose() {
    _productCollection.close();
  }
}

final productsListBloc =ProductsListBloc();