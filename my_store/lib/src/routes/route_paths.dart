class RoutingPath {
  static const String rootRoute = '/';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';

  //Categories Endpoint
  static const String category = '/category';
  static const String featuredTeaRoute = '$category/teas2';
  static const String featuredTeacupRoute = '$category/teacups';
  static const String featuredTeapotRoute = '$category/teapots';
  static const String featuredInfuserRoute = '$category/infusers';
  static const String featuredAccessoryRoute = '$category/accessories';

  static const String featuredCategory = '$category/:featuredName';
}
