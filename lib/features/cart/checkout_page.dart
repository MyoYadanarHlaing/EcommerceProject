import 'package:ecommerce_project/features/cart/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/color_constant.dart';
import '../../utils/route_constants.dart';
import '../../utils/string_const.dart';
import '../home/widgets/app_bar_widget.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(builder: (context, state) {
      int subTotal =
          context.read<CartBloc>().calculateTotalPrice(state.cartItems);

      return Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Text(
                StringConst.orderSummary,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 24 / 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    StringConst.subTotal,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  RichText(
                    text: TextSpan(
                        text: '$subTotal',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        children: const [
                          TextSpan(
                              text: ' Ks',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              )),
                        ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Divider(
                color: Colors.grey.withOpacity(.2),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    StringConst.taxAndFees,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  RichText(
                    text: TextSpan(
                        text: '27.30',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                              text: ' USD',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              )),
                        ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Divider(
                color: Colors.grey.withOpacity(.2),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    StringConst.delivery,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  RichText(
                    text: TextSpan(
                        text: '27.30',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                              text: ' USD',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              )),
                        ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Divider(
                color: Colors.grey.withOpacity(.2),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        text: StringConst.total,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                              text: ' (${state.cartItems.length} items)',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              )),
                        ]),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  RichText(
                    text: TextSpan(
                        text: '$subTotal',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        children: const [
                          TextSpan(
                              text: ' Ks',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              )),
                        ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                                'assets/images/icons/delivery_address.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Flexible(
                              child: Text(
                                StringConst.deliveryAddress,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  height: 24 / 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: null,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                          ),
                          child: SvgPicture.asset(
                            'assets/images/icons/edit.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: const TextSpan(
                        text:
                            'No.119, Hledan Street, Lamadaw Tsp, Yangon Myanmar.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          height: 21 / 14,
                        ),
                        children: [
                          TextSpan(
                              text: ' 3rd Floor',
                              style: TextStyle(
                                color: Colors.grey,
                              )),
                        ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Divider(
                color: Colors.grey.withOpacity(.2),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            'assets/images/icons/delivery_time.svg'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Flexible(
                          child: Text(
                            StringConst.deliveryTime,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    '20 - 30 mins',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Divider(
                color: Colors.grey.withOpacity(.2),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                            'assets/images/icons/delivery_note.svg'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Flexible(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  StringConst.deliveryNote,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  'Lorem ipsum dolor sit amet consectetur.'
                                  'Auctor turpis ac eu a purus quam.',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: const Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Divider(
                color: Colors.grey.withOpacity(.2),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                            'assets/images/icons/payment_method.svg'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Text(
                                StringConst.paymentMethod,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Cash On Delivery',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: const Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Divider(
                color: Colors.grey.withOpacity(.2),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/images/icons/coupon.svg'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Flexible(
                          child: Text(
                            StringConst.applyCoupon,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: const Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Divider(
                color: Colors.grey.withOpacity(.2),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorConst.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  AppRoutes.orderSuccess, (route) => false);
              context.read<CartBloc>().add(const CartEvent.clearCart());
            },
            child: const Text(
              StringConst.placeOrder,
            ),
          ),
        ),
      );
    });
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
        StringConst.checkOut,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 16 / 18,
        ),
      ),
    );
  }
}
