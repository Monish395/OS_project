import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,required this.text, this.icon=Iconsax.search_normal,this.showBackground=true,this.showBorder=true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground,showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: OnTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackground ? dark ? TColors.dark: TColors.light: Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: TColors.grey):null,
          ),
          child: Row(
            children: [
              Icon(icon,color: TColors.darkerGrey),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text(text,style: Theme.of(context).textTheme.bodySmall),
            ],
          )
        ),
      ),
    );
  }
}