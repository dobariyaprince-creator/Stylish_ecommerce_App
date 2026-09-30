class ProductApiModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final String image;
  ProductApiModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });
  factory ProductApiModel.fromJson(Map<String, dynamic> json) {
    return ProductApiModel(
      id: json["id"]??0,
      title: json["title"]??'No title',
      description: json["description"]??'No description',
      price: (json["price"]as num?)?.toDouble() ?? 0.0,
      image: json["image"] ?? 'No image',
    );
  }
}
