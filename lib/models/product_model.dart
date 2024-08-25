class ProductModel {
  String image;
  String brandName;
  String productName;
  int price;
  String productType;

  ProductModel(
      {required this.image,
      required this.brandName,
      required this.productName,
      required this.price,
      required this.productType});

  static List<ProductModel> getAllProducts() {
    List<ProductModel> products = [
      ProductModel(
          image: "assets/images/product-corsx-low-ph.png",
          brandName: "COSRX",
          productName: "Low PH Good Morning",
          productType: "Cleanser",
          price: 61000),
      ProductModel(
          image: "assets/images/product-skeentipik-ceramide.png",
          brandName: "SKINTIFIC",
          productName: "5x Ceramide Moisturizer",
          productType: "Moisturizer",
          price: 120000),
      ProductModel(
          image: "assets/images/product-ajarine-sunscreen.png",
          brandName: "AZARINE",
          productName: "Hydro Suncreen Gel",
          productType: "Suncreen",
          price: 65000),
      ProductModel(
          image: "assets/images/product-pure-paw-paw-ointment.png",
          brandName: "PURE POW POW",
          productName: "Ointment",
          productType: "Cleanser",
          price: 63000),
    ];

    return products;
  }
}
