import 'package:flutter/material.dart';
import 'package:mi/components/models/cartmodel.dart';
import 'package:provider/provider.dart';

class Cartpagae extends StatelessWidget {
  const Cartpagae({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "My Cart",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Consumer<Cartmodel>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(
                    child: ListView.builder(
                  itemCount: value.cartItems.length,
                  padding: EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 213, 212, 212),
                            borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          leading: Image.asset(
                            value.cartItems[index][2],
                            height: 36,
                          ),
                          title: Text(value.cartItems[index][0]),
                          subtitle: Text('\$' + value.cartItems[index][1]),
                          trailing: IconButton(
                            onPressed: () =>
                                Provider.of<Cartmodel>(context, listen: false)
                                    .removeItemTocart(index),
                            icon: Icon(Icons.cancel),
                          ),
                        ),
                      ),
                    );
                  },
                )),
              ],
            );
          },
        ));
  }
}
