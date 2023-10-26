import 'package:flutter/material.dart';

import '../../../model/category_model.dart';
import '../../../utils/color_constant.dart';

class CategoryWidget extends StatelessWidget {
  final List<Category> categories;

  const CategoryWidget({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Shop By Categories',
                style: TextStyle(
                  color: ColorConst.secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 20 / 18,
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
          ),
          const SizedBox(
            height: 8,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(categories.length, (index) {
                Category category = categories[index];
                return Padding(
                  padding: EdgeInsets.only(
                      right: index == categories.length - 1 ? 0 : 10),
                  child: Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                category.coverImage!,
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 80,
                        child: Text(
                          category.name!,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
