import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../model/cart_model.dart';
import '../../../utils/string_const.dart';
import '../bloc/cart_bloc.dart';

class CartWidget extends StatelessWidget {
  final CartState cartState;

  const CartWidget({super.key, required this.cartState});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: cartState.cartItems.isNotEmpty
          ? ListView.separated(
              shrinkWrap: true,
              itemCount: cartState.cartItems.length,
              itemBuilder: (context, pos) {
                CartItem cartItem = cartState.cartItems[pos];
                return Row(
                  children: [
                    CachedNetworkImage(
                      imageUrl: cartItem.item.images![0].thumbnailImageUrl!,
                      width: 59,
                      height: 56,
                      errorWidget: (context, str, obj) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.green.withOpacity(.3),
                        ),
                        child: const Icon(Icons.error),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartItem.item.name!,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              height: 16 / 13,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '${cartItem.item.weight} Grams',
                            style: const TextStyle(
                              fontSize: 12,
                              height: 16 / 12,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '${cartItem.item.price! * cartItem.qty} Ks',
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              height: 16 / 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            context
                                .read<CartBloc>()
                                .add(CartEvent.removeItem(cartItem.item.id!));
                          },
                          icon: SvgPicture.asset(
                            'assets/images/icons/delete_icon.svg',
                          ),
                        ),
                        Card(
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(20),
                          //   color: Colors.white,
                          //
                          // ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 7,
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 4, right: 4, top: 2, bottom: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (cartItem.qty > 1) {
                                      // cartItem.qty = cartItem.qty - 1;
                                      context.read<CartBloc>().add(
                                          CartEvent.decreaseQty(
                                              cartItem.item.id!));
                                    } else {
                                      context.read<CartBloc>().add(
                                          CartEvent.removeItem(
                                              cartItem.item.id!));
                                    }
                                  },
                                  child: SvgPicture.asset(
                                    'assets/images/icons/minus_icon.svg',
                                    color: Colors.black,
                                    width: 18,
                                    height: 18,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: Text(
                                    '${cartItem.qty}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      height: 16 / 14,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    //cartItem.qty = cartItem.qty + 1;
                                    context.read<CartBloc>().add(
                                        CartEvent.increaseQty(
                                            cartItem.item.id!));
                                  },
                                  child: SvgPicture.asset(
                                    'assets/images/icons/plus_icon.svg',
                                    color: Colors.black,
                                    width: 18,
                                    height: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
              separatorBuilder: (context, pos) {
                return Divider(
                  color: Colors.grey.withOpacity(.15),
                );
              },
            )
          : const Center(child: Text(StringConst.noItemSelected)),
    );
  }
}
