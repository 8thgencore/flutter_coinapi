import 'package:flutter/material.dart';
import 'package:flutter_coinapi/resources/typography.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    required this.message,
    required this.name,
    required this.imagePath,
    super.key,
  });

  final String message;
  final String name;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message, style: AppTypography.r16),
            Text(name, style: AppTypography.b18),
          ],
        ),
        CircleAvatar(backgroundImage: AssetImage(imagePath)),
      ],
    );
  }
}
