import 'package:flutter/material.dart';
import 'package:grenn_mart/features/cart/widgets/cart_builder.dart';
import 'package:grenn_mart/features/home/data/product_data.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Cart')),
      body: CartBuilder(cartItems: cartItems),
    );
  }
}
