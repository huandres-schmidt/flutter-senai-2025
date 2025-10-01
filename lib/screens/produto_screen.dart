import 'package:flutter/material.dart';

class ProdutoScreen extends StatefulWidget {
  const ProdutoScreen({super.key});

  @override
  State<ProdutoScreen> createState() => _ProdutoScreenState();
}

class _ProdutoScreenState extends State<ProdutoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Produtos'),
      ),
    );
  }
}
