import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: MasonryGridView.builder(
        itemCount: 7,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(2.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.asset(
                  'lib/images/mage' + (index + 1).toString() + '.jpg')),
        ),
      ),
    );
  }
}
