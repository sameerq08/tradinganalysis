import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  var item;
  Item({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: myWidth * 0.06, vertical: myHeight * 0.03),
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: myHeight * 0.05,
                child: Image.network(item.image),
              ),
            ),
            SizedBox(
              width: myWidth * 0.03,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.id,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '0.4' + item.symbol,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              width: myWidth * 0.03,
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: myHeight * 0.05,
                width: myWidth * 0.1,
                child: Sparkline(
                  data: item.sparklineIn7D.price,
                  lineWidth: 2.0,
                  lineColor: Colors.red,
                  fillMode: FillMode.below,
                  fillGradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.0, 0.7],
                      colors: [Colors.red, Colors.red.shade100]),
                ),
              ),
            ),
            SizedBox(
              width: myWidth * 0.03,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$ ${item.currentPrice}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        item.priceChange24H.toString(),
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: myWidth * 0.03,
                      ),
                      Text(
                        item.marketCapChangePercentage24H.toStringAsFixed(2),
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
