import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webly_task/core/constants/color_palette.dart';
import 'package:webly_task/core/constants/font_sizes.dart';
import 'package:webly_task/data/home/models/products_model.dart';
class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
  });

  final Products? product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: product?.image ?? '',
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                  placeholder: (_, __) => Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: ColorPalette.greyShade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  errorWidget: (_, __, ___) => Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: ColorPalette.greyShade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.broken_image,
                      size: 50,
                      color: ColorPalette.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product?.title ?? '',
                      style: GoogleFonts.poppins(
                        fontSize: FontSizes.fontSize16,
                        fontWeight: FontWeight.w600,
                        color: ColorPalette.black,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      product?.description ?? '',
                      style: GoogleFonts.poppins(
                        fontSize: FontSizes.fontSize12,
                        color: ColorPalette.greyShade600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Brand: ${product?.brand ?? ''}',
                      style: GoogleFonts.poppins(
                        fontSize: FontSizes.fontSize13,
                        color: ColorPalette.greyShade700,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Model: ${product?.model ?? ''}',
                      style: GoogleFonts.poppins(
                        fontSize: FontSizes.fontSize13,
                        color: ColorPalette.greyShade700,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Color: ${product?.color ?? ''}',
                      style: GoogleFonts.poppins(
                        fontSize: FontSizes.fontSize13,
                        color: ColorPalette.greyShade700,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Category: ${product?.category ?? ''}',
                      style: GoogleFonts.poppins(
                        fontSize: FontSizes.fontSize13,
                        color: ColorPalette.greyShade700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          '₹${product?.price?.toStringAsFixed(0) ?? '0'}',
                          style: GoogleFonts.poppins(
                            fontSize: FontSizes.fontSize16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF388E3C),
                          ),
                        ),
                        if ((product?.discount ?? 0) > 0)
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              '${product?.discount}% OFF',
                              style: GoogleFonts.poppins(
                                fontSize: FontSizes.fontSize13,
                                color: const Color(0xFFD32F2F),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.favorite_border,
                  color: ColorPalette.grey,
                ),
                onPressed: () {
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const Divider(
          color: ColorPalette.greyShade200,
          thickness: 1,
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}