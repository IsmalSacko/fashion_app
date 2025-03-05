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
    description: "Iphone 12 pro max 256Go",
    price: "190.56",
    priceInFcfa: 124999.16592,
    zoneCity: "Kamako",
    zone: 1,
    zoneName: "Kalaban-coura",
    available: true,
    image:
        "https://d3jks2a8ttfomr.cloudfront.net/articles/meilleur-cellulaire-24-2.webp",
  ),
  Categories(
    id: 2,
    title: "Android",
    description: "Téléphone ",
    price: "600.00",
    priceInFcfa: 393574.2,
    zoneCity: "Kamako",
    zone: 5,
    zoneName: "Hamdalaye ACI",
    available: true,
    image:
        "https://www.jaclem.com/53321-large_default/smartphone-samsung-a06-464g-noir.jpg",
  ),
  Categories(
    id: 3,
    title: "Ecouteur",
    description: "Iphone 11 pro max 256Go",
    price: "763.00",
    priceInFcfa: 500495.191,
    zoneCity: "Kamako",
    zone: 5,
    zoneName: "Hamdalaye ACI",
    available: true,
    image:
        "https://images.frandroid.com/wp-content/uploads/2023/04/try-galaxy-iphone.jpg",
  ),
  Categories(
    id: 4,
    title: "Batterie",
    description: "Samsung Galaxy S5 G900F",
    price: "763.00",
    priceInFcfa: 500495.191,
    zoneCity: "Kamako",
    zone: 1,
    zoneName: "Kalaban-coura",
    available: true,
    image:
        "https://static.fnac-static.com/multimedia/Images/D7/D7/BC/D6/14073047-3-1520-1/tsp20200213132359/Samsung-Galaxy-S5-G900F-16Go-16MP-Debloque-5-1-pouces-ecran-tactile-telephone-portable-blanc.jpg",
  ),
  Categories(
    id: 5,
    title: "Samsung",
    description: "Samsung Galaxy S6 ",
    price: "763.00",
    priceInFcfa: 500495.191,
    zoneCity: "Kamako",
    zone: 1,
    zoneName: "Kalaban-coura",
    available: true,
    image:
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

              Caractéristiques principales :
              - Écran : Super Retina XDR OLED de 6,5 pouces avec des couleurs vibrantes et des noirs profonds.
              - Capacité : 256 Go de stockage pour tous vos fichiers multimédias.
              - Performances : Puce A13 Bionic pour une expérience rapide et fluide.
              - Caméra : Triple appareil photo (Ultra grand-angle, Grand-angle, Téléobjectif) pour des photos et vidéos de qualité professionnelle.
              - Autonomie : Batterie longue durée avec recharge rapide et sans fil.
              - Design : Boîtier en acier inoxydable, résistant à l’eau et à la poussière (certifié IP68).

              Idéal pour :
              - Les amateurs de photographie et de vidéos.
              - Ceux qui ont besoin d’un espace de stockage généreux.
              - Les utilisateurs exigeants recherchant un smartphone durable et élégant.
''',
    price: "190.56",
    priceInFcfa: 620000,
    zoneCity: "Kamako",
    types: ["Apple", "Ios", "Iphone"],
    sizes: ["7", "8", "9", "10", "11"],
    zone: 1,
    zoneName: "Kalaban-coura",
    available: true,
    image: [
      "https://d3jks2a8ttfomr.cloudfront.net/articles/meilleur-cellulaire-24-2.webp",
      "https://d3jks2a8ttfomr.cloudfront.net/articles/meilleur-cellulaire-24-2.webp",
      "https://d3jks2a8ttfomr.cloudfront.net/articles/meilleur-cellulaire-24-2.webp",
    ],

    ratings: 4.5, // Ajout des évaluations
  ),
  Products(
    id: 2,
    title: "Android",
    description: "Téléphone ",
    price: "600.00",
    priceInFcfa: 390000,
    zoneCity: "Kamako",
    types: ["Android", "Samsung", "Smartphone"],
    sizes: ["7", "8", "9", "10", "11"],
    zone: 5,
    zoneName: "Hamdalaye ACI",
    available: true,
    image: [
      "https://www.jaclem.com/53321-large_default/smartphone-samsung-a06-464g-noir.jpg",
      "https://www.jaclem.com/53321-large_default/smartphone-samsung-a06-464g-noir.jpg",
      "https://www.jaclem.com/53321-large_default/smartphone-samsung-a06-464g-noir.jpg",
    ],

    ratings: 4.0, // Ajout des évaluations
  ),
  Products(
    id: 3,
    title: "Ecouteur",
    description: '''
              L'iPhone 11 Pro Max est un smartphone haut de gamme d'Apple, offrant des performances puissantes, un design élégant et une grande capacité de stockage. Avec ses 256 Go, il est idéal pour stocker des photos, vidéos, applications et fichiers sans souci d’espace.

              Caractéristiques principales :
              - Écran : Super Retina XDR OLED de 6,5 pouces avec des couleurs vibrantes et des noirs profonds.
              - Capacité : 256 Go de stockage pour tous vos fichiers multimédias.
              - Performances : Puce A13 Bionic pour une expérience rapide et fluide.
              - Caméra : Triple appareil photo (Ultra grand-angle, Grand-angle, Téléobjectif) pour des photos et vidéos de qualité professionnelle.
              - Autonomie : Batterie longue durée avec recharge rapide et sans fil.
              - Design : Boîtier en acier inoxydable, résistant à l’eau et à la poussière (certifié IP68).

              Idéal pour :
              - Les amateurs de photographie et de vidéos.
              - Ceux qui ont besoin d’un espace de stockage généreux.
              - Les utilisateurs exigeants recherchant un smartphone durable et élégant.
''',
    price: "763.00",
    priceInFcfa: 545000,
    zoneCity: "Kamako",
    types: [
      "Ecouteur",
      "Iphone",
    ],
    sizes: ["7", "8", "9", "10", "11"],
    zone: 5,
    zoneName: "Hamdalaye ACI",
    available: true,
    image: [
      "https://www.shutterstock.com/image-vector/vector-illustration-set-smartphone-accessories-600nw-1145418938.jpg",
      "https://www.shutterstock.com/image-vector/vector-illustration-set-smartphone-accessories-600nw-1145418938.jpg",
    ],
    ratings: 3.8, // Ajout des évaluations
  ),
  // Products(
  //   id: 4,
  //   title: "Batterie",
  //   description: "Samsung Galaxy S5 G900F",
  //   price: "763.00",
  //   priceInFcfa: 500495.191,
  //   zoneCity: "Kamako",
  //   colors: ["black", "white", "red"],
  //   zone: 1,
  //   zoneName: "Kalaban-coura",
  //   available: true,
  //   image:
  //       "https://www.batteriesmontgallet.com/images/smartphones_telephones_mobiles_batteries.png",
  //   ratings: 4.2, // Ajout des évaluations
  // ),
  Products(
    id: 5,
    title: "Samsung",
    description: "Samsung Galaxy S6 ",
    price: "763.00",
    priceInFcfa: 540000,
    zoneCity: "Kamako",
    types: ["Android", "Samsung", "Smartphone"],
    sizes: ["7", "8", "9", "10", "11"],
    zone: 1,
    zoneName: "Kalaban-coura",
    available: true,
    image: [
      "https://static.fnac-static.com/multimedia/Images/D7/D7/BC/D6/14073047-3-1520-1/tsp20200213132359/Samsung-Galaxy-S5-G900F-16Go-16MP-Debloque-5-1-pouces-ecran-tactile-telephone-portable-blanc.jpg",
      "https://static.fnac-static.com/multimedia/Images/D7/D7/BC/D6/14073047-3-1520-1/tsp20200213132359/Samsung-Galaxy-S5-G900F-16Go-16MP-Debloque-5-1-pouces-ecran-tactile-telephone-portable-blanc.jpg",
    ],

    ratings: 4.7, // Ajout des évaluations
  ),
];
