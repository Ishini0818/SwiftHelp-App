import 'package:flutter/material.dart';
import 'package:swifthelp_app/services/utils.dart';
import 'package:swifthelp_app/widgets/categories_widget.dart';
import 'package:swifthelp_app/widgets/text_widget.dart';

class CategoriesScreen extends StatefulWidget {
  static const routeName = '/CetagoryScreen';
  CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<Color> gridColors = [
    const Color(0xff53B175),
    const Color(0xffF8A44C),
    const Color(0xffF7A593),
    const Color(0xffD3B0E0),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),
    const Color(0xffA3E4D7), // New color
  const Color(0xffE74C3C), // New color
  const Color(0xff2980B9), // New color
      const Color(0xff53B175),
    const Color(0xffF8A44C),
    const Color(0xffF7A593),
  ];

List<Map<String, dynamic>> catInfo = [
    {
      'imgPath': 'assets/images/cat/cleaning.png',
      'catText': 'Cleaning',
    },
    {
      'imgPath': 'assets/images/cat/cooking1.png',
      'catText': 'Cooking',
    },
    {
      'imgPath': 'assets/images/cat/gardning.png',
      'catText': 'Gardening',
    },
    {
      'imgPath': 'assets/images/cat/babysitter.png',
      'catText': 'Babysitter services',
    },
    {
      'imgPath': 'assets/images/cat/recrycle.png',
      'catText': 'Recycling',
    },
     {
      'imgPath': 'assets/images/cat/plumber.png',
      'catText': 'Plumbing',
    },
    {
      'imgPath': 'assets/images/cat/green-house.png',
      'catText': 'Green home creation',
    },
    {
      'imgPath': 'assets/images/cat/mechanic.png',
      'catText': 'Mechanic services',
    },
    {
      'imgPath': 'assets/images/cat/smart-house.png',
      'catText': 'Smart home creation',
    },
    {
      'imgPath': 'assets/images/cat/electrician.png',
      'catText': 'Electric services',
    },
    {
      'imgPath': 'assets/images/cat/forklift.png',
      'catText': 'Forklift services',
    },
    {
      'imgPath': 'assets/images/cat/pest-control.png',
      'catText': 'Pest controlling',
    },

  ];

  @override
  Widget build(BuildContext context) {

    final utils = Utils(context);
    Color color = utils.color;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: TextWidget(
            text: 'Categories',
            color: color,
            textSize: 24,
            isTitle: true,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 240 / 250,
            crossAxisSpacing: 10, // Vertical spacing
            mainAxisSpacing: 10, // Horizontal spacing 
            children: List.generate(12, (index) {
              return CategoriesWidget(
                catText: catInfo[index]['catText'],
                imgPath: catInfo[index]['imgPath'],
                passedColor: gridColors[index],
              );
            }),
          ),
        ));
  }
}