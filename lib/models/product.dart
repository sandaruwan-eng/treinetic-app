class Product {
  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.images,
    required this.rating,
    required this.description,
  });

  String id;
  String price;
  String title;
  String images;
  double rating;
  String description;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        price: json["price"],
        title: json["title"],
        images: json["images"],
        rating: json["rating"].toDouble(),
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "title": title,
        "images": images,
        "rating": rating,
        "description": description,
      };
}
