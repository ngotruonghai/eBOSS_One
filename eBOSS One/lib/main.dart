import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'eBOSS.dart';

void main() async {
  await initializeDateFormatting('vi_VN', null);
  runApp(eBOSS_One());
}
