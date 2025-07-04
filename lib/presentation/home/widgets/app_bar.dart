import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webly_task/core/constants/color_palette.dart';
import 'package:webly_task/core/constants/font_sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorPalette.blue,
      surfaceTintColor: ColorPalette.blue,
      elevation: 2,
      shadowColor: ColorPalette.black.withOpacity(0.1),
      title: Row(
        children: [
          Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              color: ColorPalette.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'Webly',
                style: GoogleFonts.poppins(
                  fontSize: FontSizes.fontSize10,
                  fontWeight: FontWeight.w700,
                  color: ColorPalette.blue,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: ColorPalette.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: ColorPalette.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                cursorColor: ColorPalette.blue,
                decoration: InputDecoration(
                  hintText: 'Search for products',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: FontSizes.fontSize14,
                    color: ColorPalette.greyShade500,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: ColorPalette.grey,
                    size: 20,
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                ),
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: ColorPalette.black,
                ),
                onSubmitted: (value) {},
              ),
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: ColorPalette.white,
            size: 24,
          ),
          onPressed: () {},
        ),
        const SizedBox(width: 8),
      ],
      titleSpacing: 16,
      toolbarHeight: 60,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
