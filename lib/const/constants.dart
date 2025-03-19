import 'package:flutter/material.dart';
import 'package:mobile_shop/const/resource.dart';
import 'package:mobile_shop/src/categories/models/categories_model.dart';
import 'package:mobile_shop/src/products/models/product_model.dart';
import '../common/utils/kcolors.dart';

LinearGradient kGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kWhite,
    Kolors.kPrimary,
  ],
);

LinearGradient kPGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kPrimaryLight.withOpacity(0.7),
    Kolors.kPrimary,
  ],
);

LinearGradient kBtnGradient = const LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kWhite,
  ],
);

BorderRadiusGeometry kClippingRadius = const BorderRadius.only(
  topLeft: Radius.circular(20),
  topRight: Radius.circular(20),
);

BorderRadiusGeometry kRadiusAll = BorderRadius.circular(12);

BorderRadiusGeometry kRadiusTop = const BorderRadius.only(
  topLeft: Radius.circular(9),
  topRight: Radius.circular(9),
);

BorderRadiusGeometry kRadiusBottom = const BorderRadius.only(
  bottomLeft: Radius.circular(12),
  bottomRight: Radius.circular(12),
);

Widget Function(BuildContext, String)? placeholder = (p0, p1) => Image.asset(
      R.ASSETS_IMAGES_PLACEHOLDER_WEBP,
      fit: BoxFit.cover,
    );

Widget Function(BuildContext, String, Object)? errorWidget =
    (p0, p1, p3) => Image.asset(
          R.ASSETS_IMAGES_PLACEHOLDER_WEBP,
          fit: BoxFit.cover,
        );

List<String> images = [
  "https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fslider1.png?alt=media&token=8b27e621-e5ea-4ba4-ab15-0302d02c75f3",
  "https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fslider1.png?alt=media&token=8b27e621-e5ea-4ba4-ab15-0302d02c75f3",
  "https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fslider1.png?alt=media&token=8b27e621-e5ea-4ba4-ab15-0302d02c75f3",
  "https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fslider1.png?alt=media&token=8b27e621-e5ea-4ba4-ab15-0302d02c75f3",
  "https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fslider1.png?alt=media&token=8b27e621-e5ea-4ba4-ab15-0302d02c75f3",
];

// [{"title":"Sneakers","id":3,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Frunning_shoe.svg?alt=media&token=0dcb0e57-315e-457c-89dc-1233f6421368"},{"title":"T-Shirts","id":5,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fjersey.svg?alt=media&token=6ca7eabd-54b3-47bb-bb8f-41c3a8920171"},{"title":"Jackets","id":4,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fjacket.svg?alt=media&token=ffdc9a1e-917f-4e8f-b58e-4df2e6e8587e"},{"title":"Dresses","id":2,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fdress.svg?alt=media&token=cf832383-4c8a-4ee1-9676-b66c4d515a1c"},{"title":"Pants","id":1,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fjeans.svg?alt=media&token=eb62f916-a4c2-441a-a469-5684f1a62526"}]

List<Categories> categories = [
  Categories(
    id: 1,
    title: "Iphone",
    imageUrl:
        "https://www.jaclem.com/53321-large_default/smartphone-samsung-a06-464g-noir.jpg",
  ),
  Categories(
    id: 2,
    title: "Android",
    imageUrl:
        "https://www.jaclem.com/53321-large_default/smartphone-samsung-a06-464g-noir.jpg",
  ),
  Categories(
    id: 3,
    title: "Ecouteur",
    imageUrl:
        "https://images.frandroid.com/wp-content/uploads/2023/04/try-galaxy-iphone.jpg",
  ),
  Categories(
    id: 4,
    title: "Batterie",
    imageUrl:
        "https://static.fnac-static.com/multimedia/Images/D7/D7/BC/D6/14073047-3-1520-1/tsp20200213132359/Samsung-Galaxy-S5-G900F-16Go-16MP-Debloque-5-1-pouces-ecran-tactile-telephone-portable-blanc.jpg",
  ),
  Categories(
    id: 5,
    title: "Samsung",
    imageUrl:
        "https://static.fnac-static.com/multimedia/Images/D7/D7/BC/D6/14073047-3-1520-1/tsp20200213132359/Samsung-Galaxy-S5-G900F-16Go-16MP-Debloque-5-1-pouces-ecran-tactile-telephone-portable-blanc.jpg",
  ),
];

