import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Decrement
              IconButton(
                  onPressed: () {
                    if (quantity > 0) {
                      setState(() {
                        quantity--;
                      });
                    }
                  },
                  icon: Icon(Icons.remove)),

              // Quantity
              Text(quantity.toString()),

              // Increment
              IconButton(
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                  icon: Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}
