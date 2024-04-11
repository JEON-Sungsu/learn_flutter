import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PictureListSkeleton extends StatefulWidget {
  const PictureListSkeleton({super.key});

  @override
  State<PictureListSkeleton> createState() => _PictureListSkeletonState();
}

class _PictureListSkeletonState extends State<PictureListSkeleton> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        padding: const EdgeInsets.all(24),
        children: List.generate(20, (index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey
            ),
          );
        }),
      )
    );
  }
}