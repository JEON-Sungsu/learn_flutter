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
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: List.generate(20, (index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey
                      ),
                    ),
                    const SizedBox(
                      width:12,
                    ),
                    Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
              );
            })
          ),
        ),
      ),
    );
  }
}
