import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:swifthelp_admin_panel/consts/constants.dart';
import 'package:swifthelp_admin_panel/controllers/MenuControllerr.dart';
import 'package:swifthelp_admin_panel/inner_screens/add_prod.dart';
import 'package:swifthelp_admin_panel/responsive.dart';
import 'package:swifthelp_admin_panel/services/utils.dart';
import 'package:swifthelp_admin_panel/widgets/buttons.dart';
import 'package:swifthelp_admin_panel/widgets/header.dart';
import 'package:swifthelp_admin_panel/widgets/orders_list.dart';
import 'package:swifthelp_admin_panel/widgets/text_widget.dart';
import 'package:provider/provider.dart';
import '../widgets/grid_products.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

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
            Header(
              fct: () {
                context.read<MenuControllerr>().controlDashboarkMenu();
              },
              title: 'Dashboard',
              showTexField: true,
            ),
            const SizedBox(height: 20),
            TextWidget(text: 'SwiftHelp Admin Panel', color: Colors.red),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ButtonsWidget(
                      onPressed: () {},
                      text: 'View All',
                      icon: Icons.store,
                      backgroundColor: const Color(0xFF7FD8C2)),
                  const Spacer(),
                  ButtonsWidget(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const UploadProductForm(),
                        ));
                      },
                      text: 'Add Service',
                      icon: Icons.add,
                      backgroundColor: const Color(0xFF7FD8C2)),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  // flex: 5,
                  child: Column(
                    children: [
                      Responsive(
                        mobile: ProductGridWidget(
                          crossAxisCount: size.width < 650 ? 2 : 4,
                          childAspectRatio:
                              size.width < 650 && size.width > 350 ? 1.2 : 0.2,
                        ),
                        desktop: ProductGridWidget(
                          childAspectRatio: size.width < 1400 ? 0.9 : 1.08,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const OrdersList(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
