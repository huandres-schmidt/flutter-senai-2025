import 'package:app_produto/components/drawer_header_custom.dart';
import 'package:app_produto/components/list_tile_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bem vindo(a)'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.indigo,
        child: ListView(
          children: [
            DrawerHeaderCustom(),
            ListTileCustom(
              label: 'Adicionar Produtos',
              icon: CupertinoIcons.archivebox,
              onTap: () => Get.toNamed('/produto'),
            ),
            ListTileCustom(
              label: 'Listar Produtos',
              icon: CupertinoIcons.list_bullet,
              onTap: () => Get.toNamed('/produto_list'),
            ),
          ],
        ),
      ),
    );
  }
}
