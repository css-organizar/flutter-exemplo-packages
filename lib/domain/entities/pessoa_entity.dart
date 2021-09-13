class PessoaEntity {
  String? nome;

  PessoaEntity({
    nome = "",
  });

  Map<String, dynamic> toJson() => {
        "nome": nome,
      };
}
