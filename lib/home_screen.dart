import 'package:app_31/main.dart';
import 'package:app_31/profile.dart';
import 'package:app_31/shopping_items.dart';
import 'package:app_31/shopping_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'https://i.imgur.com/TXL4Fru.jpg',
      'https://preview.redd.it/o1p9qdvpd0cx.jpg?width=640&crop=smart&auto=webp&s=c69893dcdb82c34dff57b88aa1e80b079b30b92c',
      'https://collider.com/wp-content/uploads/the-lorax-movie-poster.jpg',
      'https://i.ytimg.com/vi/RJ2E0Sn7Oqc/maxresdefault.jpg'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('Open List'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return ShoppingList();
                    }));
                  },
                ),
                ElevatedButton(
                  child: const Text('Open Grid Posters'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return ShoppingItems(
                            numOFItems: images.length,
                            images: images,
                          );
                        },
                      ),
                    );
                  },
                ),
                ElevatedButton(
                    child: const Text('Open Profile'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return ProfileApp();
                      }));
                    }),
              ]),
        ),
      ),
    );
  }
}
