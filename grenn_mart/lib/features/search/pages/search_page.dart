import 'package:flutter/material.dart';
import 'package:grenn_mart/core/widgets/custome_text_form.dart';
import 'package:grenn_mart/features/home/data/product_data.dart';
import 'package:grenn_mart/features/home/widgets/productcard.dart';
import 'package:grenn_mart/features/search/widgets/filttered_builder.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchkey = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: "search_text",
          child: Material(
            color: Colors.transparent,
            child: CustomeTextForm(
              prefixIcon: const Icon(Icons.search),
              hinttext: "Search for products",
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {
                  searchkey = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a search term";
                }
                return null;
              },
            ),
          ),
        ),
      ),
      body: FiltteredBuilder(filteredProducts: getproductwithname(searchkey)),
    );
  }
}

List<ProductModel> getproductwithname(String name) {
  List<ProductModel> filteredProducts = [];
  for (var item in offers) {
    if (item.name.toLowerCase().contains(name.toLowerCase())) {
      filteredProducts.add(item);
    }
  }
  return filteredProducts;
}
