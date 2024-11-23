import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:yumly_ever_after/src/core/router/router.dart';
//-------------------------------------
import 'package:yumly_ever_after/src/core/styles/themes.dart';
import 'package:yumly_ever_after/src/core/utils/navigation/sailor.dart';
//----------------------------------------------------------------------

void main() {
  runApp(const YumlyEverAfterApp());
}

class YumlyEverAfterApp extends StatelessWidget {
  const YumlyEverAfterApp({super.key});

  @override
  Widget build(BuildContext context) {
    var sailor = GetIt.instance.get<Sailor>();
    return MaterialApp(
      initialRoute: "/",
      theme: lightTheme,
      routes: AppRouter.routes,
      title: "Yumly Ever After",
      debugShowCheckedModeBanner: false,
      navigatorKey: sailor.navigatorKey,
    );
  }
}
