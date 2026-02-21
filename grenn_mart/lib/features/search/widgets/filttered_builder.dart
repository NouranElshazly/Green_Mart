import 'package:flutter/material.dart';
import 'package:grenn_mart/features/home/data/product_data.dart';
import 'package:grenn_mart/features/home/widgets/productcard.dart';

class FiltteredBuilder extends StatelessWidget {
  const FiltteredBuilder({super.key, required this.filteredProducts});
  final List<ProductModel> filteredProducts;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        // mainAxisExtent: 250,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        var models = filteredProducts[index];

        return Productcard(model: models);
      },
      itemCount: filteredProducts.length,
    );
  }
}
