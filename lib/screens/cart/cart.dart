import 'dart:math';

import 'package:creative_company_task/core/managers/style_manager.dart';
import 'package:creative_company_task/screens/cart/cart_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:sizer/sizer.dart';

import '../../core/widgets/custom_app_bar.dart';
import 'widgets/cart_list_view.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final _random = Random();
  final CartController cartController = Get.put(CartController());

  @override
  void initState() {
    cartController.getCarts();
    cartController.calcPrice(cartController.items);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyCustomAppBar(),
              SizedBox(height: 3.h),
              Padding(
                padding: EdgeInsets.only(right: 3.h, left: 3.h),
                child: Text(
                  "Cart",
                  style: AppStyleManager.boldTextStyle(16.sp),
                ),
              ),
              SizedBox(height: 3.h),
              Expanded(
                child: CartListView(
                    random: _random, cartController: cartController),
              )
            ],
          ),
        ),
      ),
    );
  }
}
