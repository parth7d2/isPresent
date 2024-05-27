import 'package:flutter/material.dart';

import 'font_util.dart';

class ShopCard extends StatelessWidget {
  final String imageUrl;
  final String shopName;

  ShopCard({
    required this.imageUrl,
    required this.shopName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: const EdgeInsets.only(left:16.0, right: 0, top: 0, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(height: 8),
          Text(
            shopName,
            style: smallTextBold(size: 14),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}