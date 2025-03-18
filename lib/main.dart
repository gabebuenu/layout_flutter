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
  const DetalheProduto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            FotoProduto(imagem: "assets/img/pendrive.png"),
            TituloProduto(nome: "FONE DE OUVIDO BLUETOOTH", preco: 190.00),
            TituloProduto(nome: "FONE DE OUVIDO BLUETOOTH", preco: 210.00),
            AcoesProduto(),
            DescricaoProduto(descricao: "Fone de ouvido Bluetooth com microfone, bateria de longa duração e alta qualidade de som."),  
          ],
        ),
      ),
    );
  }
}

class TituloProduto extends StatelessWidget {

  TituloProduto({super.key, required this.nome, required this.preco});

  final String nome;
  final double preco;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0), 
      child: Row(
        children: [
          Expanded(
            child: Text(
              nome,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "R\$ ${preco.toStringAsFixed(2)}",
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.lightBlue
            )
          )
        ],
      ),
    );
  }
}

class FotoProduto extends StatelessWidget {

  // definição do construto do widget com o nome do arquivo de imagem como um parâmetro obrigatório 
  const FotoProduto({super.key, required this.imagem});

  // atributo para especificar a foto do produto
  final String imagem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlue),
      ),
      child: Image.asset(
        imagem,
        width: 360, 
        height: 480,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}

class AcoesProduto extends StatelessWidget {

  // const AcoesProduto({super.key, required this.onPressed, required this.icon});

  // final VoidCallback onPressed;
  // final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () { print("Comentário"); }, 
          icon: Icon(Icons.message)
          ),
        IconButton(
          onPressed: () { print("Compartilhar"); },  
          icon: Icon(Icons.share)
          ),
        IconButton(
          onPressed: () { print("Favoritar"); }, 
          icon: Icon(Icons.favorite)
          ),
        IconButton(
          onPressed: () { print("Download"); }, 
          icon: Icon(Icons.download)
          ) 
      ],
    );
  }
}

class DescricaoProduto extends StatelessWidget {

  const DescricaoProduto({super.key, required String this.descricao});

  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlue),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Text(
          descricao,
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}