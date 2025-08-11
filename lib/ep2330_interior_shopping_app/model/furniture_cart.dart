import 'dart:ui';

import 'furniture.dart';

class FurnitureCart extends Furniture {
  int? count;


  FurnitureCart({
    this.count,
    super.title,
    super.price,
    super.rating,
    super.backgroundColor,
  });
}
