import 'package:creative_company_task/core/managers/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../managers/colors_manager.dart';
import '../managers/images_manager.dart';

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 9.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 8,
            child: Stack(
              children: [
                Image.asset(AppImagesManager.appBarContainer),
                Padding(
                  padding: EdgeInsets.all(1.2.h),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppImagesManager.locationIcon,
                          color: AppColorManager.white, height: 1.5.h),
                      SizedBox(width: 2.w),
                      Text("Mustafa St.",
                          style: AppStyleManager.regularTextStyle(9.sp,
                              color: AppColorManager.white)),
                    ],
                  ),
                ),
              ],
            ),
            // child: Container(
            //   decoration: const BoxDecoration(
            //       color: AppColorManager.lightRed,
            //       borderRadius: BorderRadius.only(
            //         topRight: Radius.circular(120),
            //         bottomRight: Radius.circular(20),
            //         bottomLeft: Radius.circular(50),
            //         topLeft: Radius.circular(50),
            //       )),
            //   height: 7.h,
            //   child: Padding(
            //     padding: EdgeInsets.all(2.h),
            //     child: Row(
            //       children: [
            //         SvgPicture.asset(AppImagesManager.locationIcon,
            //             color: AppColorManager.white, height: 2.5.h),
            //         SizedBox(width: 2.w),
            //         Text("Mustafa St.",
            //             style: AppStyleManager.regularTextStyle(11.sp,
            //                 color: AppColorManager.white)),
            //       ],
            //     ),
            //   ),
            // ),
          ),
          // Expanded(
          //   flex: 8,
          //   child: CustomPaint(
          //     child: Container(
          //       width: MediaQuery.of(context).size.width,
          //       height: MediaQuery.of(context).size.height,
          //     ),
          //     painter: HeaderCurvedContainer(),
          //   ),
          // ),
          const Spacer(
            flex: 6,
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 8.h,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColorManager.circleBorder),
                  color: AppColorManager.white,
                  shape: BoxShape.circle),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = AppColorManager.lightRed;
    Path path = Path()
      ..relativeQuadraticBezierTo(0, 10.h, 45.w, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
