import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';

class ProductDetailReview extends StatelessWidget {
  const ProductDetailReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return SizedBox(
            width: double.infinity,
            height: 170,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "John",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(
                            child: Text(
                              "Tanggal: 10 Juli 2004",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 100,
                            height: 22,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Icon(
                                  Icons.star,
                                  color: buttonColor,
                                  size: 20,
                                );
                              },
                              itemCount: 5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Expanded(
                        child: Text(
                          "Saya sangat suka dengan Skintific Hydrating Face Serum ini! Kulit saya terasa lebih lembap dan halus sejak pemakaian pertama. Tidak lengket dan cepat meresap. Sangat direkomendasikan!",
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemCount: 5,
      ),
    );
  }
}
