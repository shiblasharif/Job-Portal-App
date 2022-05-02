class JobPostRequestModel {
  JobPostRequestModel({
        this.jobDesignation,
        this.jobDesc,
        this.category,
        this.province,
        this.city,
        this.minimumPay,
        this.from,
        this.to,
        this.skills,
  });
  late final String? jobDesignation;
  late final String? jobDesc;
  late final String? category;
  late final String? province;
  late final String? city;
  late final String? minimumPay;
  late final String? from;
  late final String? to;
  late final String? skills;

  JobPostRequestModel.fromJson(Map<String, dynamic> json) {
    jobDesignation = json['jobDesignation'];
    jobDesc = json['jobDesc'];
    category = json['category'];
    province = json['province'];
    city = json['city'];
    minimumPay = json['minimumPay'];
    from = json['from'];
    to = json['to'];
    skills = json['skills'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['jobDesignation'] = jobDesignation;
    _data['jobDesc'] = jobDesc;
    _data['category'] = category;
    _data['province'] = province;
    _data['city'] = city;
    _data['minimumPay'] = minimumPay;
    _data['from'] = from;
    _data['to'] = to;
    _data['skills'] = skills;
    return _data;
  }
}
