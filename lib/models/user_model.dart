import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    final String id;
    final String tin;
    final bool role;
    final String name;
    final String surname;
    final int age;
    final String mail;
    final String phone;
    final String adress;
    final bool registrationStatus;
    final Timestamp membershipDate;
    final int dept;
    final Timestamp penaltyDate;
    final int bookCount;

    User({
        required this.id,
        required this.tin,
        required this.role,
        required this.name,
        required this.surname,
        required this.age,
        required this.mail,
        required this.phone,
        required this.adress,
        required this.registrationStatus,
        required this.membershipDate,
        required this.dept,
        required this.penaltyDate,
        required this.bookCount,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        tin: json["tin"],
        role: json["role"],
        name: json["name"],
        surname: json["surname"],
        age: json["age"],
        mail: json["mail"],
        phone: json["phone"],
        adress: json["adress"],
        registrationStatus: json["registrationStatus"],
        membershipDate: json["membershipDate"],
        dept: json["dept"],
        penaltyDate: json["delayPenalty"],
        bookCount: json["bookCount"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "tin": tin,
        "role": role,
        "name": name,
        "surname": surname,
        "age": age,
        "mail": mail,
        "phone": phone,
        "adress": adress,
        "registrationStatus": registrationStatus,
        "membershipDate": membershipDate,
        "dept": dept,
        "delayPenalty": penaltyDate,
        "bookCount": bookCount,
    };
}
