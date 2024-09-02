import 'package:flutter/material.dart';
import 'package:geulis_digitalk/widgets/product_rating_item.dart';

class RatingPage extends StatelessWidget {
  const RatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          return const ProductRatingItem();
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemCount: 2,
      ),
    );
  }
}
