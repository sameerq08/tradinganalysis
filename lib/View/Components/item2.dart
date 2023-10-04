import 'package:flutter/material.dart';

class Item2 extends StatelessWidget {
  var item;
  Item2({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Image.network(item.image)],
      ),
    );
  }
}
