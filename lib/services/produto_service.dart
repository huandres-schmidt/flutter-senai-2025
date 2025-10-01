import 'dart:convert';

import 'package:app_produto/models/produto_model.dart';
import 'package:http/http.dart' as http;

const String baseURL = 'http://localhost:8080/produtos';

class ProdutoService {
  final http.Client _client;

  ProdutoService({http.Client? client}) : _client = client ?? http.Client();

  Future<List<ProdutoModel>> getAll() async {
    final res = await _client.get(Uri.parse('$baseURL/listar'));

    if (res.statusCode >= 200 && res.statusCode < 300) {
      final List<dynamic> jsonList = jsonDecode(res.body);
      return jsonList.map((e) => ProdutoModel.fromJson(e)).toList();
    }

    throw Exception(
      'Ocorreu um erro ao tentar listar produtos: ${res.statusCode}',
    );
  }
}
