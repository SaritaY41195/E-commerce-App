import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/views/shared/product_card.dart';

import '../../models/product_card_model.dart';

class CommonTabWidget extends StatelessWidget {
  const CommonTabWidget({
    super.key,
    required this.sneakersModel,
  });

  final List<ProductSneakersModel> sneakersModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.405,
      child: ListView.builder(
          itemCount: sneakersModel.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              ProductCard(item: sneakersModel[index]),
            );
          }),
    );
  }
}