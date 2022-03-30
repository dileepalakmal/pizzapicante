import 'package:flutter/material.dart';
import '../theme/cs_text.dart';
import './/theme/app_theme.dart';

class CWItemCard extends StatelessWidget {
  const CWItemCard(
      {Key? key,
      required this.iconImage,
      required this.title,
      required this.description,
      required this.onPressed})
      : super(key: key);

  final String iconImage;
  final String title;
  final String description;
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
          color: AppThemeData.appColorWhite,
          width: 150.0,
          height: 120.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconImage,
                fit: BoxFit.cover,
                scale: 3.0,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                title,
                style: CSText().body1Bold,
              ),
            ],
          ),
        ),
      ),
      onTap: onPressed,
    );
  }
}
