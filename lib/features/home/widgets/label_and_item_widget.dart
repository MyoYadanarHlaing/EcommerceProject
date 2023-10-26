import 'package:ecommerce_project/utils/route_constants.dart';
import 'package:flutter/material.dart';

import '../../../model/item_model.dart';
import '../../../model/item_type_model.dart';
import '../../../utils/color_constant.dart';
import 'package:cached_network_image/cached_network_image.dart';

class LabelAndItemWidget extends StatelessWidget {
  const LabelAndItemWidget({
    super.key,
    required this.label,
    required this.itemModelList,
    required this.isItemType,
    this.itemTypeList,
  });

  final String label;
  final List<ItemModel> itemModelList;
  final bool isItemType;
  final List<ItemType>? itemTypeList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        buildLabel(),
        const SizedBox(
          height: 8,
        ),
        buildItemList(context),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }

  Widget buildLabel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            isItemType && itemTypeList != null
                ? itemTypeList!
                    .where((element) => element.key == label)
                    .first
                    .value!
                : label,
            style: const TextStyle(
              color: ColorConst.secondaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 20 / 18,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'View All',
              style: TextStyle(
                fontSize: 13,
                height: 20 / 13,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildItemList(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(itemModelList.length, (index) {
          ItemModel item = itemModelList[index];
          return GestureDetector(
            onTap: () => Navigator.of(context)
                .pushNamed(AppRoutes.productDetail, arguments: item),
            child: Padding(
              padding: EdgeInsets.only(
                  right: index == itemModelList.length - 1 ? 0 : 16),
              child: Column(
                children: [
                  Stack(
                    children: [
                      CachedNetworkImage(
                        imageUrl: item.images![0].mediumImageUrl!,
                        width: 124,
                        height: 124,
                        errorWidget: (context, str, obj) {
                          return Container(
                            width: 124,
                            height: 124,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConst.secondaryColor.withOpacity(.2),
                            ),
                            child: const Icon(Icons.error),
                          );
                        },
                      ),

                      // item.isPromotion != null && item.isPromotion!? Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(20),
                      //   ),
                      //   child: Text(
                      //     'OFF',
                      //   ),
                      // ) : Container(),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  !isItemType
                      ? SizedBox(
                          width: 124,
                          child: Text(
                            '${item.price} Ks',
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      : Container(),
                  !isItemType
                      ? const SizedBox(
                          height: 4,
                        )
                      : Container(),
                  SizedBox(
                    width: 124,
                    child: Text(
                      item.name!,
                      style: const TextStyle(
                        fontSize: 12,
                        height: 16 / 12,
                      ),
                    ),
                  ),
                  isItemType
                      ? const SizedBox(
                          height: 4,
                        )
                      : Container(),
                  isItemType
                      ? SizedBox(
                          width: 124,
                          child: Text(
                            '${item.price} Ks',
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
