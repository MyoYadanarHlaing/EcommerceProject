import 'package:ecommerce_project/model/cart_model.dart';
import 'package:ecommerce_project/model/item_model.dart';
import 'package:ecommerce_project/model/vendor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/item_type_model.dart';
import '../../utils/color_constant.dart';
import '../../utils/route_constants.dart';
import '../../utils/string_const.dart';
import '../cart/bloc/cart_bloc.dart';
import 'bloc/home_bloc.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/category_widget.dart';
import 'widgets/label_and_item_widget.dart';
import 'widgets/search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        return state.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (VendorModel vendor) {
            return buildBody(vendor);
          },
          failed: () => const Center(
              child: Text(
            StringConst.somethingWentWrong,
            style: TextStyle(color: Colors.red),
          )),
        );
      }),
    );
  }

  Widget buildBody(VendorModel vendor) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          const SizedBox(
            height: 16,
          ),
          const SearchWidget(),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Image.asset(
              'assets/images/banner.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          CategoryWidget(categories: vendor.categories!),
          const SizedBox(
            height: 24,
          ),
          buildLabelAndItems(vendor.highlightedItems, false),
          buildLabelAndItems(vendor.itemTypes, true,
              itemTypeList: vendor.itemTypeLists),
        ],
      ),
    );
  }

  Widget buildLabelAndItems(Map? items, bool isItemType,
      {List<ItemType>? itemTypeList}) {
    List<Widget> itemList = [];
    items!.forEach((key, value) {
      List<ItemModel> itemModelList = value;
      itemList.add(Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: LabelAndItemWidget(
          label: key,
          itemModelList: itemModelList,
          isItemType: isItemType,
          itemTypeList: itemTypeList,
        ),
      ));
    });
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: itemList,
    );
  }

  AppBarWidget buildAppBar(BuildContext context) {
    return AppBarWidget(
      leading: Row(
        children: [
          const SizedBox(
            width: 16,
          ),
          SvgPicture.asset(
            'assets/images/icons/user_icon.svg',
          ),
        ],
      ),
      title: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            StringConst.deliverTo,
            style: TextStyle(
                color: ColorConst.secondaryColor,
                fontSize: 12,
                height: 18 / 12),
          ),
          Text(
            '38th street Kyauktada',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w700, height: 18 / 12),
          ),
        ],
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
              BlocSelector<CartBloc, CartState, List<CartItem>>(
                  selector: (state) {
                return state.cartItems;
              }, builder: (context, cartItems) {
                return cartItems.isNotEmpty
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
                            '${cartItems.length}',
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
