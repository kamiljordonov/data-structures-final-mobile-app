import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/books/pollianna.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Поллианна",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/books/ak_keme.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Ак кеме",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/books/balamdy_kantip_tarbiyalaim.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Баламды кантип тарбиялайм?",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/books/bir_olkoonun_onuguu_taryhy.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Бир өлкөнүн өнүгүү тарыхы",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/books/teryaya_nevinnost.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Теряя невинность",
    price: 7.15,
    description: description,
    rating: 4.67,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/books/vse_hrenovo.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Все хреново",
    price: 13.97,
    description: description,
    rating: 4.09,
    isFavourite: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/books/yapon_keremetinin_syry.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Япон кереметинин сыры",
    price: 11.49,
    description: description,
    rating: 4.78,
    isFavourite: true,
    isPopular: true,
  ),
];

const String description =
    "Бул китепти окусаңыз арманда калбайсыз. Аябай сонун китеп. Сөзсүз окушуңуз керек. Бул китеп…";
