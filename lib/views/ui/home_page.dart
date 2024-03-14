import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/views/shared/appStyle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/shoes/bg.jpeg"),
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
                      style: appStyleHL(40, Colors.white, FontWeight.bold, 1.5),
                    ),
                    Text(
                      'Collection',
                      style:
                          appStyleHL(30, Colors.white, FontWeight.normal, 1.2),
                    ),
                  ],
                ),
              ),
            ),
            TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.transparent,
                isScrollable: true,
                controller: _tabController,
                labelColor: Colors.white,
                labelStyle: appStyle(24, Colors.white, FontWeight.bold),
                unselectedLabelColor: Colors.grey.withOpacity(0.3),
                tabs: const [
                  Tab(text: 'Men Shoes'),
                  Tab(text: 'Women Shoes'),
                  Tab(text: 'Kids Shoes'),
                ]),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.265),
              child: TabBarView(controller: _tabController, children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.405,
                      color: Colors.amber,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.405,
                      color: Colors.amber,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.405,
                      color: Colors.amber,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.405,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
