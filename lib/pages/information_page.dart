import 'package:flutter/material.dart';

import '../theme/about_app.dart';
import '../theme/app_theme.dart';
import '../theme/cs_text.dart';
import '../widgets/cw_copyright_bar.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    Widget _title(String title, String image, String description) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            scale: 5.0,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: CSText().body1Bold,
              ),
              Text(
                description,
                style: CSText().body2Normal,
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ],
      );
    }

    Widget _imageSlider() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/gif/order_now.gif',
            scale: 3.5,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Image.asset(
            'assets/gif/delivery.gif',
            scale: 4.0,
          ),
        ],
      );
    }

    Widget _bodyTop() {
      return Column(
        children: [
          Text(
            "Hello there! This is about us.",
            style: CSText().body2Normal,
          ),
          const SizedBox(
            height: 20.0,
          ),
          _title(
              "Location", "assets/icons/location_d.png", AboutApp.appLocation),
          const Divider(
            color: AppThemeData.appColorGrey,
          ),
          _title("Website", "assets/icons/website_d.png", AboutApp.appWebsite),
          const Divider(
            color: AppThemeData.appColorGrey,
          ),
          _title("Email", "assets/icons/email_d.png", AboutApp.appEmail),
          const Divider(
            color: AppThemeData.appColorGrey,
          ),
          _title("Phone", "assets/icons/contact_d.png", AboutApp.appPhone),
          const Divider(
            color: AppThemeData.appColorGrey,
          ),
          const SizedBox(
            height: 10.0,
          ),
          _imageSlider(),
          const SizedBox(
            height: 110.0,
          ),
          // _socialLinks(),
          // const SizedBox(
          //   height: 20.0,
          // ),
        ],
      );
    }

    Widget _bodyBottom() {
      return const CWCopyrightBar();
    }

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: AppThemeData.pureColorBlack,
              ),
              onPressed: () async {
                Navigator.pop(context);
                debugPrint(
                    "////////////// ----------- CLOSE PAGE ----------- //////////////");
              },
            ),
            backgroundColor: AppThemeData.pureColorWhite,
            centerTitle: true,
            title: Text(
              AboutApp.appName,
              style: CSText().headline4Bold,
            ),
          ),
        ),
        body: Container(
          color: AppThemeData.pureColorWhite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
