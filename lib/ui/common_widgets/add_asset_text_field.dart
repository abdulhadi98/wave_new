import 'package:flutter/material.dart';
import 'package:wave_flutter/helper/app_colors.dart';
import 'package:wave_flutter/helper/app_fonts.dart';
import 'package:wave_flutter/ui/common_widgets/base_statefull_widget.dart';

class AddAssetTextField extends BaseStateFullWidget {
  final String hintKey;
  final onChanged;

  AddAssetTextField({required this.hintKey, required this.onChanged,});

  @override
  _AddAssetTextFieldState createState() => _AddAssetTextFieldState();
}

class _AddAssetTextFieldState extends BaseStateFullWidgetState<AddAssetTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      alignment: Alignment.center,
      // padding: EdgeInsets.only(top: height* .008,),
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: TextField(
          autofocus: false,
          enabled: true,
          onChanged: widget.onChanged,
          textInputAction: TextInputAction.next,
          // onEditingComplete: () => uiController.setValidateAddPersonalAssetInfo(uiController.validateAddPersonalAssetInfo()),
          style: TextStyle(
            color: AppColors.white,
            fontSize: AppFonts.getMediumFontSize(context),
            height: 1.1,
          ),
          keyboardType: TextInputType.text,
          cursorColor: AppColors.blue,
          textAlign: TextAlign.center,
          maxLines: 1,
          // controller: controller,
          decoration: InputDecoration(
            contentPadding:
            EdgeInsets.symmetric(horizontal: width * .02, vertical: 0.0,),
            fillColor: AppColors.mainColor,
            filled: true,
            // labelText: labelKey,
            // alignLabelWithHint: true,
            // labelStyle: labelKey!= null ? TextStyle(
            //   color: AppColors.white.withOpacity(.3),
            //   fontSize: AppFonts.getSmallFontSize(context),
            // ): null,
            hintText: widget.hintKey,
            hintStyle: TextStyle(
              color: AppColors.white.withOpacity(.3),
              fontSize: AppFonts.getSmallFontSize(context),
            ),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
