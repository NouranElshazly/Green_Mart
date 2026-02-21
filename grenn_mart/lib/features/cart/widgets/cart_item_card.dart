import 'package:flutter/material.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/features/home/data/product_data.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({super.key, required this.model});

  final CartItemModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(model.image),
            height: 80,
            width: 80,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        model.name,
                        style: TextStyles.body
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Icon(Icons.close, size: 18, color: Colors.grey),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  model.weight,
                  style: TextStyles.caption1.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    _QuantityButton(icon: Icons.remove, filled: false),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '1',
                        style: TextStyles.body
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    _QuantityButton(icon: Icons.add, filled: true),
                    const Spacer(),
                    Text(
                      '\$${model.price.toStringAsFixed(2)}',
                      style: TextStyles.body
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  const _QuantityButton({required this.icon, required this.filled});

  final IconData icon;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: filled ? AppColors.primaryColor : Colors.transparent,
        border: filled
            ? null
            : Border.all(color: Colors.grey.shade300, width: 1.5),
      ),
      child: Icon(
        icon,
        size: 16,
        color: filled ? Colors.white : Colors.grey,
      ),
    );
  }
}
