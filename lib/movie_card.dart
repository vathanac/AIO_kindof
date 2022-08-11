import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({
    Key? key,
    required this.images,
    required this.description,
  }) : super(key: key);

  final String images;
  final String description;

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Container(
        //   decoration: BoxDecoration(
        //       image: const DecorationImage(
        //           image: AssetImage('assets/avenger.png')
        //           ),

        //       borderRadius: BorderRadius.circular(5)),
        // ),

        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(
              width: double.infinity,
              fit: BoxFit.fitWidth,
              image: NetworkImage(widget.images),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          child: Text(
            widget.description,
            maxLines: 3,
            overflow: TextOverflow.fade,
          ),
        ),
      ],
    );
  }
}
