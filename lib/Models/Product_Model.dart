class Product {
  final dynamic imageLink;
  final String name;
  final int price;
  final String description;
  Product(
      {required this.imageLink,
        required this.name,
        required this.price,
        required this.description});
  factory Product.fromJson(Map<String, dynamic> json, int index) {
    return Product(
        imageLink: json['data']['products'][index]['image'],
        name: json['data']['products'][index]['name'],
        price: json['data']['products'][index]['price'],
        description: json['data']['products'][index]['description']);
  }
}