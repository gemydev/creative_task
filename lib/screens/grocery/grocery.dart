import 'dart:math';

import 'package:creative_company_task/core/managers/colors_manager.dart';
import 'package:creative_company_task/screens/grocery/grocery_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../core/widgets/custom_app_bar.dart';
import 'widget/address_row.dart';
import 'widget/day_deals_widget.dart';
import 'widget/exploration_widget.dart';
import 'widget/offer_widget.dart';
import 'widget/search_container.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  final GroceryController groceryController = Get.put(GroceryController());

  @override
  void initState() {
    groceryController.getAddresses();
    groceryController.getCats();
    groceryController.getOffers();
    groceryController.getDeals();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final random = Random();

    return Scaffold(
      backgroundColor: AppColorManager.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const MyCustomAppBar(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(2.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      MySearchContainer(groceryController: groceryController),
                      SizedBox(
                        height: 2.h,
                      ),
                      AddressRow(
                          random: random,
                          addresses: groceryController.addresses),
                      SizedBox(
                        height: 2.h,
                      ),
                      ExplorationWidget(
                          random: random,
                          categories: groceryController.categories),
                      SizedBox(
                        height: 2.h,
                      ),
                      DayDealsWidget(
                          random: random, deals: groceryController.deals),
                      SizedBox(
                        height: 2.h,
                      ),
                      OfferWidget(
                        offerResponse: groceryController.offers,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
