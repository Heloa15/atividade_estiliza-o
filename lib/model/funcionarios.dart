class Funcionario {
  int id;
  String nome;
  String cargo;
  double salario;
  String dataContratacao;
  String avatar;

  Funcionario({
    required this.id,
    required this.nome,
    required this.cargo,
    required this.salario,
    required this.dataContratacao,
    required this.avatar,
  });

  factory Funcionario.fromJson(Map<String, dynamic> json) {
    return Funcionario(
      id: json['id'],
      nome: json['nome'],
      cargo: json['cargo'],
      salario: json['salario'],
      dataContratacao: json['dataContratacao'],
      avatar: json['avatar'],
    );
  }
}
