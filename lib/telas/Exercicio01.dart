import 'package:flutter/material.dart';
import 'package:gym_app/modelos/ExerciciosModelos.dart';
import 'package:gym_app/modelos/sentimentoModelo.dart';

class Exercicio01 extends StatelessWidget {
  Exercicio01({super.key});

  final exercicio = ExerciciosModelos(
    id: "Exe001",
    nome: "Puxada Alta",
    treino: "Treino A",
    comoFazer: "Segura com as duas mãos na barra e puxa",
  );

  final List<SentimentoModelo> listaSentimentos = [
    SentimentoModelo(
      id: "SE001",
      sentindo: "Pouca ativação hoje",
      data: "2026-06-01",
    ),
    SentimentoModelo(
      id: "SE002",
      sentindo: "Já senti alguma ativação hoje",
      data: "2026-06-02",
    ),
    SentimentoModelo(
      id: "SE003",
      sentindo: "Treino rendeu muito bem",
      data: "2026-06-03",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              exercicio.nome,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Text(exercicio.treino, style: TextStyle(fontSize:15),),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFFF6E00),
        elevation: 0, //faz sumir a sombra
        toolbarHeight: 72, //altura appbar
        shape: const RoundedRectangleBorder(borderRadius:BorderRadiusGeometry.vertical(bottom: Radius.circular(32)) ), //deixa  a borda cuvarda para baixo
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Botão clicado");
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Enviar foto"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Tirar Fotos"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            const Text(
              "Como fazer?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(exercicio.comoFazer),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            const Text(
              "Como estou me sentindo?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listaSentimentos.length, (index) {
                SentimentoModelo sentimentoagora = listaSentimentos[index];
                return ListTile(
                  dense: true,
                  title: Text(sentimentoagora.sentindo),
                  subtitle: Text(sentimentoagora.data),
                  leading: Icon(Icons.double_arrow),
                  trailing: IconButton(
                    onPressed: () {
                      // ação ao clicar
                    },
                    icon: const Icon(Icons.delete, color: Colors.red),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
