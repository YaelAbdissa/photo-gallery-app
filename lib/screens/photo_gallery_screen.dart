import 'package:flutter/material.dart';

class PhotoGalleryScreen extends StatefulWidget {
  const PhotoGalleryScreen({Key? key}) : super(key: key);

  @override
  State<PhotoGalleryScreen> createState() => _PhotoGalleryScreenState();
}

class _PhotoGalleryScreenState extends State<PhotoGalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          itemCount: 18,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            return Image.network(
              "https://placeimg.com/640/480/any",
              fit: BoxFit.cover,
            );
          }),
    ));
  }
}
