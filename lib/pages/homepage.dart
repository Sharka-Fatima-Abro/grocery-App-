import 'package:flutter/material.dart';
import 'package:mi/components/groceryItemsTile.dart';
import 'package:mi/components/models/cartmodel.dart';
import 'package:mi/pages/cartpagae.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Cartpagae();
            },
          ),
        ),
        backgroundColor: Colors.black54,
        child: Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 48,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Good Morning'),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Lets Order Fresh Fruits',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Fesh Items',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Expanded(child: Consumer<Cartmodel>(
              builder: (context, value, child) {
                return GridView.builder(
                  itemCount: value.shopItems.length,
                  padding: const EdgeInsets.all(12),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return Groceryitemstile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: () {
                        Provider.of<Cartmodel>(context, listen: false)
                            .addItemTocart(index);
                      },
                    );
                  },
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
