import 'package:meta/meta.dart';
import 'dart:convert';

CoursesModel coursesModelFromJson(String str) =>
    CoursesModel.fromJson(json.decode(str));

String coursesModelToJson(CoursesModel data) => json.encode(data.toJson());

class CoursesModel {
  final bool success;
  final String message;
  final Data data;

  CoursesModel({
    required this.success,
    required this.message,
    required this.data,
  });

  CoursesModel copyWith({
    bool? success,
    String? message,
    Data? data,
  }) =>
      CoursesModel(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory CoursesModel.fromJson(Map<String, dynamic> json) => CoursesModel(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  final List<dynamic> topCourse;
  final String title;
  final String slug;
  final int id;
  final DateTime createdAt;
  final String imageUrl;
  final String learnerAccessibility;
  final int totalReview;
  final List<Course> courses;

  Data({
    required this.topCourse,
    required this.title,
    required this.slug,
    required this.id,
    required this.createdAt,
    required this.imageUrl,
    required this.learnerAccessibility,
    required this.totalReview,
    required this.courses,
  });

  Data copyWith({
    List<dynamic>? topCourse,
    String? title,
    String? slug,
    int? id,
    DateTime? createdAt,
    String? imageUrl,
    String? learnerAccessibility,
    int? totalReview,
    List<Course>? courses,
  }) =>
      Data(
        topCourse: topCourse ?? this.topCourse,
        title: title ?? this.title,
        slug: slug ?? this.slug,
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        imageUrl: imageUrl ?? this.imageUrl,
        learnerAccessibility: learnerAccessibility ?? this.learnerAccessibility,
        totalReview: totalReview ?? this.totalReview,
        courses: courses ?? this.courses,
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        topCourse: List<dynamic>.from(json["topCourse"].map((x) => x)),
        title: json["title"],
        slug: json["slug"],
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        imageUrl: json["image_url"],
        learnerAccessibility: json["learner_accessibility"],
        totalReview: json["total_review"],
        courses:
            List<Course>.from(json["courses"].map((x) => Course.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "topCourse": List<dynamic>.from(topCourse.map((x) => x)),
        "title": title,
        "slug": slug,
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "image_url": imageUrl,
        "learner_accessibility": learnerAccessibility,
        "total_review": totalReview,
        "courses": List<dynamic>.from(courses.map((x) => x.toJson())),
      };
}

class Course {
  final String price;
  final String discountPrice;
  final String cashback;

  Course({
    required this.price,
    required this.discountPrice,
    required this.cashback,
  });

  Course copyWith({
    String? price,
    String? discountPrice,
    String? cashback,
  }) =>
      Course(
        price: price ?? this.price,
        discountPrice: discountPrice ?? this.discountPrice,
        cashback: cashback ?? this.cashback,
      );

  factory Course.fromJson(Map<String, dynamic> json) => Course(
        price: json["price"],
        discountPrice: json["discount_price"],
        cashback: json["cashback"],
      );

  Map<String, dynamic> toJson() => {
        "price": price,
        "discount_price": discountPrice,
        "cashback": cashback,
      };
}
