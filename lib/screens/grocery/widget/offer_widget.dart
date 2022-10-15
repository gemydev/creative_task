import 'package:creative_company_task/data/models/response/OfferResponse.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/managers/colors_manager.dart';
import '../../../core/managers/style_manager.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    super.key,
    required this.offerResponse,
  });

  final List<OfferResponse> offerResponse;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      decoration: BoxDecoration(
          color: AppColorManager.offerContainerBGColor,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.all(1.h),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(),
            ),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mega",
                          style: AppStyleManager.regularTextStyle(9.5.sp,
                              color: AppColorManager.offerContainerTextColor)),
                      Row(
                        children: [
                          Text(
                            "WHOPP",
                            style: AppStyleManager.boldTextStyle(27.sp,
                                color: AppColorManager.veryDarkBlue),
                          ),
                          Text(
                            "E",
                            style: AppStyleManager.boldTextStyle(27.sp,
                                color: AppColorManager.offerContainerTextColor),
                          ),
                          Text(
                            "R",
                            style: AppStyleManager.boldTextStyle(27.sp,
                                color: AppColorManager.veryDarkBlue),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "\$ ${offerResponse[0].newPrice}",
                        style: AppStyleManager.boldTextStyle(13.sp,
                            color: AppColorManager.lightRed),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        "\$ ${offerResponse[0].oldPrice}",
                        style: AppStyleManager.boldTextStyle(13.sp,
                            lineThrough: true, color: AppColorManager.white),
                      ),
                    ],
                  ),
                  Text(
                    "* Available until 24 December 2020",
                    style: AppStyleManager.regularTextStyle(10.sp,
                        color: AppColorManager.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
