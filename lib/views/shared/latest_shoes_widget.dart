import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/common_button.dart';
import '../../models/latest_shoes_model.dart';

class LatestShoesWidget extends StatelessWidget {
  const LatestShoesWidget({
    super.key,
    required this.latestShoesModel,
  });

  final List<LatestShoesModel> latestShoesModel;

  @override
  Widget build(BuildContext context) {
    final data = TextEditingController();
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
          itemCount: latestShoesModel.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Show Details'),
                          content: TextField(
                            controller: data,
                          ),
                          actions: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CommonButton(title: 'Cancel', onTap: (){
                                  Navigator.pop(context,data);
                                }),
                                CommonButton(title: 'Next', onTap: (){}),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
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
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.28,
                      child: Image.asset(latestShoesModel[index].image),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
