import 'package:flutter/material.dart';

class ProfileMenuItemModel {
  final IconData icon;
  final String title;

  const ProfileMenuItemModel({required this.icon, required this.title});
}

const List<ProfileMenuItemModel> profileMenuItems = [
  ProfileMenuItemModel(icon: Icons.shopping_bag_outlined, title: 'Orders'),
  ProfileMenuItemModel(icon: Icons.credit_card_outlined, title: 'My Details'),
  ProfileMenuItemModel(
    icon: Icons.location_on_outlined,
    title: 'Delivery Address',
  ),
  ProfileMenuItemModel(
    icon: Icons.payment_outlined,
    title: 'Payment Methods',
  ),
  ProfileMenuItemModel(icon: Icons.local_offer_outlined, title: 'Promo Cord'),
  ProfileMenuItemModel(
    icon: Icons.notifications_outlined,
    title: 'Notifecations',
  ),
  ProfileMenuItemModel(icon: Icons.help_outline_rounded, title: 'Help'),
  ProfileMenuItemModel(icon: Icons.info_outline_rounded, title: 'About'),
];
