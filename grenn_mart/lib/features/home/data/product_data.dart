import 'package:flutter/material.dart';

class ProductModel {
  final String name;
  final String image;
  final String price;
  final String weight;
  final String id;
  final String tagKey;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.weight,
    required this.id,
    required this.tagKey,
  });
}

class CartItemModel {
  final String name;
  final String image;
  final double price;
  final String weight;
  final String tagKey;

  CartItemModel({
    required this.name,
    required this.image,
    required this.price,
    required this.weight,
    required this.tagKey,
  });
}

List<ProductModel> offers = [
  ProductModel(
    id: "1",
    name: "Banana",
    image: "assets/images/banana.png",
    tagKey: UniqueKey().toString(),
    price: "\$1.99",
    weight: "1KG",
  ),
  ProductModel(
    id: "2",
    tagKey: UniqueKey().toString(),

    name: "Apple",
    image: "assets/images/apple.png",
    price: "\$2.99",
    weight: "1KG",
  ),
  ProductModel(
    id: "3",
    tagKey: UniqueKey().toString(),

    name: "Bell Pepper Red",
    image: "assets/images/Bell Pepper Red.png",
    price: "\$1.49",
    weight: "1KG",
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "4",
    name: "Ginger",
    image: "assets/images/ginger.png",
    price: "\$2.49",
    weight: "1KG",
  ),
  ProductModel(
    id: "5",
    tagKey: UniqueKey().toString(),

    name: "Apple Juice",
    image: "assets/images/apple_juice.png",
    price: "\$0.99",
    weight: "1KG",
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "6",
    name: "Diet Coke",
    image: "assets/images/deitcola.png",
    price: "\$0.99",
    weight: "1KG",
  ),
];

List<ProductModel> favourite = [
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "1",
    name: "Banana",
    image: "assets/images/banana.png",
    price: "\$1.99",
    weight: "1KG",
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "2",
    name: "Apple",
    image: "assets/images/apple.png",
    price: "\$2.99",
    weight: "1KG",
  ),
  ProductModel(
    id: "3",
    tagKey: UniqueKey().toString(),

    name: "Bell Pepper Red",
    image: "assets/images/Bell Pepper Red.png",
    price: "\$1.49",
    weight: "1KG",
  ),
  ProductModel(
    id: "4",
    tagKey: UniqueKey().toString(),

    name: "Ginger",
    image: "assets/images/ginger.png",
    price: "\$2.49",
    weight: "1KG",
  ),
  ProductModel(
    id: "5",
    tagKey: UniqueKey().toString(),

    name: "Apple Juice",
    image: "assets/images/apple_juice.png",
    price: "\$0.99",
    weight: "1KG",
  ),
  ProductModel(
    id: "6",
    tagKey: UniqueKey().toString(),

    name: "Diet Coke",
    image: "assets/images/deitcola.png",
    price: "\$0.99",
    weight: "1KG",
  ),
];

List<CartItemModel> cartItems = [
  CartItemModel(
    name: "Bell Pepper Red",
    tagKey: UniqueKey().toString(),

    image: "assets/images/Bell Pepper Red.png",
    price: 4.99,
    weight: "1kg",
  ),
  CartItemModel(
    name: "Organic Bananas",
    tagKey: UniqueKey().toString(),

    image: "assets/images/banana.png",
    price: 3.00,
    weight: "12kg, Price",
  ),
  CartItemModel(
    name: "Ginger",
    tagKey: UniqueKey().toString(),

    image: "assets/images/ginger.png",
    price: 2.99,
    weight: "250gm, Price",
  ),
  CartItemModel(
    name: "Diet Coke",
    tagKey: UniqueKey().toString(),

    image: "assets/images/deitcola.png",
    price: 1.99,
    weight: "1L, Price",
  ),
  CartItemModel(
    name: "Ginger",
    tagKey: UniqueKey().toString(),

    image: "assets/images/ginger.png",
    price: 2.99,
    weight: "250gm, Price",
  ),
  CartItemModel(
    name: "Diet Coke",
    tagKey: UniqueKey().toString(),

    image: "assets/images/deitcola.png",
    price: 1.99,
    weight: "1L, Price",
  ),
];
