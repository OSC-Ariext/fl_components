import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatars"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text("SL"),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage("https://static.wikia.nocookie.net/doblaje/images/e/eb/Stan_Lee_2013.jpg/revision/latest?cb=20191105011002&path-prefix=es"),
          maxRadius: 110,
        ),
      ),
    );
  }
}
