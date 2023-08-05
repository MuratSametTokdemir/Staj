import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_examples/mid level/package/loading_bar.dart';

class PackageLearn extends StatefulWidget {
  PackageLearn({super.key});
  @override
  State<PackageLearn> createState() => _PackageLearnState();
}

class _PackageLearnState extends State<PackageLearn>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _launchUrl("https://pub.dev/packages/url_launcher");
      }),
      body: const LoadingBar(),
    );
  }

  void _launchUrl(String url) async {
    if (!await launch(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
