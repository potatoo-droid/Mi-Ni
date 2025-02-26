class Food {
  final String name;
  final String image;
  final double price;

  Food({required this.name, required this.image, required this.price});
}

List<Food> foodList = [
  Food(name: "Burger", image: "assets/burger.jpg", price: 5.99),
  Food(name: "Pizza", image: "assets/pizza.jpg", price: 7.99),
  Food(name: "Sushi", image: "assets/sushi.jpg", price: 12.99),
  Food(name: "Pasta", image: "assets/pasta.jpg", price: 8.49),
];