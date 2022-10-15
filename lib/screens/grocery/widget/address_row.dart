import 'dart:math';

import 'package:creative_company_task/data/models/response/AddressResponse.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/managers/colors_manager.dart';
import '../../../core/managers/style_manager.dart';

class AddressRow extends StatelessWidget {
  const AddressRow({
    super.key,
    required Random random,
    required this.addresses,
  }) : _random = random;

  final Random _random;
  final List<AddressResponse> addresses;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 11.h,
      child: ListView.builder(
          itemCount: addresses.length,
          primary: false,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(1.h),
              child: Container(
                width: 45.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.primaries[
                                _random.nextInt(Colors.primaries.length)]
                            [_random.nextInt(9) * 100],
                      ),
                      height: 8.h,
                      width: 8.h,
                    ),
                    SizedBox(width: 2.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          addresses[index].home.toString(),
                          style: AppStyleManager.semiBoldTextStyle(
                            9.sp,
                          ),
                        ),
                        Text(
                          addresses[index].street.toString(),
                          style: AppStyleManager.regularTextStyle(7.sp,
                              color: AppColorManager.subTextColor),
                        ),
                        Text(
                          addresses[index].building.toString(),
                          style: AppStyleManager.regularTextStyle(7.sp,
                              color: AppColorManager.subTextColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
