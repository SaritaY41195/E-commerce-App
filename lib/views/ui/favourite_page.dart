import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/commomnContainer.dart';
import 'package:flutter_e_commerce_app/common/common_button.dart';
import 'package:flutter_e_commerce_app/views/ui/home_page.dart';
import 'package:provider/provider.dart';

import '../../providers/favourite_provider.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  var favouriteProvider;
  @override
  void initState() {
    super.initState();
    favouriteProvider = Provider.of<FavProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite'),
        backgroundColor: const Color.fromRGBO(117, 118, 140, 0.6),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: CommonButton(
            height: MediaQuery.sizeOf(context).height*0.08,
              width: MediaQuery.sizeOf(context).width,
              title: 'Add to favourites',
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Consumer<FavProvider>(
        builder: (context, favouriteProvider, Widget? child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              favouriteProvider.favouriteList.isEmpty
                  ? const Center(
                      child: Text(
                        'No favourites',
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  : Flexible(
                      child: ListView.builder(
                          itemCount: favouriteProvider.favouriteList.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            var favouriteItem =
                                favouriteProvider.favouriteList[index];
                            print(favouriteItem);
                            return Column(
                              children: [
                                Card(
                                  child: ListTile(
                                    title: Text(favouriteItem.name),
                                    subtitle: Text(favouriteItem.description),
                                    leading: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage(favouriteItem.image),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    trailing: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '\u{20B9}${favouriteItem.price.toString()}',
                                          style: const TextStyle(fontSize: 22),
                                        ),

                                         Row(
                                            textDirection: TextDirection.ltr,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const CommonContainer(height: 20, width: 30, color: Colors.black38, child: Center(
                                                  child:  Text(
                                                    '-',textAlign: TextAlign.center,
                                                    style: TextStyle(fontSize: 20, color: Colors.white),
                                                  )),),
                                              Text(favouriteItem.quantity.toString()),
                                              const CommonContainer(height: 20, width: 30, color: Colors.black38, child: Center(
                                                  child:  Text(
                                                    '+',textAlign: TextAlign.center,
                                                    style: TextStyle(fontSize: 20, color: Colors.white),
                                                  )),),
                                            ],
                                          ),

                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
            ],
          );
        },
      ),
    );
  }
}
