import 'package:psycho/constrants/globals.dart';

class PersonalityCalculator {
  String calculatePersonalityType() {
    if (personalities[0] > 4) {
      personalityType += 'E';
    } else {
      personalityType += 'I';
    }

    if (personalities[1] > 4) {
      personalityType += 'S';
    } else {
      personalityType += 'N';
    }

    if (personalities[2] > 5) {
      personalityType += 'T';
    } else {
      personalityType += 'F';
    }

    if (personalities[3] > 6) {
      personalityType += 'J';
    } else {
      personalityType += 'P';
    }
    return personalityType;
  }
}
