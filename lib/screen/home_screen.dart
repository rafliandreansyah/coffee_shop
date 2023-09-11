import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

import '../screen/cart_screen.dart';
import '../screen/detail_screen.dart';
import '../widget/card_recommended.dart';

import '../colors/colors.dart';
import '../data_dummy.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: badges.Badge(
              badgeStyle: const badges.BadgeStyle(
                badgeColor: colorPrimary,
              ),
              position: badges.BadgePosition.bottomEnd(end: 1, bottom: 2),
              badgeContent: const Text(''),
              child: const Icon(
                Icons.notifications,
                color: colorGrey,
              ),
            )),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const CartScreen()));
            },
            icon: const badges.Badge(
              badgeContent: Text(
                '0',
                style: TextStyle(
                  color: colorWhite,
                  fontSize: 10,
                ),
              ),
              badgeStyle: badges.BadgeStyle(
                badgeColor: colorPrimary,
              ),
              child: Icon(Icons.add_shopping_cart, color: colorGrey),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Good Afternoon, Rafli',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                'It\'s time for coffee break',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                width: double.infinity,
                height: 150,
                child: Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset('images/coffee_bg.jpg',
                            fit: BoxFit.cover, width: double.infinity),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            //color is transparent so that it does not blend with the actual color specified
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            color: Color.fromRGBO(49, 48, 48,
                                0.5) // Specifies the background color and the opacity
                            ),
                      ),
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            '"Kenali lebih dalam dan terpukaulah oleh lugunya pesona."',
                            style: TextStyle(
                              fontSize: 19.0,
                              color: colorWhite,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              const Text(
                'New Arrival',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                width: double.infinity,
                height: 170,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) =>
                            DetailScreen(product: DATA_DUMMY_OBJECT),
                      ),
                    );
                  },
                  child: Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(
                      'images/new_arrival.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Recommended for you',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'All menu',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: colorPrimary,
                    ),
                  ),
                ],
              ),
              Container(
                height: 160,
                child: ListView.builder(
                  clipBehavior: Clip.none,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: DATA_DUMMY.length,
                  itemBuilder: (ctx, i) =>
                      CardRecommended(product: DATA_DUMMY[i]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
