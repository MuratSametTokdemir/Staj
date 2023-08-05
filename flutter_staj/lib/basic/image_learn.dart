import 'package:flutter/material.dart';
import 'package:flutter_examples/images.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 400,
          width: 300,
          child: Image.asset(
            PngImage(
              Name: AssetsEnum.logo.toPng,
            ).nameWithPath,
            fit: BoxFit.cover,
          ),
        ),
        /* Image.network("https://w7.pngwing.com/pngs/663/276/png-transparent-book-apple-two-books-an-apple-love-text-heart-thumbnail.png",errorBuilder: 
          (context, error, stackTrace) => const Icon(Icons.abc_outlined))*/
      ]),
    );
  }
}

class ImageItems {
  final String logo = "logo";
  final String saulogo = "indir";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.Name});
  final String Name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(nameWithPath, fit: BoxFit.cover);
  }

  String get nameWithPath => 'assets/$Name.png';
}
