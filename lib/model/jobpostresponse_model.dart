import 'dart:convert';



PostJobResponseModel postJobResponseJson(String str) =>
    PostJobResponseModel.fromJson(json.decode(str));

class PostJobResponseModel {
    PostJobResponseModel({
        required this.jobDesignation,
        required this.jobDesc,
        required this.category,
        required this.province,
        required this.city,
        required this.minimumPay,
        required this.from,
        required this.to,
        required this.skills,
    });

   late final String jobDesignation;
   late final String jobDesc;
   late final String category;
   late final String province;
   late final String city;
   late final String minimumPay;
   late final String from;
   late final String to;
   late final String skills;

    PostJobResponseModel.fromJson(Map<String, dynamic> json){
        jobDesignation: json["job_designation"];
        jobDesc: json["job_desc"];
        category: json["category"];
        province: json["province"];
        city: json["city"];
        minimumPay: json["minimum_pay"];
        from: json["from"];
        to: json["to"];
        skills: json["skills"];
    }

    Map<String, dynamic> toMap() => {
        "job_designation": jobDesignation,
        "job_desc": jobDesc,
        "category": category,
        "province": province,
        "city": city,
        "minimum_pay": minimumPay,
        "from": from,
        "to": to,
        "skills": skills,
    };
     Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
   _data['job_designation'] = jobDesignation;
    _data['job_desc'] = jobDesc;
    _data['category'] = category;
    _data['city'] = city;
    _data['minimum_pay'] = minimumPay;
    _data['from'] = from;
    _data['to'] = to;
    _data['skills'] = skills;
    
    return _data;
  }
}
