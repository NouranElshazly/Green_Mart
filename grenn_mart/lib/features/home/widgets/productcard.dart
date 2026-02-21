import 'package:flutter/material.dart';
import 'package:grenn_mart/core/constants/app_images.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/features/home/data/product_data.dart';

class Productcard extends StatelessWidget {
  const Productcard({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      height: 270,
      width: 210,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.accentColor),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(
              184,
              158,
              158,
              158,
            ).withValues(alpha: .1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(-2, -4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Center(child: Image.asset(model.image))),
            // SizedBox(height: 20),
            Text(model.name, style: TextStyles.subtitle),
            SizedBox(height: 10),

            Text(
              model.weight,
              style: TextStyles.body.copyWith(color: AppColors.grayColor),
            ),
            SizedBox(height: 33),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text(model.price, style: TextStyles.subtitle),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.add, color: Colors.white, size: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
