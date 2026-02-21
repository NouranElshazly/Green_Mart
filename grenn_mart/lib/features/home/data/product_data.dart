class ProductModel {
  final String name;
  final String image;
  final String price;
  final String weight;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.weight,
  });
}

class CartItemModel {
  final String name;
  final String image;
  final double price;
  final String weight;

  CartItemModel({
    required this.name,
    required this.image,
    required this.price,
    required this.weight,
  });
}

List<ProductModel> offers = [
  ProductModel(
    name: "Banana",
    image: "assets/images/banana.png",
    price: "\$1.99",
    weight: "1KG",
  ),
  ProductModel(
    name: "Apple",
    image: "assets/images/apple.png",
    price: "\$2.99",
    weight: "1KG",
  ),
  ProductModel(
    name: "Bell Pepper Red",
    image: "assets/images/Bell Pepper Red.png",
    price: "\$1.49",
    weight: "1KG",
  ),
  ProductModel(
    name: "Ginger",
    image: "assets/images/ginger.png",
    price: "\$2.49",
    weight: "1KG",
  ),
  ProductModel(
    name: "Apple Juice",
    image: "assets/images/apple_juice.png",
    price: "\$0.99",
    weight: "1KG",
  ),
  ProductModel(
    name: "Diet Coke",
    image: "assets/images/deitcola.png",
    price: "\$0.99",
    weight: "1KG",
  ),
];

List<ProductModel> favourite = [
  ProductModel(
    name: "Banana",
    image: "assets/images/banana.png",
    price: "\$1.99",
    weight: "1KG",
  ),
  ProductModel(
    name: "Apple",
    image: "assets/images/apple.png",
    price: "\$2.99",
    weight: "1KG",
  ),
  ProductModel(
    name: "Bell Pepper Red",
    image: "assets/images/Bell Pepper Red.png",
    price: "\$1.49",
    weight: "1KG",
  ),
  ProductModel(
    name: "Ginger",
    image: "assets/images/ginger.png",
    price: "\$2.49",
    weight: "1KG",
  ),
  ProductModel(
    name: "Apple Juice",
    image: "assets/images/apple_juice.png",
    price: "\$0.99",
    weight: "1KG",
  ),
  ProductModel(
    name: "Diet Coke",
    image: "assets/images/deitcola.png",
    price: "\$0.99",
    weight: "1KG",
  ),
];

List<CartItemModel> cartItems = [
  CartItemModel(
    name: "Bell Pepper Red",
    image: "assets/images/Bell Pepper Red.png",
    price: 4.99,
    weight: "1kg",
  ),
  CartItemModel(
    name: "Organic Bananas",
    image: "assets/images/banana.png",
    price: 3.00,
    weight: "12kg, Price",
  ),
  CartItemModel(
    name: "Ginger",
    image: "assets/images/ginger.png",
    price: 2.99,
    weight: "250gm, Price",
  ),
  CartItemModel(
    name: "Diet Coke",
    image: "assets/images/deitcola.png",
    price: 1.99,
    weight: "1L, Price",
  ),
  CartItemModel(
    name: "Ginger",
    image: "assets/images/ginger.png",
    price: 2.99,
    weight: "250gm, Price",
  ),
  CartItemModel(
    name: "Diet Coke",
    image: "assets/images/deitcola.png",
    price: 1.99,
    weight: "1L, Price",
  ),
];
