import 'package:creative_company_task/screens/favorites/favorites.dart';
import 'package:get/get.dart';

import '../screens/cart/cart.dart';
import '../screens/grocery/grocery.dart';
import '../screens/news/news.dart';

class Routes {
  Routes._();

  static const animation = Transition.cupertino;

  static const String groceryScreen = '/homeScreen';
  static const String newsScreen = '/newsScreen';
  static const String cartScreen = '/cartScreen';
  static const String favoriteScreen = '/favoriteScreen';

  static final routes = [
    GetPage(
      name: groceryScreen,
      page: () => const GroceryScreen(),
      transition: animation,
    ),
    GetPage(
      name: newsScreen,
      page: () => const NewsScreen(),
      transition: animation,
    ),
    GetPage(
      name: cartScreen,
      page: () => const CartScreen(),
      transition: animation,
    ),
    GetPage(
      name: favoriteScreen,
      page: () => const FavoritesScreen(),
      transition: animation,
    ),
  ];
}
