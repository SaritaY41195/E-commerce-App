import 'package:flutter/material.dart';

import '../../models/latest_shoes_model.dart';

class LatestShoesWidget extends StatelessWidget {
  const LatestShoesWidget({
    super.key,
    required this.latestShoesModel,
  });

  final List<LatestShoesModel> latestShoesModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13,
      child: ListView.builder(
          itemCount: latestShoesModel.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 0.8,
                      spreadRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                height:
                MediaQuery.of(context).size.height * 0.12,
                width:
                MediaQuery.of(context).size.width * 0.28,
                child: Image.asset(
                    latestShoesModel[index].image),
              ),
            );
          }),
    );
  }
}