class ProdutoModel {
  final String? id;
  final String nome;
  final String descricao;
  final double preco;

  ProdutoModel({
    this.id,
    required this.nome,
    required this.descricao,
    required this.preco,
  });

  factory ProdutoModel.fromJson(Map<String, dynamic> data) {
    return ProdutoModel(
      id: data['id'],
      nome: data['nome'],
      descricao: data['descricao'],
      preco: (data['preco'] is num)
          ? (data['preco'] as num).toDouble()
          : double.tryParse(data['preco']?.toString() ?? '0') ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'descricao': descricao,
        'preco': preco,
      };
}
