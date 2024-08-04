import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swifthelp_app/widgets/text_widget.dart';
import 'package:provider/provider.dart';
import '../inner_screens/provider_details.dart';
import '../models/provider_model.dart';
import '../services/utils.dart';

class ProvidersWidget extends StatefulWidget {
  const ProvidersWidget({Key? key}) : super(key: key);
  @override
  State<ProvidersWidget> createState() => _ProvidersWidgetState();
}

class _ProvidersWidgetState extends State<ProvidersWidget> {

  @override
  Widget build(BuildContext context) {
    final providerModel = Provider.of<ProviderModel>(context);
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;

    return Material(
      borderRadius: BorderRadius.circular(12),
      color: Theme.of(context).cardColor,
      child: InkWell(
        onTap: () {
          // GlobalMethods.navigateTo(
          //     ctx: context, routeName: ProductDetails.routeName);
          Navigator.pushNamed(context, ProviderDetails.routeName,
              arguments: providerModel.id);
        },
        borderRadius: BorderRadius.circular(12),
        child: Column(children: [
          FancyShimmerImage(
            imageUrl: 'cleaning.png',
            height: size.width * 0.21,
            width: size.width * 0.2,
            boxFit: BoxFit.fill,
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 3,
                  child: TextWidget(
                    text: providerModel.name,
                    color: color,
                    maxLines: 1,
                    textSize: 18,
                    isTitle: true,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
