// To parse this JSON data, do
//
//     final apioneModel = apioneModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ApioneModel apioneModelFromJson(String str) =>
    ApioneModel.fromJson(json.decode(str));

String apioneModelToJson(ApioneModel data) => json.encode(data.toJson());

class ApioneModel {
  final String? status;
  final String? message;
  final Data? data;

  ApioneModel({
    this.status,
    this.message,
    this.data,
  });

  ApioneModel copyWith({
    String? status,
    String? message,
    Data? data,
  }) =>
      ApioneModel(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory ApioneModel.fromJson(Map<String, dynamic> json) => ApioneModel(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data!.toJson(),
      };
}

class Data {
  final List<Celebrity> celebrity;
  final List<CelebritiesDailySchedule> celebritiesDailySchedule;
  final List<CelebrityPrice> celebrityPrice;
  final List<BankAccount> bankAccount;
  final List<Card> card;
  final List<Card> payoneer;
  final List<dynamic> paypal;

  Data({
    required this.celebrity,
    required this.celebritiesDailySchedule,
    required this.celebrityPrice,
    required this.bankAccount,
    required this.card,
    required this.payoneer,
    required this.paypal,
  });

  Data copyWith({
    List<Celebrity>? celebrity,
    List<CelebritiesDailySchedule>? celebritiesDailySchedule,
    List<CelebrityPrice>? celebrityPrice,
    List<BankAccount>? bankAccount,
    List<Card>? card,
    List<Card>? payoneer,
    List<dynamic>? paypal,
  }) =>
      Data(
        celebrity: celebrity ?? this.celebrity,
        celebritiesDailySchedule:
            celebritiesDailySchedule ?? this.celebritiesDailySchedule,
        celebrityPrice: celebrityPrice ?? this.celebrityPrice,
        bankAccount: bankAccount ?? this.bankAccount,
        card: card ?? this.card,
        payoneer: payoneer ?? this.payoneer,
        paypal: paypal ?? this.paypal,
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        celebrity: List<Celebrity>.from(
            json["celebrity"].map((x) => Celebrity.fromJson(x))),
        celebritiesDailySchedule: List<CelebritiesDailySchedule>.from(
            json["celebrities_daily_schedule"]
                .map((x) => CelebritiesDailySchedule.fromJson(x))),
        celebrityPrice: List<CelebrityPrice>.from(
            json["celebrity_price"].map((x) => CelebrityPrice.fromJson(x))),
        bankAccount: List<BankAccount>.from(
            json["bank_account"].map((x) => BankAccount.fromJson(x))),
        card: List<Card>.from(json["card"].map((x) => Card.fromJson(x))),
        payoneer:
            List<Card>.from(json["payoneer"].map((x) => Card.fromJson(x))),
        paypal: List<dynamic>.from(json["paypal"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "celebrity": List<dynamic>.from(celebrity.map((x) => x.toJson())),
        "celebrities_daily_schedule":
            List<dynamic>.from(celebritiesDailySchedule.map((x) => x.toJson())),
        "celebrity_price":
            List<dynamic>.from(celebrityPrice.map((x) => x.toJson())),
        "bank_account": List<dynamic>.from(bankAccount.map((x) => x.toJson())),
        "card": List<dynamic>.from(card.map((x) => x.toJson())),
        "payoneer": List<dynamic>.from(payoneer.map((x) => x.toJson())),
        "paypal": List<dynamic>.from(paypal.map((x) => x)),
      };
}

class BankAccount {
  final int id;
  final int celebrityId;
  final String country;
  final String bankName;
  final String accountNumber;
  final DateTime createdAt;
  final DateTime updatedAt;

  BankAccount({
    required this.id,
    required this.celebrityId,
    required this.country,
    required this.bankName,
    required this.accountNumber,
    required this.createdAt,
    required this.updatedAt,
  });

  BankAccount copyWith({
    int? id,
    int? celebrityId,
    String? country,
    String? bankName,
    String? accountNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      BankAccount(
        id: id ?? this.id,
        celebrityId: celebrityId ?? this.celebrityId,
        country: country ?? this.country,
        bankName: bankName ?? this.bankName,
        accountNumber: accountNumber ?? this.accountNumber,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory BankAccount.fromJson(Map<String, dynamic> json) => BankAccount(
        id: json["id"],
        celebrityId: json["celebrity_id"],
        country: json["country"],
        bankName: json["bank_name"],
        accountNumber: json["account_number"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "celebrity_id": celebrityId,
        "country": country,
        "bank_name": bankName,
        "account_number": accountNumber,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class Card {
  final int id;
  final int celebrityId;
  final String cardName;
  final String cardNumber;
  final String expireDate;
  final String cvv;
  final DateTime createdAt;
  final DateTime updatedAt;

  Card({
    required this.id,
    required this.celebrityId,
    required this.cardName,
    required this.cardNumber,
    required this.expireDate,
    required this.cvv,
    required this.createdAt,
    required this.updatedAt,
  });

  Card copyWith({
    int? id,
    int? celebrityId,
    String? cardName,
    String? cardNumber,
    String? expireDate,
    String? cvv,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Card(
        id: id ?? this.id,
        celebrityId: celebrityId ?? this.celebrityId,
        cardName: cardName ?? this.cardName,
        cardNumber: cardNumber ?? this.cardNumber,
        expireDate: expireDate ?? this.expireDate,
        cvv: cvv ?? this.cvv,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Card.fromJson(Map<String, dynamic> json) => Card(
        id: json["id"],
        celebrityId: json["celebrity_id"],
        cardName: json["card_name"],
        cardNumber: json["card_number"],
        expireDate: json["expire_date"],
        cvv: json["cvv"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "celebrity_id": celebrityId,
        "card_name": cardName,
        "card_number": cardNumber,
        "expire_date": expireDate,
        "cvv": cvv,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class CelebritiesDailySchedule {
  final int id;
  final int celebrityId;
  final String day;
  final String time;
  final int availability;
  final String timeZone;
  final DateTime createdAt;
  final DateTime updatedAt;

  CelebritiesDailySchedule({
    required this.id,
    required this.celebrityId,
    required this.day,
    required this.time,
    required this.availability,
    required this.timeZone,
    required this.createdAt,
    required this.updatedAt,
  });

  CelebritiesDailySchedule copyWith({
    int? id,
    int? celebrityId,
    String? day,
    String? time,
    int? availability,
    String? timeZone,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      CelebritiesDailySchedule(
        id: id ?? this.id,
        celebrityId: celebrityId ?? this.celebrityId,
        day: day ?? this.day,
        time: time ?? this.time,
        availability: availability ?? this.availability,
        timeZone: timeZone ?? this.timeZone,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory CelebritiesDailySchedule.fromJson(Map<String, dynamic> json) =>
      CelebritiesDailySchedule(
        id: json["id"],
        celebrityId: json["celebrity_id"],
        day: json["day"],
        time: json["time"],
        availability: json["availability"],
        timeZone: json["time_zone"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "celebrity_id": celebrityId,
        "day": day,
        "time": time,
        "availability": availability,
        "time_zone": timeZone,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class Celebrity {
  final int id;
  final String name;
  final String phoneNumber;
  final String email;
  final String image;
  final int categoryId;
  final String bio;
  final String password;
  final DateTime createdAt;
  final DateTime updatedAt;

  Celebrity({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.image,
    required this.categoryId,
    required this.bio,
    required this.password,
    required this.createdAt,
    required this.updatedAt,
  });

  Celebrity copyWith({
    int? id,
    String? name,
    String? phoneNumber,
    String? email,
    String? image,
    int? categoryId,
    String? bio,
    String? password,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Celebrity(
        id: id ?? this.id,
        name: name ?? this.name,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
        image: image ?? this.image,
        categoryId: categoryId ?? this.categoryId,
        bio: bio ?? this.bio,
        password: password ?? this.password,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Celebrity.fromJson(Map<String, dynamic> json) => Celebrity(
        id: json["id"],
        name: json["name"],
        phoneNumber: json["phone_number"],
        email: json["email"],
        image: json["image"],
        categoryId: json["category_id"],
        bio: json["bio"],
        password: json["password"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone_number": phoneNumber,
        "email": email,
        "image": image,
        "category_id": categoryId,
        "bio": bio,
        "password": password,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class CelebrityPrice {
  final int id;
  final int celebrityId;
  final int minuteId;
  final String price;
  final String minute;

  CelebrityPrice({
    required this.id,
    required this.celebrityId,
    required this.minuteId,
    required this.price,
    required this.minute,
  });

  CelebrityPrice copyWith({
    int? id,
    int? celebrityId,
    int? minuteId,
    String? price,
    String? minute,
  }) =>
      CelebrityPrice(
        id: id ?? this.id,
        celebrityId: celebrityId ?? this.celebrityId,
        minuteId: minuteId ?? this.minuteId,
        price: price ?? this.price,
        minute: minute ?? this.minute,
      );

  factory CelebrityPrice.fromJson(Map<String, dynamic> json) => CelebrityPrice(
        id: json["id"],
        celebrityId: json["celebrity_id"],
        minuteId: json["minute_id"],
        price: json["price"],
        minute: json["minute"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "celebrity_id": celebrityId,
        "minute_id": minuteId,
        "price": price,
        "minute": minute,
      };
}
