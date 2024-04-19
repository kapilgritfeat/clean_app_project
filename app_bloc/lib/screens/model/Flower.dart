import 'package:equatable/equatable.dart';

class Flower extends Equatable {
  final int? productId;
  final String? category;
  final String? name;
  final String? instructions;
  final String? photo;
  final double? price;

  Flower(
      {this.productId,
      this.category,
      this.name,
      this.instructions,
      this.photo,
      this.price});

  factory Flower.fromJson(Map<String, dynamic> json) {
    return Flower(
      productId: json['productId'],
      category: json['category'],
      name: json['name'],
      instructions: json['instructions'],
      photo: json['photo'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'category': category,
      'name': name,
      'instructions': instructions,
      'photo': photo,
      'price': price,
    };
  }

  @override
  List<Object?> get props =>
      [productId, category, name, instructions, photo, price];
}

class FlowerList {
  final List<Flower> flowers;

  FlowerList(this.flowers);

  factory FlowerList.fromJson(List<dynamic> json) {
    return FlowerList(json.map((e) => Flower.fromJson(e)).toList());
  }
}
