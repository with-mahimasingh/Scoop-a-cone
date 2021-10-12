
import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Scoop A Cone".text.xl3.bold.color(MyTheme.darkBluishColor).make(),
        "Our Trending Delights".text.xl2.make(),
      ],
    );
  }
}
