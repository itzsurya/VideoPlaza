import 'package:flutter/material.dart';

class CdModel{
  String profilePic;
  String name;
  String source;
  String stock;

  CdModel(
     {required this.name,
     required this.profilePic,
     required this.source,
     required this.stock, 
     }
     );
  
  factory CdModel.fromJson(dynamic json){
    return CdModel(
      profilePic:"${json['profile_pic']}",
      name : "${json['name']}",
      source: "${json['source']}",
      stock : "${json['stock']}",
      );
    }

    Map toJson() => {
      "profile_pic" : profilePic,
      "source" : source,
      "name" : name,
      "stock": stock,
    
    };

  void add(CdModel cdmodels) {}
  }
