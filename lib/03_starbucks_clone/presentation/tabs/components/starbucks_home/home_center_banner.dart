import 'package:flutter/material.dart';
import 'package:learn_flutter/common/data/model/photo.dart';

class HomeCenterBanner extends StatefulWidget {
  final Photo photo;

  const HomeCenterBanner({super.key, required this.photo});

  @override
  State<HomeCenterBanner> createState() => _HomeCenterBannerState();
}

class _HomeCenterBannerState extends State<HomeCenterBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        width: double.infinity,
        height: 150,
        child: Image.asset(
          widget.photo.url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
