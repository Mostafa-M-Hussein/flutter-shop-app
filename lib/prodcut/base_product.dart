// @dart=2.9

import 'package:flutter_shop/category/base_categorty.dart';
import 'package:flutter_shop/category/category_controller.dart';
import 'package:flutter_shop/discount/base_discount.dart';
import 'package:flutter_shop/discount/discount_controller.dart';
import 'package:flutter_shop/image/base_image.dart';
import 'package:flutter_shop/image/image_controller.dart';
import 'package:flutter_shop/product_option/base_option.dart';
import 'package:flutter_shop/tag/base_tag.dart';
import 'package:flutter_shop/tag/tag_controller.dart';
class BaseProdcut {
  String id;

  String title;

  String description;

  double price;

  double quantity;

  List<BaseImage> images;

  List<BaseProductOption> options;

  List<BaseCategory> categories;

  List<BaseTag> tags;

  List<BaseDiscount> discount;

  BaseProdcut(this.id, this.title, this.description, this.quantity, this.images,
      this.options, this.categories, this.tags, this.discount);

  BaseProdcut.fromJson(Map<String, dynamic> JsonObject) {
    this.id = JsonObject['id'];
    this.title = JsonObject['title'];
    this.description = JsonObject['description'];
    this.price = JsonObject['price'];
    this.quantity = JsonObject['quantity'];
    this.images = ImageController.toImages(JsonObject['images']);
    this.categories = CategoryController.toCategories(JsonObject['categories']);
    this.tags = TagController.toTags(JsonObject['tags']);
    this.discount = DiscountController.toDiscount(JsonObject['discount']);
  }
}
