import 'package:cozy/model/city.dart';
import 'package:cozy/model/space.dart';
import 'package:cozy/model/tips.dart';
import 'package:cozy/widgets/bottom_navbar_item.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:cozy/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                // NOTE: TITLE/HEADER
                children: [
                  SizedBox(
                    height: edge,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: edge),
                    child: Text(
                      'Explore Now',
                      style: blackTextStyle.copyWith(fontSize: 24),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: edge),
                    child: Text(
                      'Mencari kosan yang cozy',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // NOTE: POPULAR CITIES
                  Padding(
                    padding: EdgeInsets.only(left: edge),
                    child: Text(
                      'Popular Cities',
                      style: regularTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(
                          width: 24,
                        ),
                        CityCard(
                          city: City(
                            id: 1,
                            name: 'Jakarta',
                            imageUrl: 'assets/city1.png',
                            isPopular: false,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CityCard(
                          city: City(
                            id: 2,
                            name: 'Bandung',
                            imageUrl: 'assets/city2.png',
                            isPopular: true,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CityCard(
                          city: City(
                            id: 1,
                            name: 'Bogor',
                            imageUrl: 'assets/city3.png',
                            isPopular: false,
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // NOTE: RECOMMENDED SPACE
                  Padding(
                    padding: EdgeInsets.only(left: edge),
                    child: Text(
                      'Recommended Space',
                      style: regularTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Column(
                      children: [
                        SpaceCard(
                          space: Space(
                            id: 1,
                            name: 'Kuretakeso Hott',
                            imageUrl: 'assets/space1.png',
                            price: 52,
                            city: 'Bandung',
                            country: 'Indonesia',
                            rating: 4,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SpaceCard(
                          space: Space(
                            id: 2,
                            name: 'Rumah Kosan',
                            imageUrl: 'assets/space2.png',
                            price: 45,
                            city: 'Bogor',
                            country: 'Indonesia',
                            rating: 5,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SpaceCard(
                          space: Space(
                            id: 3,
                            name: 'Darrling How',
                            imageUrl: 'assets/space3.png',
                            price: 30,
                            city: 'Jakarta',
                            country: 'Indonesia',
                            rating: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // NOTE: TIPS & GUIDANCE
                  Padding(
                    padding: EdgeInsets.only(left: edge),
                    child: Text(
                      'Tips & Guidance',
                      style: regularTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Column(
                      children: [
                        TipsCard(
                          tips: Tips(
                            id: 1,
                            title: 'City Guidelines',
                            imageUrl: 'assets/tips1.png',
                            updatedAt: '20 Apr',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TipsCard(
                          tips: Tips(
                            id: 2,
                            title: 'Jakarta Fairship',
                            imageUrl: 'assets/tips2.png',
                            updatedAt: '11 Dec',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70 + edge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
          color: const Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_email.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
