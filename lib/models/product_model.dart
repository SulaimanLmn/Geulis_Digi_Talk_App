class ProductModel {
  String image;
  String detailImage;
  String brandName;
  String productName;
  int price;
  String productType;
  String description;
  int quantity;

  ProductModel({
    required this.image,
    required this.detailImage,
    required this.brandName,
    required this.productName,
    required this.price,
    required this.productType,
    required this.description,
    this.quantity = 1,
  });

  static List<ProductModel> getAllProducts() {
    List<ProductModel> products = [
      ProductModel(
        image: "assets/images/product-corsx-low-ph.png",
        detailImage: "",
        brandName: "COSRX",
        productName: "Low PH Good Morning",
        productType: "Cleanser",
        price: 61000,
        description:
            "A gentle, low pH cleanser that helps maintain the skin's optimal pH balance.",
      ),
      ProductModel(
        image: "assets/images/product-skeentipik-ceramide.png",
        detailImage: "assets/images/product-detail-skintific.png",
        brandName: "SKINTIFIC",
        productName: "5x Ceramide Moisturizer",
        productType: "Moisturizer",
        price: 120000,
        description:
            "A rich moisturizer formulated with 5 types of ceramides to strengthen the skin barrier.",
      ),
      ProductModel(
        image: "assets/images/product-ajarine-sunscreen.png",
        detailImage: "",
        brandName: "AZARINE",
        productName: "Hydro Suncreen Gel",
        productType: "Sunscreen",
        price: 65000,
        description:
            "A lightweight sunscreen gel that provides high UV protection with a hydrating formula.",
      ),
      ProductModel(
        image: "assets/images/product-pure-paw-paw-ointment.png",
        detailImage: "",
        brandName: "PURE POW POW",
        productName: "Ointment",
        productType: "Cleanser",
        price: 63000,
        description:
            "A versatile ointment that soothes and protects dry or irritated skin.",
      ),
    ];

    return products;
  }
}
