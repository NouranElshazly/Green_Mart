import 'package:flutter/material.dart';
import 'package:grenn_mart/core/functions/navigation.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/features/explore/data/category_data.dart';
import 'package:grenn_mart/features/home/widgets/productcard.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 20),
          onPressed: () => pop(context),
        ),
        title: Text(
          category.name.replaceAll('\n', ' '),
          style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.tune,
              color: AppColors.blackColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: category.products.length,
        itemBuilder: (context, index) {
          return Productcard(model: category.products[index]);
        },
      ),
    );
  }
}
