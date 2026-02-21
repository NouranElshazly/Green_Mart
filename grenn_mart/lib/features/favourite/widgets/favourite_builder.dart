import 'package:flutter/material.dart';
import 'package:grenn_mart/core/widgets/main_button.dart';
import 'package:grenn_mart/features/favourite/widgets/favourite_item_card.dart';
import 'package:grenn_mart/features/home/data/product_data.dart';

class FavouriteBuilder extends StatelessWidget {
  const FavouriteBuilder({super.key, required this.favouriteProducts});
  final List<ProductModel> favouriteProducts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return FavouriteItemCard(model: favouriteProducts[index]);
            },
            separatorBuilder: (context, index) => const Divider(
              height: 1,
              thickness: 1,
              color: Color(0xFFF0F0F0),
            ),
            itemCount: favouriteProducts.length,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: main_button(text: "Add All to Cart", onPressed: () {}),
        ),
      ],
    );
  }
}
