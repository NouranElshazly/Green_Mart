import 'package:flutter/material.dart';
import 'package:grenn_mart/features/favourite/widgets/favourite_builder.dart';
import 'package:grenn_mart/features/home/data/product_data.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favourite")),
      body: FavouriteBuilder(favouriteProducts: favourite),
    );
  }
}
