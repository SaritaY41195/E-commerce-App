import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/providers/main_screen_provider.dart';
import 'package:provider/provider.dart';
import 'bottom_nav_widget.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainPageProvider>(
      builder: (context, mainPageProvider, child) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(12.0),
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomNavWidget(
                      icon: mainPageProvider.pageIndex == 0
                          ? Icons.home
                          : Icons.home_outlined,
                      onTap: () {
                        mainPageProvider.pageIndex = 0;
                      }),
                  BottomNavWidget(
                    icon: Icons.search,
                    onTap: () {
                      mainPageProvider.pageIndex = 1;
                    },
                  ),
                  BottomNavWidget(
                      icon: mainPageProvider.pageIndex == 2
                          ? Icons.add_circle
                          : Icons.add_circle_outline,
                      onTap: () {
                        mainPageProvider.pageIndex = 2;
                      }),
                  BottomNavWidget(
                    icon: mainPageProvider.pageIndex == 3
                        ? Icons.shopping_cart
                        : Icons.shopping_cart_outlined,
                    onTap: () {
                      mainPageProvider.pageIndex = 3;
                    },
                  ),
                  BottomNavWidget(
                    icon: mainPageProvider.pageIndex == 4
                        ? Icons.person
                        : Icons.person_2_outlined,
                    onTap: () {
                      mainPageProvider.pageIndex = 4;
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}