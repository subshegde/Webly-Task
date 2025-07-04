import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webly_task/core/constants/color_palette.dart';
import 'package:webly_task/core/constants/font_sizes.dart';
import 'package:webly_task/presentation/home/cubit/home_cubit.dart';
import 'package:webly_task/presentation/home/cubit/home_state.dart';
import 'package:webly_task/presentation/home/widgets/app_bar.dart';
import 'package:webly_task/presentation/home/widgets/product_item.dart';
import 'package:webly_task/presentation/home/widgets/shimmer_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const CustomAppBar(),
          body: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Container(
                color: ColorPalette.white,
                child: state is HomeLoading
                    ? ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return const ShimmerItem();
                        },
                      )
                    : state is HomeLoaded
                        ? ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            itemCount: state.products?.length ?? 0,
                            itemBuilder: (context, index) {
                              final product = state.products?[index];
                              return ProductItem(product: product);
                            },
                          )
                        : state is HomeError
                            ? Center(
                                child: Text(
                                  state.errorMessage,
                                  style: GoogleFonts.poppins(
                                    fontSize: FontSizes.fontSize14,
                                    color: ColorPalette.red,
                                  ),
                                ),
                              )
                            : Center(
                                child: Text(
                                  'No Data',
                                  style: GoogleFonts.poppins(
                                    fontSize: FontSizes.fontSize14,
                                    color: ColorPalette.greyShade700,
                                  ),
                                ),
                              ),
              );
            },
          )),
    );
  }
}
