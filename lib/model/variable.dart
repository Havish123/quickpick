import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//HomePage
var title = "Quick Pick";

//Starting Animation
var stanim_img_width = 230.0, stanim_img_height = 230.0;
var img_location = "assets/images/logo.png";

//Login
var head_text = "HELLO THERE WELCOME BACK";
var context_width = 0.0;
var context_height = 0.0;

//SearchBar
var sb_width = 330.0;
var sb_height = 100.0;

//Colors
Color color = Color.fromRGBO(252, 186, 3, 10);

class customer_data {
  String username;
  String email;
  String password;
  String phone_no;
  bool isDriver;
  GeoPoint point;

  customer_data({
    this.username,
    this.email,
    this.password,
    this.phone_no,
    this.point,
    this.isDriver,
  });

  Map<String, dynamic> toJson() => {
        'name': username,
        'email': email,
        'password': password,
        'phone_no': phone_no,
        'Coordinates': point,
        'isDriver': isDriver,
      };
}

class driver_data {
  String username;
  String password;
  String email;
  String phone_no;
  GeoPoint point;
  String license;
  String vehicle_no;
  bool isDriver;
  driver_data({
    this.username,
    this.email,
    this.password,
    this.phone_no,
    this.license,
    this.vehicle_no,
    this.point,
    this.isDriver,
  });

  Map<String, dynamic> toJson() => {
        'name': username,
        'email': email,
        'password': password,
        'phone_no': phone_no,
        'license': license,
        'vehicle_no': vehicle_no,
        'Coordinates': point,
        'isDriver': isDriver,
      };
}
