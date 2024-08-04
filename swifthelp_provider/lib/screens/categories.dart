import 'package:flutter/material.dart';
import 'package:swifthelp_provider/consts/constants.dart';
import 'package:swifthelp_provider/services/utils.dart';
import 'package:swifthelp_provider/widgets/buttons.dart';
import 'package:swifthelp_provider/widgets/text_widget.dart';


class DashboardScreen extends StatefulWidget {
  static const routeName = '/DashboardScreen';
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    Color color = Utils(context).color;
    return SafeArea(
      child: SingleChildScrollView(
        controller: ScrollController(),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextWidget(text: 'SwiftHelp Provider Panel', textSize: 30, color: Colors.red),
            const SizedBox(height: 15),
            TextWidget(text: 'View Your Orders', textSize: 20, color: Color.fromARGB(255, 15, 98, 131)),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  
                  ButtonsWidget(
                      onPressed: () {},
                      text: 'View All',
                      icon: Icons.view_agenda,
                      backgroundColor: Colors.blue),
                ],
              ),
            ),
            Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(8.0),
        color: Theme.of(context).cardColor.withOpacity(0.4),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: size.width < 650 ? 3 : 1,
                child: Image.asset(
                  'assets/images/cooking.jpg',
                  fit: BoxFit.fill,
                  // height: screenWidth * 0.15,
                  // width: screenWidth * 0.15,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidget(
                      text:
                          'Cooker 3 DAYS For Rs.10 000}',
                      color: color,
                      textSize: 16,
                      isTitle: true,
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          TextWidget(
                            text: 'By',
                            color: Colors.blue,
                            textSize: 16,
                            isTitle: true,
                          ),
                       const Text('  Ishini De Silva')
                        ],
                      ),
                    ),
                   const Text(
                      '27/07/2024',
                    )
                  ],
                ),
              ),
              
            ],
            
          ),
        ),
        
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(8.0),
        color: Theme.of(context).cardColor.withOpacity(0.4),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: size.width < 650 ? 3 : 1,
                child: Image.asset(
                  'assets/images/rfclean.jpg',
                  fit: BoxFit.fill,
                  // height: screenWidth * 0.15,
                  // width: screenWidth * 0.15,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidget(
                      text:
                          'Roof Clean 3 Hours For Rs.2000}',
                      color: color,
                      textSize: 16,
                      isTitle: true,
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          TextWidget(
                            text: 'By',
                            color: Colors.blue,
                            textSize: 16,
                            isTitle: true,
                          ),
                       const Text('  Nathasha Varshani')
                        ],
                      ),
                    ),
                   const Text(
                      '26/07/2024',
                    )
                  ],
                ),
              ),
              
            ],
            
          ),
        ),
        
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(8.0),
        color: Theme.of(context).cardColor.withOpacity(0.4),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: size.width < 650 ? 3 : 1,
                child: Image.asset(
                  'assets/images/gardnings.jpg',
                  fit: BoxFit.fill,
                  // height: screenWidth * 0.15,
                  // width: screenWidth * 0.15,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidget(
                      text:
                          'Gardning 2 DAYS For Rs.5000',
                      color: color,
                      textSize: 16,
                      isTitle: true,
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          TextWidget(
                            text: 'By',
                            color: Colors.blue,
                            textSize: 16,
                            isTitle: true,
                          ),
                       const Text('  pasindu Bishan')
                        ],
                      ),
                    ),
                   const Text(
                      '27/07/2024',
                    )
                  ],
                ),
              ),
              
            ],
            
          ),
        ),
        
      ),
    ),
    
          ],
        ),
      ),
    );
  }
}
