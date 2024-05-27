import 'package:flutter/material.dart';
import 'package:now_won/user_interface/custom_colors.dart';
import 'package:now_won/user_interface/font_util.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String price;

  final double wSize;
  final double hSize;
  final double titleSize;
  final double subTitleSize;

  ProductCard({
    required this.imageUrl,
    required this.productName,
    required this.price,
    required this.wSize,
    required this.hSize,
    required this.titleSize,
    required this.subTitleSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wSize,
      margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: CustomColors.surfaceContainer_
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
            child: Image.network(
              imageUrl,
              height: hSize,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              productName,
              style: smallTextBold(size: titleSize),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              price,
              style: smallText(size: subTitleSize, tc: CustomColors.neutral_variant50),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}