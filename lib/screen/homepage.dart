import 'package:flutter/material.dart';
import 'package:task5/model/product_model.dart';
import 'package:task5/widget/bottomnavigate.dart';
import 'package:task5/widget/category_item.dart';
import 'package:task5/widget/product_item.dart';

class HomeScreen extends StatelessWidget {
  final List<String> categories = ['Sofas', 'Wardrobe', 'Desk', 'Dresser'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNav(),
        body: ListView(children: [
          Container(
            color: Colors.amber,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/table.jpg"),
                  radius: 24,
                ),
                const SizedBox(width: 12),
                Text("Hello , Eman",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                const Text("What do you want to buy?",
                    style: TextStyle(fontSize: 18)),
                const SizedBox(height: 16),
              ],
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, i) => CategoryItem(title: categories[i]),
            ),
          ),
          const SizedBox(height: 16),
          ProductCard(
            product: ProductModel(
              imageUrl: 'images/chair.webp',
              title: 'Sofa',
              subtitle:
                  'Three-seater comfortable sofa made with high-quality fabric, solid beech wood frame, thick foam cushions, ideal for living rooms. Elegant grey color, in excellent condition.',
              price: 248,
              isFavorite: true,
            ),
          ),
          const SizedBox(height: 10),
          ProductCard(
              product: ProductModel(
                  imageUrl: 'images/table.jpg',
                  title: 'Table',
                  subtitle:
                      'Elegant wooden coffee table with a smooth finish, sturdy construction, rectangular shape with rounded edges, perfect for living rooms or offices. Natural wood color, scratch-free surface.',
                  price: 150,
                  isFavorite: false)),
        ]));
  }
}
