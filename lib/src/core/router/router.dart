import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//--------------------------------------
import 'package:yumly_ever_after/src/features/login/presentation/screens/login_screen.dart';
import 'package:yumly_ever_after/src/features/recipes/presentation/screens/recipes_screen.dart';
import 'package:yumly_ever_after/src/features/recipes/presentation/screens/recipe_details_screen.dart';
//-----------------------------------------------------------------------------------------------------
import 'package:yumly_ever_after/src/core/router/app_routes.dart';
//----------------------------------------------------------------

abstract class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.login.name: (_) => LoginScreen(),
    AppRoutes.recipes.name: (_) => RecipesScreen(),
    AppRoutes.recipeDetails.name: (_) => RecipeDetailsScreen(),
  };
}
