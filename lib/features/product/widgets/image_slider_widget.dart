import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../model/item_model.dart';
import '../../../utils/color_constant.dart';

class ImageSliderWidget extends StatelessWidget {
  final List<ImageModel>? images;
  final CarouselController _controller = CarouselController();

  ImageSliderWidget(
    this.images, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: images!
              .map((e) => CachedNetworkImage(
                    imageUrl: e.thumbnailImageUrl!,
                    errorWidget: (context, str, obj) => Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.error),
                    ),
                  ))
              .toList(),
          options: CarouselOptions(
            //height: 400,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            //autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images!.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 6,
                height: 6,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : ColorConst.secondaryColor)
                    //.withOpacity(_current == entry.key ? 0.9 : 0.4)
                    ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
