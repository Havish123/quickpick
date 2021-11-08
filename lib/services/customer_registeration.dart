import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:quickpic/model/variable.dart';
import 'package:quickpic/services/auth.dart';
import 'package:quickpic/services/getcurrentlocation.dart';

register_customer(
  String username,
  String password,
  String email,
  String phone_no,
) async {
  Position position = await currentLocation().getLocation();
  print(position);
  GeoPoint point = GeoPoint(position.latitude, position.longitude);

  customer_data data = customer_data(
    username: username,
    email: email,
    password: password,
    phone_no: phone_no,
    point: point,
    isDriver: false,
  );
  print(data.toJson());
  final user = await AuthMethods().signUpWithEmailAndPassword(email, password);
  // final user = (await FirebaseAuth.instance
  //         .createUserWithEmailAndPassword(email: email, password: password))
  //     .user;
  print("hello");
  print(user);
  print("Hello");
  await FirebaseFirestore.instance
      .collection("customer")
      .doc(user.uid)
      .set(data.toJson());
}
