import 'package:flutter/material.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/core/widgets/main_button.dart';
import 'package:grenn_mart/features/home/data/product_data.dart';
import 'package:grenn_mart/core/functions/navigation.dart';
import 'package:grenn_mart/features/order_accepted/pages/order_accepted.dart';

void showCheckoutBottomSheet(
  BuildContext context,
  List<CartItemModel> cartItems,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: AppColors.backgroundColor,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) {
      return CheckoutBottomModel(cartItems: cartItems);
    },
  );
}

class CheckoutBottomModel extends StatelessWidget {
  const CheckoutBottomModel({super.key, required this.cartItems});
  final List<CartItemModel> cartItems;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Checkout", style: TextStyles.subtitle),
              IconButton(
                onPressed: () {
                  pop(context);
                },
                icon: Icon(Icons.close),
              ),
            ],
          ),

          Divider(height: 20),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Delivery",
              style: TextStyles.caption1.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.grayColor,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Select Method",
                  style: TextStyles.caption1.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 4),
                Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Payment",
              style: TextStyles.caption1.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.grayColor,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.payment, color: Colors.blue),
                SizedBox(width: 4),
                Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Promo Code",
              style: TextStyles.caption1.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.grayColor,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Pick discount",
                  style: TextStyles.caption1.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 4),
                Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Total Cost",
              style: TextStyles.caption1.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.grayColor,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "\$13.97",
                  style: TextStyles.caption1.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 4),
                Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text.rich(
            TextSpan(
              text: "By placing an order you agree to our ",
              style: TextStyle(color: AppColors.grayColor),
              children: [
                TextSpan(
                  text: "Terms",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(text: " And "),
                TextSpan(
                  text: "Conditions",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          main_button(
            text: "Place Order",
            onPressed: () {
              push(context, OrderAccepted());
            },
          ),
        ],
      ),
    );
  }
}
