import 'package:flutter/material.dart';
import 'package:flutter_kidzone/models/homepage_models/homepage_categories_models.dart';
import 'package:flutter_kidzone/utils/color_constants.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.homePageBackgroundColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                "assets/images/onboarding/head.png",
                fit: BoxFit.cover,
                width: 200,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 72, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                  ),
                ),
                const Gap(32),
                const Text(
                  "Hello Kid! 👋🏼",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(8),
                const Text(
                  "What are you learning today?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(30),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 48,
                      horizontal: 16,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 504,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF).withOpacity(0.30),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: ListView.builder(
                      clipBehavior: Clip.none,
                      padding: const EdgeInsets.all(0),
                      itemCount:
                          HomePageCategoriesModel.homepageCategoryLists.length,
                      itemBuilder: (BuildContext context, int index) {
                        var items = HomePageCategoriesModel
                            .homepageCategoryLists[index];
                        return Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.center,
                              clipBehavior: Clip.none,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    height: 112,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Color(
                                        int.parse(items.categoryColor),
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(16),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 56,
                                          height: 20,
                                          padding: const EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(16),
                                            ),
                                            color: Color(int.parse(
                                                items.categoryNameColor)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              items.categoryName,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          items.categoryTitle,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Container(
                                          width: 128,
                                          child: const Text(
                                            "A B C D E F G H I",
                                            softWrap: false,
                                            overflow: TextOverflow.fade,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -32,
                                  left:
                                      MediaQuery.of(context).size.width * 0.60,
                                  child: Align(
                                    child: Image.asset(
                                      items.categoryImage,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                          ],
                        );
                      },
                      // child: ,
                    ),
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      "Have Fun!!!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
