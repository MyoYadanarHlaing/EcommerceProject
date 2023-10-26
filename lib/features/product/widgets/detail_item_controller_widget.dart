import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../model/cart_model.dart';
import '../../../model/item_detail_model.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/string_const.dart';
import '../../cart/bloc/cart_bloc.dart';
import '../../cart/bloc/qty_cubit.dart';

class DetailItemControllerWidget extends StatelessWidget {
  final ItemDetailModel itemDetail;

  const DetailItemControllerWidget({
    super.key,
    required this.itemDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      color: Colors.grey.withOpacity(.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              context.read<ItemQtyCubit>().removeQuantity();
            },
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey.withOpacity(.7),
                        blurStyle: BlurStyle.outer)
                  ]),
              child: SvgPicture.asset('assets/images/icons/minus_icon.svg'),
            ),
          ),
          BlocSelector<ItemQtyCubit, ItemQtyState, int>(
              selector: (state) => state.qty,
              builder: (context, qty) {
                return Flexible(
                  child: Text(
                    '$qty',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 20 / 16,
                    ),
                  ),
                );
              }),
          GestureDetector(
            onTap: () {
              context.read<ItemQtyCubit>().addQuantity();
            },
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey.withOpacity(.7),
                        blurStyle: BlurStyle.outer)
                  ]),
              child: SvgPicture.asset('assets/images/icons/plus_icon.svg'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              CartItem cartItem = CartItem(
                  item: itemDetail.data!,
                  qty: context.read<ItemQtyCubit>().state.qty);
              context.read<CartBloc>().add(CartEvent.addItem(cartItem));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorConst.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                )),
            child: const Text(
              StringConst.addToCart,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 24 / 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
