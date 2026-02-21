import 'package:flutter/material.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/styles/text_style.dart';
import 'package:grenn_mart/features/profile/data/profile_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Account')),
      body: Column(
        children: [
          _UserInfoSection(),
          const Divider(height: 1),
          Expanded(
            child: ListView.separated(
              itemCount: profileMenuItems.length,
              separatorBuilder: (context, index) =>
                  const Divider(height: 1, indent: 25, endIndent: 25),
              itemBuilder: (context, index) => _ProfileMenuItem(
                icon: profileMenuItems[index].icon,
                title: profileMenuItems[index].title,
              ),
            ),
          ),
          _LogOutButton(),
        ],
      ),
    );
  }
}

class _UserInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: AppColors.accentColor,
            backgroundImage: const AssetImage('assets/images/user.png'),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Nouran Elshazly',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.edit_outlined,
                    size: 18,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                'nouran@gmail.com',
                style: TextStyles.caption1.copyWith(color: AppColors.grayColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const _ProfileMenuItem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 25),
      leading: Icon(icon, color: AppColors.blackColor, size: 26),
      title: Text(
        title,
        style: TextStyles.body.copyWith(
          color: AppColors.blackColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(Icons.chevron_right, color: AppColors.grayColor),
      onTap: () {},
    );
  }
}

class _LogOutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.logout_rounded, color: AppColors.primaryColor),
        label: Text(
          'Log Out',
          style: TextStyles.body.copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide.none,
          backgroundColor: AppColors.accentColor,
          minimumSize: const Size(double.infinity, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
