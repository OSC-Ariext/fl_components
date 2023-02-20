import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20,),
          CustomCardType2(name: null, imageUrl: 'https://petapixel.com/assets/uploads/2022/08/fdfs11-800x533.jpg'),
          SizedBox(height: 20,),
          CustomCardType2(name: null, imageUrl: 'https://petapixel.com/assets/uploads/2022/08/fdfs11-800x533.jpg'),
          SizedBox(height: 20,),
          CustomCardType2(name: "Un hermoso paisaje", imageUrl: 'https://petapixel.com/assets/uploads/2022/08/fdfs11-800x533.jpg')
        ],
      ),
    );
  }
}



