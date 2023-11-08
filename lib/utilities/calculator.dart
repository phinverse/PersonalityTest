import 'package:export_readiness/constrants/globals.dart';

class PersonalityCalculator {
  String calculatePersonalityType() {
    if (personalities[0] > personalities[4]) {
      personalityType += 'E';
    } else {
      personalityType += 'I';
    }

    if (personalities[1] > personalities[5]) {
      personalityType += 'S';
    } else {
      personalityType += 'N';
    }

    if (personalities[2] > personalities[6]) {
      personalityType += 'T';
    } else {
      personalityType += 'F';
    }

    if (personalities[3] > personalities[7]) {
      personalityType += 'J';
    } else {
      personalityType += 'P';
    }
    return personalityType;
  }
}
