import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/// 色を管理するクラス
///
/// (例) `ColorType.header.background`
class ColorType {
  ColorType._();

  static const base = ColorsBase();

  static const header = ColorsHeader();

  static const footer = ColorsFooter();

  static const home = ColorsHome();

  static const camera = ColorsCamera();

  static const dataConfirm = ColorsDataConfirm();
}

class ColorsBase {
  const ColorsBase();

  Color get background => const Color(0xFFF3E5E5);
  Color get initBackGround => const Color(0xFFF3E5E5);
}

class ColorsHeader {
  const ColorsHeader();

  Color get background => const Color(0xFFFFFFFF);
}

class ColorsFooter {
  const ColorsFooter();

  Color get background => const Color(0xFFFFFFFF);
  Color get unSelectedItem => const Color(0xFF333333);
  Color get selectedItem => const Color(0xFFFF0000);
}

class ColorsHome {
  const ColorsHome();

  Color get loadingBackground => const Color(0xFFAAAAAA);
  Color get cameraAreaBorder => const Color(0xFFF3E5E5);
  Color get cameraAreaBackground => const Color(0xFFFFFFFF);
  Color get cameraAreaButtonBackGround => const Color(0xFF9E9E9E);
}

class ColorsCamera {
  const ColorsCamera();

  Color get rect => const Color(0xFFFFFFFF);
  Color get errorBackGround => const Color(0xFF8E8E93);
  Color get buttonBackGround => const Color(0x60FFFFFF);
  Color get buttonBackGroundShadow => const Color(0x13747480);
  Color get pauseCameraButtonActive => const Color(0xFF9E9E9E);
  Color get pauseCameraButtonDisabled => const Color(0x13747480);
  Color get resumeCameraButtonActive => const Color(0xFF9E9E9E);
  Color get resumeCameraButtonDisabled => const Color(0x13747480);
}

class ColorsDataConfirm {
  const ColorsDataConfirm();

  Color get chartLine => const Color(0xFF8E8E93);
}