// var products = [
//   {
//     "id": 3,
//     "title": "Converse Chuck Taylor All Star",
//     "price": 60.0,
//     "description":
//         "The classic Chuck Taylor All Star sneaker from Converse, featuring a timeless design and comfortable fit.",
//     "is_featured": true,
//     "clothesType": "kids",
//     "ratings": 4.333333333333333,
//     "colors": ["black", "white", "red"],
//     "imageUrls": [
//       "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp",
//       "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp"
//     ],
//     "sizes": ["7", "8", "9", "10", "11"],
//     "created_at": "2024-06-06T07:57:45Z",
//     "category": 3,
//     "brand": 1
//   },
//   {
//     "id": 1,
//     "title": "LV Trainers",
//     "price": 798.88,
//     "description":
//         "LV Trainers blend sleek style with athletic functionality, featuring bold logos, premium materials, and comfortable designs that elevate your everyday look with a touch of luxury.",
//     "is_featured": true,
//     "clothesType": "women",
//     "ratings": 4.5,
//     "colors": ["white", "black", "red"],
//     "imageUrls": [
//       "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp",
//       "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp"
//     ],
//     "sizes": ["7", "8", "9", "10", "11"],
//     "created_at": "2024-06-06T07:49:15Z",
//     "category": 3,
//     "brand": 1
//   },
//   {
//     "id": 2,
//     "title": "Adidas Ultraboost",
//     "price": 180.0,
//     "description":
//         "xperience the comfort and energy return of the Ultraboost, designed for running and everyday wear.",
//     "is_featured": true,
//     "clothesType": "unisex",
//     "ratings": 5.0,
//     "colors": ["navy", "grey", "blue"],
//     "imageUrls": [
//       "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp",
//       "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp"
//     ],
//     "sizes": ["7", "8", "9", "10", "11"],
//     "created_at": "2024-06-06T07:55:20Z",
//     "category": 3,
//     "brand": 1
//   }
// ];

// List<Products> products = [
//   Products(
//       id: 3,
//       title: "Converse Chuck Taylor All Star",
//       price: 60.0,
//       description:
//           "The classic Chuck Taylor All Star sneaker from Converse, featuring a timeless design and comfortable fit.",
//       isFeatured: true,
//       clothesType: "kids",
//       ratings: 4.333333333333333,
//       colors: ["black", "white", "red"],
//       imageUrls: [
//         "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp",
//         "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp"
//       ],
//       sizes: ["7", "8", "9", "10", "11"],
//       createdAt: DateTime.parse("2024-06-06T07:57:45Z"),
//       category: 3,
//       brand: 1),
//   Products(
//       id: 1,
//       title: "LV Trainers",
//       price: 798.88,
//       description:
//           "LV Trainers blend sleek style with athletic functionality, featuring bold logos, premium materials, and comfortable designs that elevate your everyday look with a touch of luxury.",
//       isFeatured: true,
//       clothesType: "women",
//       ratings: 4.5,
//       colors: ["white", "black", "red"],
//       imageUrls: [
//         "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp",
//         "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp"
//       ],
//       sizes: ["7", "8", "9", "10", "11"],
//       createdAt: DateTime.parse("2024-06-06T07:49:15Z"),
//       category: 3,
//       brand: 1),
//   Products(
//       id: 2,
//       title: "Adidas Ultraboost",
//       price: 180.0,
//       description:
//           "Experience the comfort and energy return of the Ultraboost, designed for running and everyday wear.",
//       isFeatured: true,
//       clothesType: "unisex",
//       ratings: 5.0,
//       colors: ["navy", "grey", "blue"],
//       imageUrls: [
//         "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp",
//         "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp"
//       ],
//       sizes: ["7", "8", "9", "10", "11"],
//       createdAt: DateTime.parse("2024-06-06T07:55:20Z"),
//       category: 3,
//       brand: 1)
// ];

String avatar =
    'https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Favatar.png?alt=media&token=7da81de9-a163-4296-86ac-3194c490ce15';

// class _buildtextfield extends StatelessWidget {
//   const _buildtextfield({
//     Key? key,
//     required this.hintText,
//     required this.controller,
//     required this.onSubmitted,
//     this.keyboard,
//     this.readOnly,
//   }) : super(key: key);

