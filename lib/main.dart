import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigazione in Flutter',
    home: PrimaRoute(),
  ));
}

class PrimaRoute extends StatelessWidget {
  const PrimaRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prima Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Naviga verso la seconda route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondaRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondaRoute extends StatelessWidget {
  const SecondaRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seconda Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Torna indietro!'),
        ),
      ),
    );
  }
}
