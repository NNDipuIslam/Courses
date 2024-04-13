class GetBusinessModelUi {
  String? status;
  Data? data;

  GetBusinessModelUi({
    this.status,
    this.data,
  });

  factory GetBusinessModelUi.fromJson(Map<String, dynamic> json) =>
      GetBusinessModelUi(
        status: json["status"],
        data: json["data"] != null ? Data.fromJson(json["data"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
      };
}

class Data {
  int? id;
  String? title;
  String? subTitle;
  String? categoryId;
  String? subCategoryId;
  String? instructorId;
  List<String>? learningTopic;
  String? requirements;
  String? description;
  double? price;
  bool? status;
  String? isFeatured;
  String? greetings;
  String? congratulationMessage;
  String? thumb;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<Section>? sections;
  List<MoreCourse>? moreCourse;
  dynamic? courseIntroVideo;
  String? videoSourceType;
  String? videoLinkPath;
  Intro? intro;

  Data({
    this.id,
    this.title,
    this.subTitle,
    this.categoryId,
    this.subCategoryId,
    this.instructorId,
    this.learningTopic,
    this.requirements,
    this.description,
    this.price,
    this.status,
    this.isFeatured,
    this.greetings,
    this.congratulationMessage,
    this.thumb,
    this.createdAt,
    this.updatedAt,
    this.sections,
    this.moreCourse,
    this.courseIntroVideo,
    this.videoSourceType,
    this.videoLinkPath,
    this.intro,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        title: json["title"],
        subTitle: json["subTitle"],
        categoryId: json["categoryId"],
        subCategoryId: json["subCategoryId"],
        instructorId: json["instructorId"],
        learningTopic: json["learningTopic"] != null
            ? List<String>.from(json["learningTopic"].map((x) => x))
            : null,
        requirements: json["requirements"],
        description: json["description"],
        price: json["price"]?.toDouble(),
        status: json["status"],
        isFeatured: json["isFeatured"],
        greetings: json["greetings"],
        congratulationMessage: json["congratulationMessage"],
        thumb: json["thumb"],
        createdAt: json["createdAt"] != null
            ? DateTime.parse(json["createdAt"])
            : null,
        updatedAt: json["updatedAt"] != null
            ? DateTime.parse(json["updatedAt"])
            : null,
        sections: json["sections"] != null
            ? List<Section>.from(
                json["sections"].map((x) => Section.fromJson(x)))
            : null,
        moreCourse: json["moreCourse"] != null
            ? List<MoreCourse>.from(
                json["moreCourse"].map((x) => MoreCourse.fromJson(x)))
            : null,
        courseIntroVideo: json["courseIntroVideo"],
        videoSourceType: json["videoSourceType"],
        videoLinkPath: json["videoLinkPath"],
        intro: json["intro"] != null ? Intro.fromJson(json["intro"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subTitle": subTitle,
        "categoryId": categoryId,
        "subCategoryId": subCategoryId,
        "instructorId": instructorId,
        "learningTopic": learningTopic,
        "requirements": requirements,
        "description": description,
        "price": price,
        "status": status,
        "isFeatured": isFeatured,
        "greetings": greetings,
        "congratulationMessage": congratulationMessage,
        "thumb": thumb,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "sections": sections?.map((x) => x.toJson()).toList(),
        "moreCourse": moreCourse?.map((x) => x.toJson()).toList(),
        "courseIntroVideo": courseIntroVideo,
        "videoSourceType": videoSourceType,
        "videoLinkPath": videoLinkPath,
        "intro": intro?.toJson(),
      };
}

class Intro {
  int? id;
  String? courseId;
  dynamic? assignmentId;
  dynamic? lessonId;
  dynamic? quizId;
  dynamic? fileName;
  String? resourseType;
  String? videoSourceType;
  dynamic? path;
  String? videoLinkPath;
  dynamic? mimeType;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool? isVideo;

  Intro({
    this.id,
    this.courseId,
    this.assignmentId,
    this.lessonId,
    this.quizId,
    this.fileName,
    this.resourseType,
    this.videoSourceType,
    this.path,
    this.videoLinkPath,
    this.mimeType,
    this.createdAt,
    this.updatedAt,
    this.isVideo,
  });

  factory Intro.fromJson(Map<String, dynamic> json) => Intro(
        id: json["id"],
        courseId: json["courseId"],
        assignmentId: json["assignmentId"],
        lessonId: json["lessonId"],
        quizId: json["quizId"],
        fileName: json["fileName"],
        resourseType: json["resourseType"],
        videoSourceType: json["videoSourceType"],
        path: json["path"],
        videoLinkPath: json["videoLinkPath"],
        mimeType: json["mimeType"],
        createdAt: json["createdAt"] != null
            ? DateTime.parse(json["createdAt"])
            : null,
        updatedAt: json["updatedAt"] != null
            ? DateTime.parse(json["updatedAt"])
            : null,
        isVideo: json["isVideo"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "courseId": courseId,
        "assignmentId": assignmentId,
        "lessonId": lessonId,
        "quizId": quizId,
        "fileName": fileName,
        "resourseType": resourseType,
        "videoSourceType": videoSourceType,
        "path": path,
        "videoLinkPath": videoLinkPath,
        "mimeType": mimeType,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "isVideo": isVideo,
      };
}

class MoreCourse {
  int? id;
  String? thumb;
  String? title;
  String? subTitle;
  List<String>? learningTopic;
  String? requirements;
  String? description;
  int? completedLessons;
  String? completedPercentage;
  int? isFree;
  dynamic? totalRating;
  double? price;
  int? isDiscounted;
  dynamic? discountType;
  dynamic? discountedPrice;

  MoreCourse({
    this.id,
    this.thumb,
    this.title,
    this.subTitle,
    this.learningTopic,
    this.requirements,
    this.description,
    this.completedLessons,
    this.completedPercentage,
    this.isFree,
    this.totalRating,
    this.price,
    this.isDiscounted,
    this.discountType,
    this.discountedPrice,
  });

  factory MoreCourse.fromJson(Map<String, dynamic> json) => MoreCourse(
        id: json["id"],
        thumb: json["thumb"],
        title: json["title"],
        subTitle: json["subTitle"],
        learningTopic: json["learningTopic"] != null
            ? List<String>.from(json["learningTopic"].map((x) => x))
            : null,
        requirements: json["requirements"],
        description: json["description"],
        completedLessons: json["completedLessons"],
        completedPercentage: json["completedPercentage"],
        isFree: json["isFree"],
        totalRating: json["totalRating"],
        price: json["price"]?.toDouble(),
        isDiscounted: json["isDiscounted"],
        discountType: json["discountType"],
        discountedPrice: json["discountedPrice"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "thumb": thumb,
        "title": title,
        "subTitle": subTitle,
        "learningTopic": learningTopic,
        "requirements": requirements,
        "description": description,
        "completedLessons": completedLessons,
        "completedPercentage": completedPercentage,
        "isFree": isFree,
        "totalRating": totalRating,
        "price": price,
        "isDiscounted": isDiscounted,
        "discountType": discountType,
        "discountedPrice": discountedPrice,
      };
}

class Section {
  int? id;
  String? topic;
  String? description;
  String? courseId;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<Lesson>? lessons;

  Section({
    this.id,
    this.topic,
    this.description,
    this.courseId,
    this.createdAt,
    this.updatedAt,
    this.lessons,
  });

  factory Section.fromJson(Map<String, dynamic> json) => Section(
        id: json["id"],
        topic: json["topic"],
        description: json["description"],
        courseId: json["courseId"],
        createdAt: json["createdAt"] != null
            ? DateTime.parse(json["createdAt"])
            : null,
        updatedAt: json["updatedAt"] != null
            ? DateTime.parse(json["updatedAt"])
            : null,
        lessons: json["lessons"] != null
            ? List<Lesson>.from(json["lessons"].map((x) => Lesson.fromJson(x)))
            : null,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "topic": topic,
        "description": description,
        "courseId": courseId,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "lessons": lessons?.map((x) => x.toJson()).toList(),
      };
}

class Lesson {
  String? id;
  String? courseId;
  String? sectionId;
  String? lectureTitle;
  String? videoResource;
  String? videoLinkPath;
  String? videoSourceType;

  Lesson({
    this.id,
    this.courseId,
    this.sectionId,
    this.lectureTitle,
    this.videoResource,
    this.videoLinkPath,
    this.videoSourceType,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) => Lesson(
        id: json["id"],
        courseId: json["courseId"],
        sectionId: json["sectionId"],
        lectureTitle: json["lectureTitle"],
        videoResource: json["videoResource"],
        videoLinkPath: json["videoLinkPath"],
        videoSourceType: json["videoSourceType"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "courseId": courseId,
        "sectionId": sectionId,
        "lectureTitle": lectureTitle,
        "videoResource": videoResource,
        "videoLinkPath": videoLinkPath,
        "videoSourceType": videoSourceType,
      };
}
