import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeebackRating extends StatelessWidget {
  const FeebackRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ratings')),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            // * rating Bar Change
            const Text('Rate our app'),
            RatingBar.builder(
              itemCount: 5,
              initialRating: 2,
              minRating: 1,
              allowHalfRating: true,
              direction: Axis.horizontal,
              itemPadding: const EdgeInsets.symmetric(horizontal: 8),
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (value) {
                print(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
