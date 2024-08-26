import 'package:flutter/material.dart';
import 'package:geulis_digitalk/models/product_model.dart';
import 'package:geulis_digitalk/theme/color.dart';

class ProductSection extends StatefulWidget {
  const ProductSection({super.key});

  @override
  State<ProductSection> createState() => _ProductSectionState();
}

class _ProductSectionState extends State<ProductSection> {
  final _productType = [
    "All",
    "Cleanser",
    "Toner",
    "Moisturizer",
    "Serum & Essence",
    "Facial Mask",
    "Suncreen"
  ];

  List<ProductModel> product = ProductModel.getAllProducts();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          width: double.infinity,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        color: Colors.grey.withOpacity(0.1),
                      )
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(_productType[index]),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
              itemCount: _productType.length),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: double.infinity,
          height: 245,
          child: GridView.builder(
            itemCount: product.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.75, crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(3),
                width: 100,
                height: 100,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset(product[index].image),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        product[index].brandName,
                        maxLines: 1,
                        style: TextStyle(color: searchHintColor),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        product[index].productName,
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Rp ${product[index].price}',
                        maxLines: 1,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                          height: 33,
                          alignment: Alignment.center,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: homePageButtonColor,
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed('/productdetailpage');
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              child: Text(
                                "Add to Chart",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
