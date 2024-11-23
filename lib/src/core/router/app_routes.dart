enum AppRoutes { login, recipes, recipeDetails }

extension AppRoutesExtension on AppRoutes {
  String get name {
    switch (this) {
      case AppRoutes.login:
        return "/login";

      case AppRoutes.recipes:
        return "/recipes";

      case AppRoutes.recipeDetails:
        return "/recipe_details";

      default:
        return "/recipes";
    }
  }
}
