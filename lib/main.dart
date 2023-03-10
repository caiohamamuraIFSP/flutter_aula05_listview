import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(),
      home: const MyHomePage(title: 'Flutter Com Map'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Conteudo(),
    );
  }
}

class AlunoNota {
  final String nome;
  final double nota;

  AlunoNota(this.nome, this.nota);
}

class Conteudo extends StatelessWidget {
  const Conteudo({super.key});

  @override
  Widget build(BuildContext context) {
    List<AlunoNota> alunoNota = [
      AlunoNota('Maria', 8),
      AlunoNota('José', 9),
      AlunoNota('João', 9),
      AlunoNota('Ana', 10),
      AlunoNota('Sophia', 9.8),
      AlunoNota('Alice', 7.0),
      AlunoNota('Davi', 6.5),
      AlunoNota('Cecília', 9.1),
      AlunoNota('Helena', 7.4),
      AlunoNota('Ravi', 6.6),
      AlunoNota('Miguel', 9.5),
      AlunoNota('Maria Alice', 9.3),
      AlunoNota('Maitê', 8.0),
      AlunoNota('Heitor', 6.3),
      AlunoNota('Isabella', 9.5),
      AlunoNota('Gabriel', 9.1),
      AlunoNota('Bernardo', 8.5),
      AlunoNota('Manuela', 5.0),
      AlunoNota('Liz', 9.0),
      AlunoNota('Noah', 5.0),
      AlunoNota('Gael', 7.6),
      AlunoNota('Laura', 5.8),
      AlunoNota('Arthur', 8.1),
      AlunoNota('Théo', 8.2),
    ];

    return ListView(
      padding: EdgeInsets.all(8),
      children: [
        ...alunoNota.map(
          (item) => Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text('${item.nome}: '),
              trailing: Text('${item.nota}'),
              tileColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
