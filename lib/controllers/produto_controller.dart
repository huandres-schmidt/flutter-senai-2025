import 'package:app_produto/models/produto_model.dart';
import 'package:app_produto/services/produto_service.dart';
import 'package:get/get.dart';

class ProdutoController extends GetxController {
  final ProdutoService service;

  ProdutoController({required this.service});

  Future<List<ProdutoModel>> listar() async {
    return await service.getAll();
  }
}