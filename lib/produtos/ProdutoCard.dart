import 'package:crtech/produtos/produtos.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProdutoCard extends StatefulWidget {
  final Produtos produtos;

  const ProdutoCard({Key? key, required this.produtos}) : super(key: key);

  @override
  State<ProdutoCard> createState() => EstadoDoProdutoCard();
}

class EstadoDoProdutoCard extends State<ProdutoCard> {
  final NumberFormat priceFormatter =
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.favorite_border_outlined,
                color: Colors.pink,
              )
            ],
          ),
          SizedBox(
            height: 130,
            width: 130,
            child: Image.asset(
              widget.produtos.imagem,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            widget.produtos.nome,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.produtos.nome,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.pink,
            ),
          ),
          Text(
            priceFormatter.format(widget.produtos.preco),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
