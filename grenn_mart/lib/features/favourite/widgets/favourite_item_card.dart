import 'package:flutter/material.dart';
import 'package:grenn_mart/core/functions/navigation.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/features/details/pages/details_screen.dart';
import 'package:grenn_mart/features/home/data/product_data.dart';

class FavouriteItemCard extends StatelessWidget {
  const FavouriteItemCard({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        push(context, DetailsScreen(model: model));
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: model.tagKey,
              child: Image(
                image: AssetImage(model.image),
                height: 80,
                width: 80,
              ),
            ),
            SizedBox(width: 12),
            Column(
              children: [
                Text(
                  model.name,
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                Text(
                  model.weight,
                  style: TextStyles.body.copyWith(color: Colors.grey),
                ),
                SizedBox(height: 10),
              ],
            ),
            Spacer(),
            Text(
              "${model.price}",
              style: TextStyles.body.copyWith(fontWeight: FontWeight.bold),
            ),
            Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
