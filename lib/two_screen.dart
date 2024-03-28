import 'package:flutter/material.dart';

class TwoScreen extends StatefulWidget {
  String title,description,brand,category,thumbnail;
  int price;
  double rating;
  TwoScreen({
    required this.title,
    required this.description,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.price,
    required this.rating,
});

  @override
  State<TwoScreen> createState() => _TwoScreenState();
}

class _TwoScreenState extends State<TwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage:NetworkImage(widget.thumbnail),
              ),
              Text(widget.description),
              Text(widget.category),
              Text(widget.brand),
              Text(widget.price.toString()),
              Text(widget.rating.toString()),

            ],
          ),
        ),
      ),
    );
  }
}
