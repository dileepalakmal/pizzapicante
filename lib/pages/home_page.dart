import 'package:flutter/material.dart';

import '../services/page_navigation.dart';
import '../widgets/cw_copyright_bar.dart';
import '../theme/about_app.dart';
import '../theme/app_theme.dart';
import '../theme/cs_text.dart';
import '../widgets/cw_header_card.dart';
import '../widgets/cw_item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  Widget _headerCards() {
    return CWHeaderCard(
        cardImage: 'assets/images/pizza-g306384ecf_1920.jpg', onPressed: () {});
  }

  Widget _itemCards(
      String image, String title, String description, VoidCallback onPressed) {
    return CWItemCard(
        iconImage: image,
        title: title,
        description: description,
        onPressed: onPressed);
  }

  Widget _bodyTop() {
    return Column(
      children: [
        const SizedBox(
          height: 20.0,
        ),
        _headerCards(),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          AboutApp.appName,
          style: CSText().headline4Bold,
          textAlign: TextAlign.center,
        ),
        Text(
          "Delicious food for you",
          style: CSText().subtitle1SemiBold,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _itemCards('assets/icons/order_d.png', "Order",
                "Place your order now.", PageNavigation(context).gotoOrderPage),
            _itemCards('assets/icons/menu_d.png', "Menu", "View the menu here.",
                PageNavigation(context).gotoMenuPage),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _itemCards('assets/icons/info_d.png', "Info",
                "This is about us.", PageNavigation(context).gotoInformationPage),
            _itemCards('assets/icons/contact_d.png', "Contact",
                "Give us a quick call.", PageNavigation(context).gotoContactPage),
          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
      ],
    );
  }

  Widget _bodyBottom() {
    return const CWCopyrightBar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: AppThemeData.pureColorWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            _bodyTop(),
            _bodyBottom(),
          ],
        ),
      ),
    ));
  }
}
