import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/Favourite_provider.dart';


class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // CommonButton(height: MediaQuery.sizeOf(context).height*0.07,title: 'Favourite', onTap: (){}),
          Flexible(
            child: ListView.builder(
                itemCount: favouriteProvider.favouriteList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var FavouriteItem = favouriteProvider.favouriteList[index];
                  return Column(
                    children: [
                      Card(
                        child: ListTile(
                          title: Text(FavouriteItem.name),
                          subtitle: Text(FavouriteItem.description),
                          leading: Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(FavouriteItem.image),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          trailing: Column(
                            children: [
                              Text('\u{20B9}${FavouriteItem.price.toString()}'),
                              // getIncreDecreWidget(FavouriteItem.quantity),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
