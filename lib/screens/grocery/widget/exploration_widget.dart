import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/managers/colors_manager.dart';
import '../../../core/managers/style_manager.dart';
import '../../../data/models/response/CategoryResponse.dart';

class ExplorationWidget extends StatelessWidget {
  const ExplorationWidget({
    super.key,
    required Random random,
    required this.categories,
  }) : _random = random;

  final Random _random;
  final List<CategoryResponse> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16.5.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore by Category",
                style: AppStyleManager.boldTextStyle(10.sp),
              ),
              Text(
                "See All(36)",
                style: AppStyleManager.regularTextStyle(8.sp,
                    color: AppColorManager.subTextColor),
              )
            ],
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: categories.length,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(1.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.primaries[
                                    _random.nextInt(Colors.primaries.length)]
                                [_random.nextInt(9) * 100],
                          ),
                          height: 8.h,
                          width: 8.h,
                        ),
                        SizedBox(width: 2.h),
                        Text(
                          categories[index].catName.toString(),
                          style: AppStyleManager.regularTextStyle(9.sp,
                              color: AppColorManager.mainTextColor),
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
