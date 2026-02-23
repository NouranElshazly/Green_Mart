import 'package:flutter/material.dart';
// import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/features/cart/widgets/cart_item_card.dart';
import 'package:grenn_mart/features/home/data/product_data.dart';
// import 'package:grenn_mart/features/cart/widgets/cart_builder.dart';
import 'package:grenn_mart/features/cart/widgets/checkout_bottom_sheet.dart';

class CartBuilder extends StatelessWidget {
  const CartBuilder({super.key, required this.cartItems});
  final List<CartItemModel> cartItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              return CartItemCard(model: cartItems[index]);
            },
            separatorBuilder: (context, index) => const Divider(
              height: 1,
              thickness: 1,
              color: Color(0xFFF0F0F0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              showCheckoutBottomSheet(context, cartItems);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 70),
                Text(
                  'Go to Checkout',
                  style: TextStyles.body.copyWith(color: Colors.white),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 7,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3D9161),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    '\$12.98',
                    style: TextStyles.body.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
