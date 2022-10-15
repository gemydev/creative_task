import 'package:creative_company_task/core/managers/colors_manager.dart';
import 'package:creative_company_task/core/managers/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../screens/cart/cart_conroller.dart';

class MyCustomBottomNavigation extends StatefulWidget {
  final List<String> itemIcons;
  final String centerIcon;
  final int selectedIndex;
  final Function(int) onItemPressed;
  final double? height;

  const MyCustomBottomNavigation({
    Key? key,
    required this.itemIcons,
    required this.centerIcon,
    required this.selectedIndex,
    required this.onItemPressed,
    this.height,
  })  : assert(itemIcons.length == 4 || itemIcons.length == 2,
            "Item must equal 4 or 2"),
        super(key: key);

  @override
  State<MyCustomBottomNavigation> createState() =>
      _MyCustomBottomNavigationState();
}

class _MyCustomBottomNavigationState extends State<MyCustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());

    SizeConfig.initSize(context);
    final height = this.widget.height ?? getRelativeHeight(0.085);

    Color selectedColor = AppColorManager.orange;
    Color unselectedColor = AppColorManager.unSelectedBottomNavBarColor;

    return SizedBox(
      height: height + getRelativeHeight(0.025),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height,
              decoration: const BoxDecoration(
                color: AppColorManager.bottomNavBarColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: 1.h, bottom: 0.5.h, left: 1.5.w, right: 1.5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: GestureDetector(
                              onTap: () {
                                widget.onItemPressed(0);
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(0.2.h),
                                    child: Image.asset(
                                      widget.itemIcons[0],
                                      color: widget.selectedIndex == 0
                                          ? selectedColor
                                          : unselectedColor,
                                      height: 4.h,
                                    ),
                                  ),
                                  Text(
                                    "Grocery",
                                    style: AppStyleManager.regularTextStyle(
                                      10.sp,
                                      color: widget.selectedIndex == 0
                                          ? selectedColor
                                          : AppColorManager.subTextColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          if (widget.itemIcons.length == 4)
                            Material(
                              color: Colors.transparent,
                              child: GestureDetector(
                                onTap: () {
                                  widget.onItemPressed(1);
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(0.2.h),
                                      child: Image.asset(
                                        widget.itemIcons[1],
                                        color: widget.selectedIndex == 1
                                            ? selectedColor
                                            : unselectedColor,
                                        height: 4.h,
                                      ),
                                    ),
                                    Text(
                                      "News",
                                      style: AppStyleManager.regularTextStyle(
                                        10.sp,
                                        color: widget.selectedIndex == 1
                                            ? selectedColor
                                            : AppColorManager.subTextColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    const Spacer(flex: 1),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: GestureDetector(
                              onTap: () {
                                widget.onItemPressed(
                                    widget.itemIcons.length == 4 ? 3 : 2);
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(0.2.h),
                                    child: Image.asset(
                                      widget.itemIcons[2],
                                      color: widget.selectedIndex == 3
                                          ? selectedColor
                                          : unselectedColor,
                                      height: 4.h,
                                    ),
                                  ),
                                  Text(
                                    "Favorites",
                                    style: AppStyleManager.regularTextStyle(
                                      10.sp,
                                      color: widget.selectedIndex == 3
                                          ? selectedColor
                                          : AppColorManager.subTextColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          if (widget.itemIcons.length == 4)
                            Material(
                              color: Colors.transparent,
                              child: GestureDetector(
                                onTap: () {
                                  widget.onItemPressed(4);
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(0.2.h),
                                      child: Image.asset(
                                        widget.itemIcons[3],
                                        color: widget.selectedIndex == 4
                                            ? selectedColor
                                            : unselectedColor,
                                        height: 4.h,
                                      ),
                                    ),
                                    Text(
                                      "Cart",
                                      style: AppStyleManager.regularTextStyle(
                                        10.sp,
                                        color: widget.selectedIndex == 4
                                            ? selectedColor
                                            : AppColorManager.subTextColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Material(
                color: Colors.transparent,
                child: GestureDetector(
                  onTap: () {
                    // onItemPressed(itemIcons.length == 4 ? 2 : 1);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColorManager.orange,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          offset: const Offset(1, 1),
                          color: AppColorManager.orange.withOpacity(0.7),
                        )
                      ],
                    ),
                    height: getRelativeWidth(0.135),
                    width: getRelativeWidth(0.135),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(1.2.h),
                        child: Stack(
                          children: [
                            Image.asset(
                              widget.centerIcon,
                              width: 8.w,
                            ),
                            GetX<CartController>(
                              builder: (cartController) => Text(
                                "\$${cartController.allPrice.value}",
                                style: AppStyleManager.regularTextStyle(
                                    8.5.sp,
                                    color: AppColorManager.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;

  static initSize(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
  }
}

double getRelativeHeight(double percentage) {
  return percentage * SizeConfig.screenHeight;
}

double getRelativeWidth(double percentage) {
  return percentage * SizeConfig.screenWidth;
}
