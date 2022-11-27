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

Future<bool?> flutterNFCKitWrite(double? money) async {
  var availability = await FlutterNfcKit.nfcAvailability;
  if (availability != NFCAvailability.available) {
    await FlutterNfcKit.finish();
    return false;
  }

  ndef.NDEFRecord aux = money as ndef.NDEFRecord;

  var tag = await FlutterNfcKit.poll(timeout: Duration(seconds: 10));
  // write NDEF records if applicable
  if (tag.ndefWritable == true) {
    // decoded NDEF records

    await FlutterNfcKit.writeNDEFRecords([aux]);
  } else {
    await FlutterNfcKit.finish();
    return false;
  }

  // Call finish() only once
  await FlutterNfcKit.finish();
  return true;
}
