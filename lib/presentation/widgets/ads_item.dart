import 'package:flutter/material.dart';

class AdsItem extends StatelessWidget {
  final Widget? image;
  final String name;
  final String location;
  final String endingAt;
  final double percentage;
  final double price;
  const AdsItem({
    Key? key,
    required this.name,
    required this.percentage,
    required this.location,
    required this.endingAt,
    required this.price,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            if (image != null) image!,
            if (image == null)
              Container(
                height: 100,
                color: Colors.lightBlueAccent,
              ),
            // Positioned(
            //   top: 0,
            //   right: 0,
            //   child: Container(
            //     padding: const EdgeInsets.all(4),
            //     decoration: BoxDecoration(
            //       color: Colors.red.withOpacity(0.7),
            //     ),
            //     child: Text(
            //       "$percentage% OFF",
            //       style: const TextStyle(
            //         fontWeight: FontWeight.w600,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black12,
                      Colors.black45,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      endingAt,
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          location,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "RWF $price",
          style: const TextStyle(
            fontSize: 11,
            color: Colors.black,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        Text(
          "RWF ${((price * percentage) / 100)}",
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
