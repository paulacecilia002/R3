import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ================= APP =================
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaInicial(),
    );
  }
}

// ================= TELA INICIAL =================
class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mood,
                size: 80,
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              Text(
                "Humor Diário",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Descubra e registre como você está se sentindo hoje",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TelaHumor(),
                    ),
                  );
                },
                child: Text("Começar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ================= TELA HUMOR =================
class TelaHumor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Escolha seu humor")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("😊 Feliz"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaFeliz()),
                );
              },
            ),
            ElevatedButton(
              child: Text("😐 Normal"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaNormal()),
                );
              },
            ),
            ElevatedButton(
              child: Text("😢 Triste"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaTriste()),
                );
              },
            ),
            ElevatedButton(
              child: Text("😡 Estressado"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaEstressado()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ================= TELAS FINAIS =================
class TelaFeliz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Feliz")),
      body: Center(child: Text("Você está feliz 😊", style: TextStyle(fontSize: 24))),
    );
  }
}

class TelaNormal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Normal")),
      body: Center(child: Text("Tudo normal 😐", style: TextStyle(fontSize: 24))),
    );
  }
}

class TelaTriste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Triste")),
      body: Center(child: Text("Dia triste 😢", style: TextStyle(fontSize: 24))),
    );
  }
}

class TelaEstressado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Estressado")),
      body: Center(child: Text("Estressado 😡", style: TextStyle(fontSize: 24))),
    );
  }
}