class Message {
  String title;
  String nome;

  Message({this.title, this.nome});

  Message.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['nome'] = this.nome;
    return data;
  }
}
