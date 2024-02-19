import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class PromotionalAdsModel extends Equatable {
  const PromotionalAdsModel(
      {required this.promotions, required this.categories});

  final List<Promotion> promotions;
  final List<ShopCategory> categories;
  @override
  List<Object?> get props {
    return [];
  }
}

class ImageModel {
  const ImageModel(
      {required this.id, required this.src, this.heigt, this.width});
  final String id;
  final String src;
  final double? heigt;
  final double? width;
}

class Promotion {
  const Promotion({
    required this.backgroundColor,
    required this.logo,
    required this.title,
    required this.discount,
    required this.description,
  });
  final Color backgroundColor;
  final ImageModel logo;
  final String title;
  final String discount;
  final String description;
}

class ShopCategory {
  const ShopCategory(
      {required this.id,
      required this.title,
      required this.icon,
      this.backgroundColor,
      this.color});
  final String id;
  final String title;
  final ImageModel icon;
  final Color? backgroundColor;
  final Color? color;
}
