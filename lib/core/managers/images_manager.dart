class AppImagesManager {
  static final AppImagesManager _appImages = AppImagesManager._internal();

  factory AppImagesManager() {
    return _appImages;
  }

  AppImagesManager._internal();

  static const svgPath = "assets/svg_images/";
  static const pngPath = "assets/images/";

  static const favoritesIcon = "${pngPath}favorites.png";
  static const coloredFavoritesIcon = "${pngPath}colored_fav.png";
  static const locationIcon = "${svgPath}location.svg";
  static const appBarContainer = "${pngPath}app_bar_container.png";
  static const groceryIcon = "${pngPath}grocery.png";
  static const alertIcon = "${pngPath}alert.png";
  static const searchIcon = "${pngPath}search.png";
  static const shoppingCartIcon = "${pngPath}shopping_cart.png";
  static const cartIcon = "${pngPath}cart.png";
  static const plusIcon = "${pngPath}plus.png";
  static const minusIcon = "${pngPath}minus.png";
}
