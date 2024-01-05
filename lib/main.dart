import 'package:flutter/material.dart';
import 'package:gcpro/bindings/initializing_dependency.dart';
import 'package:gcpro/utils/app_routes.dart';
import 'package:gcpro/utils/app_theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GCPRO',
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppTheme.primaryColor,
        ),
      ),
      initialBinding: InitializingDependency(),
    );
  }
}
