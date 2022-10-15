import 'package:creative_company_task/core/managers/images_manager.dart';
import 'package:creative_company_task/screens/cart/cart.dart';
import 'package:creative_company_task/screens/favorites/favorites.dart';
import 'package:creative_company_task/screens/grocery/grocery.dart';
import 'package:flutter/material.dart';
import 'core/widgets/custom_bottom_nav_bar.dart';
import 'screens/news/news.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;
  late Widget _selectedWidget;

  @override
  void initState() {
    _selectedWidget = const GroceryScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _selectedWidget,
      bottomNavigationBar: MyCustomBottomNavigation(
        itemIcons: const [
          AppImagesManager.groceryIcon,
          AppImagesManager.alertIcon,
          AppImagesManager.favoritesIcon,
          AppImagesManager.cartIcon,
        ],
        centerIcon: AppImagesManager.shoppingCartIcon,
        selectedIndex: _selectedIndex,
        onItemPressed: onPressed,
      ),
    );
  }

  void onPressed(index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        _selectedWidget = const GroceryScreen();
      } else if (index == 1) {
        _selectedWidget = const NewsScreen();
      } else if (index == 2) {
        _selectedWidget = const NewsScreen();
      } else if (index == 3) {
        _selectedWidget = const FavoritesScreen(); //const CollectionProduct();
      } else if (index == 4) {
        _selectedWidget = const CartScreen();
      }
    });
  }
}
