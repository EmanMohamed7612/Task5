import 'package:flutter/material.dart';
import 'package:task5/model/product_model.dart';

class ProductCard extends StatefulWidget {
  final ProductModel product;

  const ProductCard({required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  late bool _isFavorite;
  @override
  void initState() {
    super.initState();
    _isFavorite = widget.product.isFavorite;
  }

  void _switchFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
     final product = widget.product;
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Image.asset(product.imageUrl,
              width: 100, height: 100, fit: BoxFit.cover),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title,
                    style: Theme.of(context).textTheme.headlineSmall),
                Text(product.subtitle, maxLines: 2),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text('\$${product.price}',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      child: const Text('Add to cart'),
                    ),
                  ],
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              _isFavorite ? Icons.favorite : Icons.favorite_border,
              color: _isFavorite ? Colors.red : Colors.grey,
            ),
            onPressed: _switchFavorite,
          ),
        ],
      ),
    );
  }
}
