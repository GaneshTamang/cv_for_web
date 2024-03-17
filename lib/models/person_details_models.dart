import 'dart:convert';

class PersonDetailModel {
  String? firstName;
  String? lastName;
  String? email;
  String? address;
  String? phoneNumber;
  List<Education>? education;
  List<Experience>? experience;
  List<Map>? someMomentosPhotos;
  PersonDetailModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.address,
    required this.phoneNumber,
    required this.education,
    required this.experience,
    required this.someMomentosPhotos,
  });

  String covertDataToDeviceReadable() {
    // ! convert or encode to device readable
    return jsonEncode(converttoJsonFOrDevice());
  }

// * toDevice Method
// !factory static method for converting  boilerplate methods for consitency so data can be used for multiple formats
// ? coverted to device readable from with json decode
  factory PersonDetailModel.fromDataJson(Map<String, dynamic> incomingJson) {
    return PersonDetailModel(
      firstName: incomingJson["firstName"],
      lastName: incomingJson["lastName"],
      email: incomingJson["email"],
      address: incomingJson["address"],
      phoneNumber: incomingJson["phoneNumber"],
      education: incomingJson["education"],
      experience: incomingJson["experience"],
      someMomentosPhotos: incomingJson["someMomentosPhotos"],
    );
  }
// !From Device to DB method for boiler plate for later conversion

  factory PersonDetailModel.fromDeviceToDatabasegoingData(
      String toDecodeString) {
    return PersonDetailModel.fromDataJson(json.decode(toDecodeString));
  }

  Map<String, dynamic> converttoJsonFOrDevice() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "address": address,
      "phoneNumber": phoneNumber,
      "education": education,
      "experience": experience,
      "someMomentosPhotos": someMomentosPhotos,
    };
  }
}

class Experience {
  final String position;
  final String organizationName;
  final String? workDuration;
  Experience({
    required this.position,
    required this.organizationName,
    required this.workDuration,
  });
}

class Education {
  final String position;
  final String organizationName;
  final String? workDuration;
  Education({
    required this.position,
    required this.organizationName,
    required this.workDuration,
  });
}

class SomeMemories {
  final String position;
  final String organizationName;
  final String? workDuration;
  SomeMemories({
    required this.position,
    required this.organizationName,
    required this.workDuration,
  });
}
