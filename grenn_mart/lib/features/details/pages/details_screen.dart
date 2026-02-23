import 'package:flutter/material.dart';
import 'package:grenn_mart/core/constants/app_images.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/widgets/main_button.dart';
import 'package:grenn_mart/core/widgets/svg_picture_custome.dart';
import 'package:grenn_mart/features/home/data/product_data.dart';
import 'package:grenn_mart/core/styles/text_style.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F3F2),
        actions: [Icon(Icons.share_rounded), SizedBox(width: 20)],
      ),

      body: Column(
        children: [
          // Keep the header container as-is (it handles its own padding)
          Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.sizeOf(context).height * .3,
            decoration: BoxDecoration(
              color: Color(0xFFF2F3F2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            child: Center(
              child: Hero(tag: model.tagKey, child: Image.asset(model.image)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.name,
                          style: TextStyles.body.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          model.weight,
                          style: TextStyles.caption2.copyWith(
                            color: AppColors.grayColor,
                          ),
                        ),
                        SizedBox(height: 7),
                      ],
                    ),
                    SvgPictureCustome(path: AppImages.heartSvg),
                  ],
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          '-',
                          style: TextStyles.subtitle.copyWith(
                            color: AppColors.grayColor,
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.blackColor,
                                blurRadius: 6,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: Text('1', style: TextStyles.body),
                        ),
                        SizedBox(width: 20),
                        Text(
                          '+',
                          style: TextStyles.subtitle.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      model.price,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),

                Divider(indent: 0, endIndent: 0),

                ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  childrenPadding: EdgeInsets.zero,
                  initiallyExpanded: true,
                  title: Text(
                    "Product Detail",
                    style: TextStyles.caption1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  children: [
                    Text(
                      "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                      style: TextStyles.caption2.copyWith(
                        color: AppColors.grayColor,
                      ),
                    ),
                  ],
                ),
                // Nutritions row
                ListTile(
                  contentPadding: EdgeInsets.zero, // align with your padding
                  title: Text(
                    "Nutritions",
                    style: TextStyles.caption1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text("100gr"),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ),

                // Review row
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "Review",
                    style: TextStyles.caption1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ),

                // main_button(text: "Add To Cart", onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
        child: main_button(text: "Add To Cart", onPressed: () {}),
      ),
    );
  }
}
