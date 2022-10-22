import 'package:flutter/material.dart';

class Widgets extends StatelessWidget {
  const Widgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: const DecorationImage(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6uj8UyBfbnUnsnRYHHBxrGz_EDA760ASRw3jdkpWASg&s'),
            fit: BoxFit.cover,
          ),
          border: Border.all(color: Colors.greenAccent, width: 4),
          boxShadow: const [
            BoxShadow(
                color: Colors.greenAccent,
                offset: Offset(2.4, 3.4),
                blurRadius: 10.0,
                spreadRadius: 2.3),
          ]
          // borderRadius: BorderRadius.circular(10),
          ),
      child: FloatingActionButton(
        onPressed: () {},
        elevation: 8,
        child: const Icon(Icons.add),
      ),
    );
  }
}
