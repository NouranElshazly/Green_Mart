import 'package:flutter/material.dart';
import 'package:grenn_mart/core/functions/navigation.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/core/widgets/custome_text_form.dart';
import 'package:grenn_mart/features/explore/data/category_data.dart';
import 'package:grenn_mart/features/explore/widgets/category_card.dart';
import 'package:grenn_mart/features/search/pages/search_page.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Products", style: TextStyles.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomeTextForm(
              hinttext: "Search Store",
              readOnly: true,
              onTap: () {
                push(context, const SearchPage());
              },
              prefixIcon: const Icon(Icons.search),
              keyboardType: TextInputType.text,
              validator: (_) => null,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.05,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryCard(model: categories[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
