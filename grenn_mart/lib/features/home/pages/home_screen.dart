import 'package:flutter/material.dart';
import 'package:grenn_mart/core/constants/app_images.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/widgets/custome_text_form.dart';
import 'package:grenn_mart/core/widgets/svg_picture_custome.dart';
import 'package:grenn_mart/features/home/widgets/best_selling.dart';
// import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/features/home/widgets/offersbuilders.dart';
import 'package:grenn_mart/features/search/pages/search_page.dart';
import 'package:grenn_mart/core/functions/navigation.dart ';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPictureCustome(
          path: AppImages.logoSvg,

          color: AppColors.primaryColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),

        child: SingleChildScrollView(
          child: Column(
            spacing: 20,

            children: [
              Hero(
                tag: "search_text",
                child: Material(
                  color: Colors.transparent,
                  child: CustomeTextForm(
                    hinttext: "Search here",
                    readOnly: true,
                    onTap: () {
                      // Handle tap event here
                      push(context, SearchPage());
                    },
                    prefixIcon: const Icon(Icons.search),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a search term";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Offersbuilders(),
              Bestsellingbuilders(),
            ],
          ),
        ),
      ),
    );
  }
}
