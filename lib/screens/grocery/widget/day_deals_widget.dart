import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../../core/managers/colors_manager.dart';
import '../../../core/managers/images_manager.dart';
import '../../../core/managers/style_manager.dart';
import '../../../data/models/response/DealsResponse.dart';

class DayDealsWidget extends StatelessWidget {
  const DayDealsWidget({
    super.key,
    required Random random,
    required this.deals,
  }) : _random = random;

  final Random _random;
  final List<DealsResponse> deals;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 19.5.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deals of the day",
            style: AppStyleManager.boldTextStyle(10.sp),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: deals.length,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(1.h),
                    child: Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.primaries[_random
                                        .nextInt(Colors.primaries.length)]
                                    [_random.nextInt(9) * 100],
                              ),
                              height: 16.5.h,
                              width: 16.5.h,
                            ),
                            Positioned(
                              left: -10,
                              top: -10,
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: AppColorManager.white,
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: EdgeInsets.all(1.h),
                                  child: Image.asset(
                                    AppImagesManager.coloredFavoritesIcon,
                                    height: 1.8.h,
                                    color: AppColorManager.lightRed,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 4.w),
                        Padding(
                          padding: EdgeInsets.only(top: 0.5.h, bottom: 0.5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                deals[index].title.toString(),
                                style: AppStyleManager.boldTextStyle(9.5.sp,
                                    color: AppColorManager.mainTextColor),
                              ),
                              Text(
                                "Pieces ${deals[index].pieces.toString()}",
                                style: AppStyleManager.regularTextStyle(9.sp,
                                    color: AppColorManager.mainTextColor),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    AppImagesManager.locationIcon,
                                    color: AppColorManager.mainTextColor,
                                    height: 1.5.h,
                                  ),
                                  SizedBox(
                                    width: 1.5.w,
                                  ),
                                  Text(
                                    deals[index].time.toString(),
                                    style: AppStyleManager.regularTextStyle(
                                        9.sp,
                                        color: AppColorManager.mainTextColor),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$ ${deals[index].newPrice.toString()}",
                                    style: AppStyleManager.boldTextStyle(10.sp,
                                        color: AppColorManager.lightRed),
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    "\$ ${deals[index].oldPrice.toString()}",
                                    style: AppStyleManager.boldTextStyle(10.sp,
                                        lineThrough: true,
                                        color: AppColorManager.darkGray),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
