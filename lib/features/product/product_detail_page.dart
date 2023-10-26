import 'package:ecommerce_project/features/home/widgets/app_bar_widget.dart';
import 'package:ecommerce_project/features/product/bloc/product_detail_bloc.dart';
import 'package:ecommerce_project/model/item_detail_model.dart';
import 'package:ecommerce_project/model/item_model.dart';
import 'package:ecommerce_project/utils/color_constant.dart';
import 'package:ecommerce_project/utils/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/string_const.dart';
import '../cart/bloc/cart_bloc.dart';
import 'widgets/detail_item_controller_widget.dart';
import 'widgets/detail_item_widget.dart';

class ProductDetailPage extends StatelessWidget {
  final ItemModel item;

  const ProductDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: DetailItemsWidget(itemDetail: ItemDetailModel(data: item)),
      bottomNavigationBar:
      DetailItemControllerWidget(itemDetail: ItemDetailModel(data: item)),
    );

    // return BlocBuilder<ProductDetailBloc, ProductDetailState>(
    //     builder: (context, state) {
    //   return state.when(
    //     loading: () => Scaffold(
    //       appBar: buildAppBar(context),
    //       body: const Center(
    //         child: CircularProgressIndicator(
    //           color: ColorConst.secondaryColor,
    //         ),
    //       ),
    //     ),
    //     success: (ItemDetailModel itemDetail) {
    //       return Scaffold(
    //         appBar: buildAppBar(context),
    //         body: DetailItemsWidget(itemDetail: itemDetail),
    //         bottomNavigationBar:
    //             DetailItemControllerWidget(itemDetail: itemDetail),
    //       );
    //       //return DetailItemsWidget(itemDetail: itemDetail);
    //     },
    //     failed: () => const Center(
    //         child: Text(
    //       StringConst.somethingWentWrong,
    //       style: TextStyle(color: Colors.red),
    //     )),
    //   );
    // });
  }

  AppBarWidget buildAppBar(BuildContext context) {
    return AppBarWidget(
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.cart);
          },
          icon: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: SvgPicture.asset(
                  'assets/images/icons/Cart.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              BlocSelector<CartBloc, CartState, int>(selector: (state) {
                return state.cartItems.length;
              }, builder: (context, cartItemCount) {
                return cartItemCount > 0
                    ? Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorConst.secondaryColor,
                          ),
                          child: Text(
                            '$cartItemCount',
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              height: 16 / 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    : Container();
              }),
            ],
          ),
        ),
      ],
    );
  }
}
