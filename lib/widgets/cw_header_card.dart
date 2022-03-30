import 'package:flutter/material.dart';
import '../theme/cs_text.dart';
import './/theme/app_theme.dart';

class CWHeaderCard extends StatelessWidget {
  const CWHeaderCard(
      {Key? key, required this.cardImage, required this.onPressed})
      : super(key: key);

  final String cardImage;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            color: AppThemeData.pureColorWhite,
            width: MediaQuery.of(context).size.width / 1.2,
            height: 200.0,
            child: Stack(children: [
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Stack(
                    children: [
                      Container(
                          color: AppThemeData.appColorLightGrey,
                          child: Column(
                            children: [
                              Image.asset(
                                cardImage,
                                fit: BoxFit.cover,
                              ),
                            ],
                          )),
                    ],
                  )),
              Positioned(
                top: 40,
                left: 10,
                right: 5,
                child: Container(
                  color: AppThemeData.appColorBlackWithOpacity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Order your PIZZA now",
                        style: CSText().headline6Bold,
                      ),
                      Text(
                        "Your Favourites",
                        style: CSText().subtitle2Bold,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          )),
      onTap: onPressed,
    );
  }
}
