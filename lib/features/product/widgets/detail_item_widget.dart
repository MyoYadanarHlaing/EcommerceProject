import 'package:flutter/material.dart';

import '../../../model/item_detail_model.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/string_const.dart';
import '../../home/widgets/label_and_item_widget.dart';
import 'image_slider_widget.dart';

class DetailItemsWidget extends StatelessWidget {
  final ItemDetailModel itemDetail;

  const DetailItemsWidget({
    super.key,
    required this.itemDetail,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ImageSliderWidget(itemDetail.data!.images),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                itemDetail.data!.categoryName!,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  height: 16 / 13,
                ),
              ),
              const Row(
                children: [
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.share_outlined),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Text(
            itemDetail.data!.name!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              height: 24 / 20,
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Text(
            '${itemDetail.data!.weight!.toInt()} Grams',
            style: const TextStyle(
              color: Color(0xFF898989),
              fontSize: 13,
              height: 24 / 13,
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Text(
            '${itemDetail.data!.price!} Ks',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 24 / 18,
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Text(
            StringConst.productInfo,
            style: TextStyle(
              color: ColorConst.secondaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 24 / 18,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Text(
            itemDetail.data!.description!,
            style: const TextStyle(
              height: 21 / 14,
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        itemDetail.relatedItems != null
            ? Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: LabelAndItemWidget(
                    label: StringConst.mayLike,
                    itemModelList: itemDetail.relatedItems!,
                    isItemType: true),
              )
            : Container(),
      ],
    );
  }
}
