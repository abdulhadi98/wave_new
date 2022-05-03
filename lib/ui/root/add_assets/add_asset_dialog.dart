import 'package:flutter/material.dart';
import 'package:wave_flutter/helper/app_colors.dart';
import 'package:wave_flutter/helper/app_fonts.dart';
import 'package:wave_flutter/local/app_local.dart';

class AddAssetDialog extends StatelessWidget {
  final Widget contentWidget;
  final String titleKey;
  const AddAssetDialog({required this.contentWidget, required this.titleKey});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    AppLocalizations appLocal = AppLocalizations.of(context);
    return Stack(
      children: [
        Positioned(
          top: width * .075 / 2,
          right: width * .075 / 2,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * .025),
                Text(
                  appLocal.trans(titleKey),
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: AppFonts.getLargeFontSize(context),
                    height: 1.0,
                  ),
                ),
                SizedBox(height: height* .020),
                Container(
                  margin: const EdgeInsets.all(1),
                  padding: EdgeInsets.symmetric(horizontal: width * .08),
                  decoration: BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 0.0,
                      maxHeight: height* .4,
                    ),
                    // height: height* .4,
                    child: SingleChildScrollView(child: contentWidget),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.gray, width: .5),
                shape: BoxShape.circle,
                color: AppColors.mainColor,
              ),
              child: Icon(
                Icons.close,
                color: AppColors.gray,
                size: width * .055,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
