import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/04_picture_search/data/model/picture.dart';
import 'package:learn_flutter/04_picture_search/presentation/view_model/picture_view_model.dart';
import 'package:provider/provider.dart';

class PictureDetailScreen extends StatefulWidget {
  ImagePicture picture;

  PictureDetailScreen({super.key, required this.picture});

  @override
  State<PictureDetailScreen> createState() => _StatePictureDetailScreen();
}

class _StatePictureDetailScreen extends State<PictureDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Hero(
                tag: widget.picture.tags,
                child: Image.network(
                  widget.picture.url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.picture.tags,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
