import 'dart:math';

import 'package:creative_company_task/core/managers/colors_manager.dart';
import 'package:creative_company_task/core/managers/images_manager.dart';
import 'package:creative_company_task/core/managers/style_manager.dart';
import 'package:creative_company_task/data/models/response/CartResponse.dart';
import 'package:creative_company_task/screens/cart/cart_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
    required Random random,
    required this.cartController,
  }) : _random = random;

  final Random _random;
  final CartController cartController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        primary: false,
        itemCount: cartController.items.length,
        itemBuilder: (context, index) {
          return CartItem(
            random: _random,
            cartItem: cartController.items[index],
            cartController: cartController,
            index: index,
          );
        });
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required Random random,
    required this.cartItem,
    required this.cartController,
    required this.index,
  }) : _random = random;

  final Random _random;
  final CartResponse cartItem;
  final CartController cartController;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 3.h, right: 3.h, top: 1.5.h, bottom: 1.5.h),
      child: SizedBox(
        height: 12.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.primaries[
                              _random.nextInt(Colors.primaries.length)]
                          [_random.nextInt(9) * 100],
                    ),
                    height: 12.h,
                    width: 12.h,
                  ),
                  SizedBox(width: 4.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cartItem.title.toString(),
                        style: AppStyleManager.regularTextStyle(13.sp,
                            color: AppColorManager.mainTextColor),
                      ),
                      Text(
                        cartItem.subTitle.toString(),
                        style: AppStyleManager.regularTextStyle(12.sp,
                            color: AppColorManager.subTextColor),
                      ),
                      Text(
                        "\$ ${cartItem.price.toString()}",
                        style: AppStyleManager.regularTextStyle(15.sp,
                            color: AppColorManager.darkRed),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: GetX<CartController>(builder: (cartController) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (cartController.counts[index].value > 1) {
                          cartController.subtractCustomCount(index);
                          cartController.subtractPrice(cartItem.price!);
                        } else {
                          cartController.counts[index].value = 1;
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColorManager.lightBlue,
                        ),
                        height: 5.h,
                        width: 5.h,
                        child: Image.asset(AppImagesManager.minusIcon),
                      ),
                    ),
                    Text(cartController.counts[index].value.toString(),
                        style: AppStyleManager.boldTextStyle(14.sp)),
                    GestureDetector(
                      onTap: () {
                        if (cartController.counts[index].value > 0) {
                          cartController.addCustomCount(index);
                          cartController.addPrice(cartItem.price!);
                        } else {
                          cartController.counts[index].value = 1;
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColorManager.lightBlue,
                        ),
                        height: 5.h,
                        width: 5.h,
                        child: Image.asset(AppImagesManager.plusIcon),
                      ),
                    ),
                  ],
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
