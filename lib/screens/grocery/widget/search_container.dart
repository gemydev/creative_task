import 'package:creative_company_task/core/managers/images_manager.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/managers/colors_manager.dart';
import '../grocery_controller.dart';

class MySearchContainer extends StatelessWidget {
  const MySearchContainer({
    super.key,
    required this.groceryController,
  });

  final GroceryController groceryController;

  @override
  Widget build(BuildContext context) {
    InputBorder defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
          width: 0.5, color: AppColorManager.searchBorderColor),
    );
    return TextFormField(
      decoration: InputDecoration(
          fillColor: AppColorManager.lightGray,
          filled: true,
          contentPadding: EdgeInsets.zero,
          border: defaultBorder,
          enabledBorder: defaultBorder,
          focusedBorder: defaultBorder,
          alignLabelWithHint: true,
          hintText: "Search in thousands of products",
          hintStyle:
              TextStyle(color: AppColorManager.mainTextColor, fontSize: 10.sp),
          prefixIcon: Image.asset(AppImagesManager.searchIcon)),
      controller: groceryController.searchController,
    );
  }
}
