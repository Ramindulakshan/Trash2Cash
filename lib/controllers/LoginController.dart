import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;

  selectCountry(BuildContext context) async {
    countryCode = await countryPicker.showPicker(
      pickerMinHeight: 30,
      context: context,
    );
    update();
  }
}
