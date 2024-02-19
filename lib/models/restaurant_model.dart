class RestaurantModel {
  final String id;
  final String name;
  final String imageUrl;
  final String location;
  final int star;

  RestaurantModel({
    required this.id,
    required this.location,
    required this.imageUrl,
    required this.name,
    required this.star,
  });
}
