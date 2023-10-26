import 'package:ecommerce_project/features/cart/bloc/cart_bloc.dart';
import 'package:ecommerce_project/features/home/widgets/app_bar_widget.dart';
import 'package:ecommerce_project/utils/color_constant.dart';
import 'package:ecommerce_project/utils/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/string_const.dart';
import 'widgets/cart_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(builder: (context, state) {
      return Scaffold(
        appBar: buildAppBar(context),
        body: CartWidget(
          cartState: state,
        ),
        bottomNavigationBar: continueButton(state, context),
      );
    });
  }

  Widget continueButton(CartState state, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorConst.secondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        onPressed: state.cartItems.isNotEmpty
            ? () {
                Navigator.of(context).pushNamed(AppRoutes.checkOut);
              }
            : null,
        child: const Text(
          StringConst.continueLbl,
        ),
      ),
    );
  }

  AppBarWidget buildAppBar(BuildContext context) {
    return AppBarWidget(
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back),
      ),
      title: const Text(
        StringConst.cart,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 16 / 18,
        ),
      ),
    );
  }
}