//   final TextEditingController controller;
//   final String hintText;
//   final TextInputType? keyboard;
//   final void Function(String)? onSubmitted;
//   final bool? readOnly;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 20.0),
//       child: TextField(
//           keyboardType: keyboard,
//           readOnly: readOnly ?? false,
//           decoration: InputDecoration(
//               hintText: hintText,
//               errorBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kRed, width: 0.5),
//               ),
//               focusedBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kPrimary, width: 0.5),
//               ),
//               focusedErrorBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kRed, width: 0.5),
//               ),
//               disabledBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kGray, width: 0.5),
//               ),
//               enabledBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kGray, width: 0.5),
//               ),
//               border: InputBorder.none),
//           controller: controller,
//           cursorHeight: 25,
//           style: appStyle(12, Colors.black, FontWeight.normal),
//           onSubmitted: onSubmitted),
//     );
//   }
// }

List<Products> products = [
  Products(
    id: 1,
    title: "Iphone",
    description: '''
      L'iPhone 11 Pro Max est un smartphone haut de gamme d'Apple, offrant des performances puissantes, un design élégant et une grande capacité de stockage. Avec ses 256 Go, il est idéal pour stocker des photos, vidéos, applications et fichiers sans souci d’espace.
    ''',
    price: 190.56,
    sizes: ["7", "8", "9", "10", "11"],
    colors: [
      "Noir Carbone 🖤",
      "Gris Sidéral 🌑",
      "Bleu Nuit 🔵",
      "Vert Forêt 🌿",
      "Or 🟡",
      "Argent ⚪",
      "Or Rose 🌹",
      "Bleu Pacifique 🌊",
    ],
    imageUrls: [
      "https://d3jks2a8ttfomr.cloudfront.net/articles/meilleur-cellulaire-24-2.webp",
      "https://d3jks2a8ttfomr.cloudfront.net/articles/meilleur-cellulaire-24-2.webp",
    ],
    rating: 4.5,
    isFeatured: false,
    productModel: "11 Pro Max",
    productType: "Smartphone",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    category: 1,
    marque: 1,
  ),
  Products(
    id: 2,
    title: "Samsung A06",
    description: "Téléphone Samsung A06 avec écran HD et bonne autonomie.",
    price: 600.00,
    sizes: ["7", "8", "9", "10", "11"],
    colors: ["Noir", "Blanc", "Bleu"],
    imageUrls: [
      "https://www.jaclem.com/53321-large_default/smartphone-samsung-a06-464g-noir.jpg",
      "https://www.jaclem.com/53321-large_default/smartphone-samsung-a06-464g-noir.jpg",
    ],
    rating: 4.0,
    isFeatured: true,
    productModel: "A06",
    productType: "Smartphone",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    category: 5,
    marque: 2,
  ),
  Products(
    id: 3,
    title: "Écouteurs sans fil",
    description: "Écouteurs Bluetooth avec réduction de bruit active.",
    price: 50.99,
    sizes: [],
    colors: ["Noir", "Blanc"],
    imageUrls: [
      "https://www.shutterstock.com/image-vector/vector-illustration-set-smartphone-accessories-600nw-1145418938.jpg",
      "https://www.shutterstock.com/image-vector/vector-illustration-set-smartphone-accessories-600nw-1145418938.jpg",
    ],
    rating: 3.8,
    isFeatured: false,
    productModel: "AirPods Pro",
    productType: "Accessoire",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    category: 3,
    marque: 3,
  ),
  Products(
    id: 4,
    title: "Batterie Externe 20 000mAh",
    description: "Batterie externe rapide avec USB-C et charge sans fil.",
    price: 29.99,
    sizes: [],
    colors: ["Noir", "Rouge"],
    imageUrls: [
      "https://www.batteriesmontgallet.com/images/smartphones_telephones_mobiles_batteries.png",
    ],
    rating: 4.2,
    isFeatured: true,
    productModel: "20k mAh",
    productType: "Accessoire",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    category: 4,
    marque: 4,
  ),
  Products(
    id: 5,
    title: "Samsung Galaxy S6",
    description: "Smartphone Samsung Galaxy S6 avec écran AMOLED.",
    price: 763.00,
    sizes: ["7", "8", "9", "10"],
    colors: ["Bleu", "Blanc"],
    imageUrls: [
      "https://static.fnac-static.com/multimedia/Images/D7/D7/BC/D6/14073047-3-1520-1/tsp20200213132359/Samsung-Galaxy-S5-G900F-16Go-16MP-Debloque-5-1-pouces-ecran-tactile-telephone-portable-blanc.jpg",
    ],
    rating: 4.7,
    isFeatured: false,
    productModel: "S6",
    productType: "Smartphone",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    category: 5,
    marque: 2,
  ),
];
