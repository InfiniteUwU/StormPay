// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:ndef/ndef.dart' as ndef;

Future<double> flutterNFCKit() async {
  var record = "0";

  var availability = await FlutterNfcKit.nfcAvailability;
  if (availability != NFCAvailability.available) {
    await FlutterNfcKit.finish();
    return double.parse(record);
  }

  var tag = await FlutterNfcKit.poll(timeout: Duration(seconds: 10));
  if (tag == true) {
    // read NDEF records if available
    if (tag.ndefAvailable == true) {
      for (var record in await FlutterNfcKit.readNDEFRecords(cached: false)) {
        record = record;
      }
    }
  }

  // Call finish() only once
  await FlutterNfcKit.finish();

  return double.parse(record);
}
