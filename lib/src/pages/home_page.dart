import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int _contador = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color? color() {
      if (_contador < 0) {
        return Colors.red;
      } else if (_contador <= 5) {
        return Colors.black;
      } else {
        return Colors.green;
      }
    }

    final _textStyle = TextStyle(
      fontSize: 30,
      color: color(),
      //(_contador <= 0) ? Colors.red : Colors.blueAccent,
    );

    void suma() => setState(() => _contador++);
    void resta() => setState(() => _contador--);
    void reset() => setState(() => _contador = 0);

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        leading: const Icon(
          Icons.face,
          color: Colors.red,
        ),
        title: const Text('Contador - Flutter v2.5.1'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Número de ticks :', style: TextStyle(fontSize: 40)),
            const SizedBox(height: 10),
            Text('$_contador', style: _textStyle),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(left: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Colors.blueAccent,
              onPressed: () => suma(),
              child: const Icon(Icons.exposure_plus_1),
            ),
            FloatingActionButton(
              backgroundColor: Colors.blueAccent,
              onPressed: () => resta(),
              child: const Icon(Icons.exposure_minus_1),
            ),
            FloatingActionButton(
              backgroundColor: Colors.blueAccent,
              onPressed: () => reset(),
              child: const Icon(Icons.restore_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
