class ProductModel {
  final String imageUrl;
  final String title;
  final String subtitle;
  final double price;
  bool isFavorite;

  ProductModel({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
    this.isFavorite = false,
  });
}
