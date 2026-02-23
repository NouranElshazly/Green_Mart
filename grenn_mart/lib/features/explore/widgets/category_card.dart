import 'package:flutter/material.dart';
import 'package:grenn_mart/core/functions/navigation.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/features/explore/data/category_data.dart';
import 'package:grenn_mart/features/explore/pages/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.model});
  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        push(context, CategoryScreen(category: model));
      },
      child: Container(
        decoration: BoxDecoration(
          color: model.backgroundColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: model.backgroundColor.withValues(alpha: 0.6),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  model.image,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                model.name,
                style: TextStyles.body.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackColor,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
