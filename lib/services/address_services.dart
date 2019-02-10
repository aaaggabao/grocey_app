import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:grocey_app/model/Address_model.dart';

Future<String> _loadProduct() async{
  return await rootBundle.loadString('assets/address.json');
}

Future loadAddress() async{

  String jsonAddress = await _loadProduct();
  final jsonResponce = json.decode(jsonAddress);
  address address_model = new address.fromJson(jsonResponce);

}