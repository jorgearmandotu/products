

class ProductModel {
  List<Product> products;

  ProductModel({this.products});

  ProductModel.fromJson(Map<String, dynamic> json){
    if(json['products'] != null){
      products = new List<Product>();
      json['products'].forEach((v){
        products.add(new Product.fromJson(v));
      });
    }
  }
}

class Product {
  int id;
  String nombre;
  String unidad;
  String categoria;
  String presentacion;

  Product(
    {
      this.id,
      this.nombre,
      this.unidad,
      this.categoria,
      this.presentacion,
    });

  Product.fromJson(Map<String, dynamic> json){
    id = json['id'];
    nombre = json['nombre'];
    unidad =json['unidad'];
    categoria = json['categoria'];
    presentacion = json['presentacion'];
  }
}