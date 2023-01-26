import 'package:flutter/material.dart';

class details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Blog App',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: const [
          Image(
            image: NetworkImage(
                'https://sugargeekshow.com/wp-content/uploads/2022/08/vanilla_cupcakes_featured-scaled.jpg'),
            height: 500,
            width: 500,
          ),
          Text(
            'Cupcake',
            style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'here will be the description ',
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
