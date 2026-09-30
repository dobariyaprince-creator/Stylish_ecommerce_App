class Model2Page {
  final String images;
  final String title;
  final String price;
  final String offprice;
  final String offpersent;

  Model2Page({
    required this.images,
    required this.title,
    required this.price,
    required this.offprice,
    required this.offpersent,
  });
}

List<Model2Page> model2page = [
  Model2Page(
    images: "assets/images/watch.png",
    title: "IWC Schaffhausen 2021 Pilots Watch SIHH 2019 44mm",
    price: "₹650",
    offprice: "₹1599",
    offpersent: "  60%off",
  ),
  Model2Page(
    images: "assets/images/shoes.png",
    title: "Labbin White Sneakers For Men and Female",
    price: "₹650",
    offprice: "₹1250",
    offpersent: "  70%off",
  ),
  Model2Page(
    images: "assets/images/bags.png",
    title: "Mammon Women's Handbag '(Set of 3, Beige)'",
    price: "₹750",
    offprice: "₹1999",
    offpersent: "  50%off",
  ),
  Model2Page(
    images: "assets/images/sandle.png",
    title: "Do Bhai Women Wedges Sandal (Butterfly)",
    price: "₹750",
    offprice: "₹1499",
    offpersent: "  60%off",
  ),
  Model2Page(
    images: "assets/images/lipstick.png",
    title: "Lakme Enrich Matte Lipstick - Shade RM1(4.7gm)",
    price: "₹950",
    offprice: "₹3500",
    offpersent: "  60%off",
  ),
];
