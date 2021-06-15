import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Portfolio/pages/Layout/appVM.dart';
import 'package:Portfolio/pages/Layout/header.dart';
import 'package:Portfolio/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider<AppVM>(create: (_) => AppVM())],
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus.unfocus();
          }
        },
        child: GetMaterialApp(
          onInit: () {},
          navigatorKey: Get.key,
          debugShowCheckedModeBanner: false,
          title: 'Portfolio',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            appBarTheme: AppBarTheme(color: Colors.black),
          ),
          // initialRoute: getSessionStatus(),
          routes: getApplicationRoutes(),
          onGenerateRoute: (RouteSettings settings) {
            return MaterialPageRoute(
                builder: (BuildContext context) => Header());
          },
        ),
      ),
    );
  }
}
