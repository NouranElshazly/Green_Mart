import 'package:flutter/material.dart';
// import 'package:grenn_mart/core/constants/app_images.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/features/home/widgets/productcard.dart';
import 'package:grenn_mart/features/home/data/product_data.dart';

class Bestsellingbuilders extends StatelessWidget {
  const Bestsellingbuilders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Best Selling", style: TextStyles.title),
            TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: TextStyles.caption1.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 257,

          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var models = offers[index];
              return Productcard(model: models);
            },
            itemCount: offers.length,

            separatorBuilder: (context, index) {
              return SizedBox(width: 10);
            },
          ),
        ),
      ],
    );
  }
}
