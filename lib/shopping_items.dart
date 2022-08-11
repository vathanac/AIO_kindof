import 'package:flutter/material.dart';

import 'movie_card.dart';

class ShoppingItems extends StatefulWidget {
  const ShoppingItems({
    required this.numOFItems,
    required this.images,
  });

  final int numOFItems;
  final List<String> images;

  @override
  State<ShoppingItems> createState() => _ShoppingItemsState();
}

class _ShoppingItemsState extends State<ShoppingItems> {
  List<String> listImg = [];
  @override
  void initState() {
    // TODO: implement initState
    listImg.addAll(widget.images);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String desc =
        'During World War II, soldiers from the British Empire, Belgium and France try to evacuate from the town of Dunkirk during a arduous battle with German forces.';

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          setState(() {
            listImg.add(
                'https://user-images.githubusercontent.com/51419598/152648731-567997ec-ac1c-4a9c-a816-a1fb1882abbe.png');
          });
        }),
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Shopping Items'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[300],
        child: GridView(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
          ),
          children: List.generate(listImg.length, ((index) {
            return Card(
              margin: const EdgeInsets.all(7),
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              color: Colors.white,
              elevation: 5,
              child: InkWell(
                onTap: () {
                  setState(() {
                    listImg.removeAt(index);
                  });
                },
                child: MovieCard(
                  images: listImg[index],
                  description: desc,
                ),
              ),
            );
          })),
        ),
      ),
    );
  }
}
