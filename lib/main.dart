import 'package:flutter/material.dart';

void main() {
  runApp(LayoutProdutoApp());
}

class LayoutProdutoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Produto",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Produto"),
          backgroundColor: Colors.lightBlue,
        ),
        body: SafeArea(
          child: DetalheProduto(),
        ),
      ),
    );
  }
}

class DetalheProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/img/airpods.jpg",
            width: 360, 
            height: 480,
            fit: BoxFit.cover,
          ),
          TituloProduto(), 
        ],
      ),
    );
  }
}

class TituloProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0), 
      child: Row(
        children: [
          Expanded(
            child: Text(
              "FONE DE OUVIDO BLUETOOTH",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "R\$ 200,00",
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          Icon(Icons.shopping_cart, color: Colors.lightBlue),
        ],
      ),
    );
  }
}

class FotoProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlue),
      ),
      child: Image.asset(
        "assets/img/airpods.jpg",
        width: 360, 
        height: 480,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
