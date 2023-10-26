import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SearchBar(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          Colors.grey.withOpacity(.1),
        ),
        hintText: 'Search for products',
        hintStyle: MaterialStateProperty.all(
          const TextStyle(color: Colors.grey),
        ),
        leading: const Icon(
          Icons.search,
          color: Colors.black54,
        ),
        trailing: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/icons/filter.svg',
            ),
          ),
        ],
      ),
    );
  }
}
