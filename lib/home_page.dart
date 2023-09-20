import 'package:clock_binary/bitline.dart';
import 'package:flutter/material.dart';
import 'dart:async';

Stream<DateTime> milissegundoStream() async* {
  await Future.delayed(Duration(milliseconds: 1));
  while (true) {
    yield DateTime.now();
    await Future.delayed(Duration(milliseconds: 1));
  }
}

List<int> gerarListaComZeroAEsquerda(List<int> listaOriginal) {
  while (listaOriginal.length != 10) {
    listaOriginal.insert(0, 0);
  }

  return listaOriginal;
}

List<int> converterIntParaListaBinario(int numero) {
  List b = (numero.toRadixString(2).split(''));
  List<int> listaBinarios = [];
  for (var i = 0; i < b.length; i++) {
    listaBinarios.add(int.parse(b[i]));
  }
  return gerarListaComZeroAEsquerda(listaBinarios);
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(183, 41, 41, 41),
      body: SafeArea(
        child: StreamBuilder(
          stream: milissegundoStream(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    '${snapshot.data!.hour} h',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 211, 253, 213),
                        fontSize: 30,
                        shadows: [
                          BoxShadow(color: Colors.green, blurRadius: 10)
                        ]),
                  ),
                ),
                BitLine(
                    bitList: converterIntParaListaBinario(snapshot.data!.hour)),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    '${snapshot.data!.minute} m',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 211, 253, 213),
                        fontSize: 30,
                        shadows: [
                          BoxShadow(color: Colors.green, blurRadius: 10)
                        ]),
                  ),
                ),
                BitLine(
                    bitList:
                        converterIntParaListaBinario(snapshot.data!.minute)),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    '${snapshot.data!.second} s',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 211, 253, 213),
                        fontSize: 30,
                        shadows: [
                          BoxShadow(color: Colors.green, blurRadius: 10)
                        ]),
                  ),
                ),
                BitLine(
                    bitList:
                        converterIntParaListaBinario(snapshot.data!.second)),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    '${snapshot.data!.millisecond} ms',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 211, 253, 213),
                        fontSize: 30,
                        shadows: [
                          BoxShadow(color: Colors.green, blurRadius: 10)
                        ]),
                  ),
                ),
                BitLine(
                    bitList: converterIntParaListaBinario(
                        snapshot.data!.millisecond)),
              ],
            );
          },
        ),
      ),
    );
  }
}
