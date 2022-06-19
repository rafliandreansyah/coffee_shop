enum Size { REGULAR, MEDIUM, LARGE }

class Product {
  String id;
  String productName;
  String productDescription;
  String productImg;
  double price;
  Size size;
  List<String>? composition;

  Product({
    required this.id,
    required this.productName,
    required this.productDescription,
    required this.productImg,
    required this.price,
    this.size = Size.REGULAR,
  });
}
