import 'package:flutter/material.dart';

void main() => runApp(const Botones());

class Botones extends StatefulWidget {
  const Botones({super.key});

  @override
  State<Botones> createState() => _BotonesState();
}

class _BotonesState extends State<Botones> {
  double contador = 10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Operaciones',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.cyanAccent,
          title: const Text('Operaciones',
            style: TextStyle(
              color: Colors.brown,
            )
          )
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$contador',
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: sumar,
                child: const Text('+'),
              ),
              FloatingActionButton(
                onPressed: restar,
                child: const Text('-'),
              ),
              FloatingActionButton(
                onPressed: multiplicar,
                child: const Text('*'),
              ),
              FloatingActionButton(
                onPressed: dividir,
                child: const Text('/'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void sumar() {
    contador += 2;

    setState(() {});
  }

  void restar() {
    contador -= 2;
    setState(() {});
  }

  void multiplicar() {
    contador *= 2;
    setState(() {});
  }

  void dividir() {
    contador /= 2;
    setState(() {});
  }
}