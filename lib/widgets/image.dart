import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade700,
        title: Text(
          'Image Widget',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: CachedNetworkImage(
            imageUrl: 'https://biographypeople.com/wp-content/uploads/2023/06/ms-dhoni-ipl-1680052966-1.webp',
            placeholder: (context,url)=> CircularProgressIndicator(),
            errorWidget: (context,url,error)=> Icon(Icons.error)
          ),


           /*
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 80,
                spreadRadius: 1,
                color: Colors.blueGrey.shade700
              )
            ],
            color: Colors.pink.shade300,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(

              image: AssetImage(
                'assets/kapoor.jpeg'
              ),

             /* image:  NetworkImage(
              'https://biographypeople.com/wp-content/uploads/2023/06/ms-dhoni-ipl-1680052966-1.webp',
              )
              */
              fit: BoxFit.cover,
            ),

           */
          ),
        ),

    );
  }
}
