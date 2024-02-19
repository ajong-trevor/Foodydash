class FoodModel {
  final String foodName;
  final String foodRestaurantName;
  final String foodPrice;
  final String foodImageUrl;
  final String foodDescrtiption;
  final int foodNumberOfstars;
  final String foodRestaurantId;

  const FoodModel({
    required this.foodDescrtiption,
    required this.foodRestaurantName,
    required this.foodImageUrl,
    required this.foodName,
    required this.foodPrice,
    required this.foodNumberOfstars,
    required this.foodRestaurantId,
  });
}
