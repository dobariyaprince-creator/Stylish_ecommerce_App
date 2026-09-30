class ProductsModel {
  final String images;
  final String title;
  final String description;
  final String price;
  final String rating;

  ProductsModel({
    required this.images,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
  });
}
final List<ProductsModel> products = [
  ProductsModel(
    images: "assets/images/hoodies.png",
    title: "Black Winter...",
    description: "Autumn And Winter Casual cotton-padded jacket...",
    price: "₹499",
    rating: "assets/images/stars.png",
  ),

  ProductsModel(
    images: "assets/images/onepic.png",
    title: "Black Dress",
    description: "Solid Black Dress for Women, Sexy Chain Shorts Ladi.....",
    price: "₹2,000",
    rating: "assets/images/stars.png",
  ),

  ProductsModel(
    images: "assets/images/dress.png",
    title: "Flare Dress",
    description: "Antheaa Black & Rust Orange Floral Print Tiered Midi F...",
    price: "₹1,990",
    rating: "assets/images/stars.png",
  ),

  ProductsModel(
    images: "assets/images/sports_shoes.png",
    title: "Jordan Stay",
    description: "The classic Air Jordan 12 to create a shoe that's fres...",
    price: "₹4,999",
    rating: "assets/images/stars.png",
  ),

  ProductsModel(
    images: "assets/images/ps4.png",
    title: "Sony PS4",
    description: "Sony PS4 Console, 1TB Slim with 3 Games: Gran Turis...",
    price: "₹1,990",
    rating: "assets/images/stars.png",
  ),

  ProductsModel(
    images: "assets/images/camera.png",
    title: "D7200 Digital C...",
    description: "D7200 Digital Camera (Nikon) In New Area...",
    price: "₹26,999",
    rating: "assets/images/stars.png",
  ),

  ProductsModel(
    images: "assets/images/protein_box.png",
    title: "Muscle Blaze..",
    description: "NUTRITIONAL POWERHOUSE: MuscleBl...",
    price: "3,900",
    rating: "assets/images/stars.png",
  ),

  ProductsModel(
    images: "assets/images/shirt.png",
    title: "Mens Starry",
    description: "Mens Starry Sky Printed Shirt 100% Cotton Fabric",
    price: "399",
    rating: "assets/images/stars.png",
  ),

  ProductsModel(
    images: "assets/images/dress1.png",
    title: "Pink Embroide..",
    description: "EARTHEN Rose Pink Embroidered Tiered Max...",
    price: "1,900",
    rating: "assets/images/stars.png",
  ),

  ProductsModel(
    images: "assets/images/top.png",
    title: "Denim dress",
    description: "Blue cotton denim dress Look 2 Printed cotton dr...",
    price: "999",
    rating: "assets/images/stars.png",
  ),
];
