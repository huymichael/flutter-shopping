import 'package:flutter/cupertino.dart';

class FeaturedItem {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  FeaturedItem(
      {@required this.id,
      this.name,
      this.description,
      this.imageUrl,
      this.price});
}
