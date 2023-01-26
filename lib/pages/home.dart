import 'package:flutter/material.dart';

class home extends StatelessWidget {
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
          SizedBox(
            height: 16,
          ),
          BlogCard(
              imageUrl: 'https://restaurantclicks.com/wp-content/uploads/2022/09/Chocolate-Brands.jpg',
              title: 'Chocolate',
              description: 'here will be the description '),
          Divider(
            color: Colors.grey,
          ),
          BlogCard(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBX0x_nbaSwKxqGl5dMkfuPARyJQSXtuk58qvKodDl6oEk3rtajEw--9PoSXuAeCEC4bA&usqp=CAU',
              title: 'Cookies',
              description: 'here will be the description '),
          Divider(
            color: Colors.grey,
          ),
          BlogCard(
              imageUrl: 'https://sugargeekshow.com/wp-content/uploads/2022/08/vanilla_cupcakes_featured-scaled.jpg',
              title: 'Cupcake',
              description: 'here will be the description '),
          Divider(
            color: Colors.grey,
          ),
          BlogCard(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1Qvu3gjQXs9yKK7bcAU--EeenhA2ZjuCs2A&usqp=CAU',
              title: 'Crinkle cookies',
              description: 'here will be the description '),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  const BlogCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String imageUrl;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: NetworkImage(imageUrl),
          height: 70,
          width: 70,
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              description,
              style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
