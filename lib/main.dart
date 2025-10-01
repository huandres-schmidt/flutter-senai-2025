import 'package:app_produto/screens/home_screen.dart';
import 'package:app_produto/screens/produto_list_screen.dart';
import 'package:app_produto/screens/produto_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
      ),
      title: 'App Produto',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/produto', page: () => ProdutoScreen()),
        GetPage(name: '/produto_list', page: () => ProdutoListScreen()),
      ],
    );
  }
}
