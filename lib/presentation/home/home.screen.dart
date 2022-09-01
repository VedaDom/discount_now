import 'package:discount_now/app/gen/assets.gen.dart';
import 'package:discount_now/infrastructure/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:maps_launcher/maps_launcher.dart';

import '../widgets/ads_item.dart';
import 'controllers/home.controller.dart';

final items = [
  InkWell(
    onTap: () async {
      MapsLauncher.launchQuery('KG11Ave');
    },
    child: AdsItem(
      image: Assets.images.drink2.image(
        height: 100,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      name: "Strawberries",
      percentage: 20,
      endingAt: "Ending Today",
      location: "Kimironko, Kigali",
      price: 23000,
    ),
  ),
  InkWell(
    onTap: () async {
      MapsLauncher.launchQuery('KG11Ave');
    },
    child: AdsItem(
      image: Assets.images.lotsGourmet1.image(
        height: 100,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      name: "Strawberries",
      percentage: 7,
      endingAt: "Ending Today",
      location: "Kimironko, Kigali",
      price: 23000,
    ),
  ),
  InkWell(
    onTap: () async {
      MapsLauncher.launchQuery('KG11Ave');
    },
    child: AdsItem(
      image: Assets.images.drink1.image(
        height: 100,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      name: "Strawberries",
      percentage: 9,
      endingAt: "Ending Today",
      location: "Kimironko, Kigali",
      price: 23000,
    ),
  ),
  InkWell(
    onTap: () async {
      MapsLauncher.launchQuery('KG11Ave');
    },
    child: AdsItem(
      image: Assets.images.food1.image(
        height: 100,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      name: "Strawberries",
      percentage: 30,
      endingAt: "Ending Today",
      location: "Kimironko, Kigali",
      price: 23000,
    ),
  ),
  InkWell(
    onTap: () async {
      MapsLauncher.launchQuery('KG11Ave');
    },
    child: AdsItem(
      image: Assets.images.lotsGourmet1.image(
        height: 100,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      name: "Strawberries",
      percentage: 50,
      endingAt: "Ending Today",
      location: "Kimironko, Kigali",
      price: 23000,
    ),
  ),
  InkWell(
    onTap: () async {
      MapsLauncher.launchQuery('KG11Ave');
    },
    child: AdsItem(
      image: Assets.images.food2.image(
        height: 100,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      name: "Strawberries",
      percentage: 14,
      endingAt: "Ending Today",
      location: "Kimironko, Kigali",
      price: 23000,
    ),
  ),
  InkWell(
    onTap: () async {
      MapsLauncher.launchQuery('KG11Ave');
    },
    child: AdsItem(
      image: Assets.images.food1.image(
        height: 100,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      name: "Strawberries",
      percentage: 14,
      endingAt: "Ending Today",
      location: "Kimironko, Kigali",
      price: 23000,
    ),
  ),
  InkWell(
    onTap: () async {
      MapsLauncher.launchQuery('KG11Ave');
    },
    child: AdsItem(
      image: Assets.images.drink1.image(
        height: 100,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      name: "Strawberries",
      percentage: 14,
      endingAt: "Ending Today",
      location: "Kimironko, Kigali",
      price: 23000,
    ),
  ),
  InkWell(
    onTap: () async {
      MapsLauncher.launchQuery('KG11Ave');
    },
    child: AdsItem(
      image: Assets.images.drink2.image(
        height: 100,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      name: "Strawberries",
      percentage: 14,
      endingAt: "Ending Today",
      location: "Kimironko, Kigali",
      price: 23000,
    ),
  ),
  InkWell(
    onTap: () async {
      MapsLauncher.launchQuery('KG11Ave');
    },
    child: AdsItem(
      image: Assets.images.lotsGourmet1.image(
        height: 100,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      name: "Strawberries",
      percentage: 14,
      endingAt: "Ending Today",
      location: "Kimironko, Kigali",
      price: 23000,
    ),
  ),
];

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Dominique"),
              accountEmail: const Text("vedadom@gmail.com"),
              currentAccountPicture: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  // border: Border.all(
                  //   color: Colors.black,
                  //   width: 2,
                  // ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.manage_accounts),
              title: Text("Manage ads"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Discount Now",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                // color: Theme.of(context).primaryColor,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    showSearch(
                      context: context,
                      // delegate to customize the search bar
                      delegate: CustomSearchDelegate(),
                    );
                  },
                  borderRadius: BorderRadius.circular(8),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                InkWell(
                  onTap: () {
                    showSearch(
                      context: context,
                      // delegate to customize the search bar
                      delegate: CustomSearchDelegate(),
                    );
                  },
                  borderRadius: BorderRadius.circular(8),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                // const SizedBox(width: 8),
                // InkWell(
                //   onTap: () {
                //     Get.toNamed(Routes.SIGNIN);
                //   },
                //   borderRadius: BorderRadius.circular(38),
                //   child: Container(
                //     width: 38,
                //     height: 38,
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       shape: BoxShape.circle,
                //       // border: Border.all(
                //       //   color: Colors.black,
                //       //   width: 2,
                //       // ),
                //     ),
                //     child: const Center(
                //       child: Icon(
                //         Icons.person_outline,
                //         color: Colors.black,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 45),
          child: CustomTabBar(
            onTap: (value) {},
          ),
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 16,
              childAspectRatio: 1 / 1.17,
              children: items,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTabBar extends StatefulWidget {
  final ValueChanged<int> onTap;
  const CustomTabBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedActivityTypeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.separated(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (index == 0) const SizedBox(width: 16),
              Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedActivityTypeIndex = index;
                    });
                    widget.onTap(index);
                  },
                  borderRadius: BorderRadius.circular(32),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: selectedActivityTypeIndex == index
                          ? Colors.white.withOpacity(0.2)
                          : null,
                    ),
                    child: Text(
                      [
                        "All",
                        "Popular",
                        "Drinks",
                        "Food",
                        "Phones",
                        "Clothes",
                        "Breads",
                        "Cars"
                      ][index],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: selectedActivityTypeIndex == index
                            ? FontWeight.w700
                            : FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries"
  ];

  // @override
  // ThemeData appBarTheme(BuildContext context) {
  //   assert(context != null);
  //   final ThemeData theme = Theme.of(context);
  //   assert(theme != null);
  //   return theme.copyWith(
  //     appBarTheme: theme.appBarTheme.copyWith(
  //       iconTheme: context.theme.iconTheme.copyWith(
  //         color: context.theme.primaryColor,
  //       ),
  //       elevation: 0,
  //       color: Colors.transparent,
  //     ),
  //   );
  // }

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
          childAspectRatio: 1 / 1.17,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext ctx, index) {
          return items[index];
        },
      ),
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
          childAspectRatio: 1 / 1.17,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext ctx, index) {
          return items[index];
        },
      ),
    );
  }
}
