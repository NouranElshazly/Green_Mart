import 'package:flutter/material.dart';
import 'package:grenn_mart/features/home/data/product_data.dart';

class CategoryModel {
  final String id;
  final String name;
  final String image;
  final Color backgroundColor;
  final List<ProductModel> products;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.backgroundColor,
    required this.products,
  });
}

List<CategoryModel> categories = [
  CategoryModel(
    id: "1",
    name: "Fresh Fruits\n& Vegetable",
    image: "assets/images/banana.png",
    backgroundColor: const Color(0xFFD4EDD4),
    products: [offers[0], offers[1], offers[2], offers[3]],
  ),
  CategoryModel(
    id: "2",
    name: "Cooking Oil\n& Ghee",
    image: "assets/images/ginger.png",
    backgroundColor: const Color(0xFFFFF3DC),
    products: [offers[3], offers[4]],
  ),
  CategoryModel(
    id: "3",
    name: "Meat & Fish",
    image: "assets/images/Bell Pepper Red.png",
    backgroundColor: const Color(0xFFFFE5E5),
    products: [offers[2], offers[3]],
  ),
  CategoryModel(
    id: "4",
    name: "Bakery & Snacks",
    image: "assets/images/apple.png",
    backgroundColor: const Color(0xFFF2E8FF),
    products: [offers[1], offers[4], offers[2]],
  ),
  CategoryModel(
    id: "5",
    name: "Dairy & Eggs",
    image: "assets/images/apple.png",
    backgroundColor: const Color(0xFFFFF9DC),
    products: [offers[0], offers[1], offers[2]],
  ),
  CategoryModel(
    id: "6",
    name: "Beverages",
    image: "assets/images/deitcola.png",
    backgroundColor: const Color(0xFFDCF5E7),
    products: [offers[4], offers[5]],
  ),
];
