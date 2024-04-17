import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/models/kids_sneakers_model.dart';
import 'package:flutter_e_commerce_app/models/latest_shoes_model.dart';
import 'package:flutter_e_commerce_app/models/product_card_model.dart';
import 'package:flutter_e_commerce_app/models/women_sneakers_model.dart';
import 'package:flutter_e_commerce_app/views/shared/appStyle.dart';

import '../shared/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);
  List<ProductSneakersModel> menSneakersModel = ProductSneakersModel.menSneakersData;
  List<WomenSneakersModel> womenSneakersModel =
      WomenSneakersModel.womenSneakersData;
  List<KidsSneakersModel> kidSneakersModel = KidsSneakersModel.kidsSneakersData;
  List<LatestShoesModel> latestShoesModel = LatestShoesModel.latestShoesData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child:
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/back.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 8, bottom: 15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Athletics Shoes',
                      style: appStyleHL(42, Colors.white, FontWeight.bold, 1.5),
                    ),
                    Text(
                      'Collection',
                      style:
                          appStyleHL(30, Colors.white, FontWeight.normal, 1.2),
                    ),
                    TabBar(
                        padding: EdgeInsets.zero,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.transparent,
                        isScrollable: true,
                        controller: _tabController,
                        labelColor: Colors.white,
                        labelStyle: appStyle(24, Colors.white, FontWeight.bold),
                        unselectedLabelColor: Colors.grey.withOpacity(0.7),
                        tabs: const [
                          Tab(text: 'Men Shoes'),
                          Tab(text: 'Women Shoes'),
                          Tab(text: 'Kids Shoes'),
                        ]),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.25),
              child: Container(
                padding: const EdgeInsets.only(left: 12),
                child: TabBarView(controller: _tabController, children: [
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.405,
                        child: ListView.builder(
                            itemCount: menSneakersModel.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    ProductCard(item: menSneakersModel[index]),
                              );
                            }),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Latest  Shoes",
                                  style: appStyle(
                                      24, Colors.black, FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Show All",
                                      style: appStyle(
                                          22, Colors.black, FontWeight.normal),
                                    ),
                                    const Icon(
                                      Icons.arrow_circle_right,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
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
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.405,
                        child: ListView.builder(
                            itemCount: womenSneakersModel.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    ProductCard(item: menSneakersModel[index]),
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.405,
                        child: ListView.builder(
                            itemCount: kidSneakersModel.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    ProductCard(item: menSneakersModel[index]),
                              );
                            }),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
