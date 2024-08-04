import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:swifthelp_app/inner_screens/feeds_screen.dart';
import 'models/provider_model.dart';
import 'providers/provider_provider.dart';
import 'screens/provider_detail_screen.dart';
import 'services/global_methods.dart';
import 'services/utils.dart';
import 'widgets/provider_items.dart';
import 'widgets/text_widget.dart';

class ProviderScreen extends StatefulWidget {
  const ProviderScreen({super.key});

  @override
  State<ProviderScreen> createState() => _ProviderScreenState();
}

class _ProviderScreenState extends State<ProviderScreen> {


  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context);
    final themeState = utils.getTheme;
    Size size = utils.getScreenSize;
    final Color color = Utils(context).color;
    final providerProviders = Provider.of<ProviderProvider>(context);
    List<ProviderModel> allProviders = providerProviders.getProviders;
        
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 37,
            ),
            TextButton(
              onPressed: () {},
              child: TextWidget(
                text: 'Best Providers',
                isTitle: true,
                maxLines: 1,
                color: Colors.black,
                textSize: 30,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Row(
                    children: [
                       SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                 SizedBox(
                  width: 8,
                ),
                
              ],
            ),
            
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Providers',
                    color: color,
                    textSize: 22,
                    isTitle: true,
                  ),
                  // const Spacer(),
                  TextButton(
                    onPressed: () {
                      GlobalMethods.navigateTo(
                          ctx: context, routeName: FeedsScreen.routeName);
                    },
                    child: TextWidget(
                      text: 'Browse all',
                      maxLines: 1,
                      color: Colors.blue,
                      textSize: 20,
                    ),
                  ),
                  
                  
                ],
              ),
            ),
            const SizedBox(
                  height: 10,
                ),
            _listTiles(
                  title: 'Pasindu Bishan',
                  subtitle: 'Tangalle, Sri Lanka',
                  icon: IconlyLight.profile,
                  onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProviderDetailScreen()),
                );
              },
              color: color,
            ),
                const SizedBox(
                  height: 5,
                ),
                _listTiles(
                  title: 'Nathasha Varshani',
                  subtitle: 'Rathnapura, Sri Lanka',
                  icon: IconlyLight.profile,
                  onPressed: () async {
                    
                  },
                  color: color,
                ),
                const SizedBox(
                  height: 5,
                ),
                _listTiles(
                  title: 'Navin Sadupa',
                  subtitle: 'Colombo, Sri Lanka',
                  icon: IconlyLight.profile,
                  onPressed: () async {
                    
                  },
                  color: color,
                ),
                const SizedBox(
                  height: 5,
                ),
                _listTiles(
                  title: 'Kemli Priya',
                  subtitle: 'Rathnapura, Sri Lanka',
                  icon: IconlyLight.profile,
                  onPressed: () async {
                    
                  },
                  color: color,
                ),
                const SizedBox(
                  height: 5,
                ),
                _listTiles(
                  title: 'Manoj Priyashan',
                  subtitle: 'Galle, Sri Lanka',
                  icon: IconlyLight.profile,
                  onPressed: () async {
                    
                  },
                  color: color,
                ),
                const SizedBox(
                  height: 5,
                ),
                _listTiles(
                  title: 'Nilash Devinda',
                  subtitle: 'Matara, Sri Lanka',
                  icon: IconlyLight.profile,
                  onPressed: () async {
                    
                  },
                  color: color,
                ),
                const SizedBox(
                  height: 5,
                ),
                _listTiles(
                  title: 'Malidu Perera',
                  subtitle: 'Dikwella, Sri Lanka',
                  icon: IconlyLight.profile,
                  onPressed: () async {
                    
                  },
                  color: color,
                ),
                const SizedBox(
                  height: 5,
                ),
                _listTiles(
                  title: 'Kamesh Taraka',
                  subtitle: 'Beliatta, Sri Lanka',
                  icon: IconlyLight.profile,
                  onPressed: () async {
                    
                  },
                  color: color,
                ),
               const SizedBox(
                  height: 5,
                ),
                _listTiles(
                  title: 'Priyan Sanju',
                  subtitle: 'kalutara, Sri Lanka',
                  icon: IconlyLight.profile,
                  onPressed: () async {
                    
                  },
                  color: color,
                ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              childAspectRatio: size.width / (size.height * 0.55),
              children: List.generate(
                  allProviders.length < 4 ? allProviders.length : 4, (index) {
                return ChangeNotifierProvider.value(
                    value: allProviders[index], child: const ProvidersWidget());
              }),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

Widget _listTiles({
  required String title,
  String? subtitle,
  required IconData icon,
  required Function onPressed,
  required Color color,
}) {
  return ListTile(
    title: TextWidget(
      text: title,
      color: color,
      textSize: 22,
      // isTitle: true,
    ),
    subtitle: TextWidget(
      text: subtitle ?? "",
      color: color,
      textSize: 18,
    ),
    leading: Icon(icon),
    trailing: const Icon(IconlyLight.arrowRight2),
    onTap: () {
      onPressed();
    },
  );
}
