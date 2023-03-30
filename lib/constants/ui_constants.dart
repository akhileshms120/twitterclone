import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:twitter/constants/assets_constan.dart';
import 'package:twitter/theme/pallete.dart';

class UIConstants {

  static AppBar appBar(){
    return AppBar(
      title: SvgPicture.asset(AssetsConstants.twitterLogo,
      color: Pallete.blueColor,
      ),
      centerTitle: true,
    );
  }
}