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
          favouriteProvider.favouriteList.isEmpty
              ? const Center(
            child: Text(
              'Add to favourites',
              style: TextStyle(color: Colors.blue),
            ),
          )
              : Flexible(
            child: ListView.builder(
                itemCount: favouriteProvider.favouriteList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var cartItem = favouriteProvider.favouriteList[index];
                  return Column(
                    children: [
                      Card(
                        child: ListTile(
                          title: Text(cartItem.name),
                          subtitle: Text(cartItem.description),
                          leading: Container(
                            height:
                            MediaQuery.of(context).size.height * 0.2,
                            width:
                            MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(cartItem.image),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          trailing: Column(
                            children: [
                              Text(
                                  '\u{20B9}${cartItem.price.toString()}'),
                              // getIncreDecreWidget(cartItem.quantity),
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
