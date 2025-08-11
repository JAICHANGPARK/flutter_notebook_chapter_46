import 'dart:ui';

class Furniture {
  String? title;
  String? price;
  String? category;
  int? rating;
  Color? backgroundColor;

  ///windows Alt + Insert
  Furniture({
    this.title,
    this.price,
    this.rating,
    this.category = "Chair",
    this.backgroundColor,
  });
}
