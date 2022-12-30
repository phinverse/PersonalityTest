// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psycho/constrants/routes.dart';
import 'package:psycho/utilities/calculator.dart';
import 'package:psycho/utilities/question_widget.dart';
import 'package:psycho/constrants/globals.dart';
import 'package:psycho/utilities/show_personality_dialogue.dart';
import 'package:restart_app/restart_app.dart';

class ThirdQuestionsView extends StatefulWidget {
  const ThirdQuestionsView({super.key});

  @override
  ThirdionsViewState createState() => ThirdionsViewState();
}

class ThirdionsViewState extends State<ThirdQuestionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            QuestionWidget(
                text: "You enjoy spending time with",
                text2: "close friends and family",
                radioButton: 40,
                personalities: 6),
            QuestionWidget(
                text: "You are a loyal person",
                radioButton: 41,
                personalities: 6),
            QuestionWidget(
                text: "You enjoy being in control",
                radioButton: 42,
                personalities: 3),
            QuestionWidget(
                text: "You are naturally a punctual person",
                radioButton: 43,
                personalities: 3),
            QuestionWidget(
                text: "You enjoy expressing your creativity",
                text2: "through art or music",
                radioButton: 44,
                personalities: 7),
            QuestionWidget(
                text: "You are naturally an analytical person",
                radioButton: 45,
                personalities: 2),
            QuestionWidget(
                text: 'You are naturally a confident person',
                radioButton: 46,
                personalities: 0),
            QuestionWidget(
                text: "You really enjoy spending time in",
                text2: "new and unfamiliar places",
                radioButton: 47,
                personalities: 5),
            QuestionWidget(
                text: "You enjoy expressing your",
                text2: "ideas and opinions",
                radioButton: 48,
                personalities: 0),
            QuestionWidget(
                text: "You are naturally a detail-oriented",
                text2: "person",
                radioButton: 49,
                personalities: 1),
            QuestionWidget(
                text: "You like helping others",
                text2: "or providing support",
                radioButton: 50,
                personalities: 6),
            QuestionWidget(
                text: "You are a flexible person",
                radioButton: 51,
                personalities: 7),
            QuestionWidget(
                text: "You enjoy planning events or projects",
                radioButton: 52,
                personalities: 3),
            QuestionWidget(
                text: "You enjoy spending time outdoors",
                radioButton: 53,
                personalities: 0),
            QuestionWidget(
                text: "You are an independent person",
                radioButton: 54,
                personalities: 4),
            QuestionWidget(
                text: "You are an open-minded person",
                radioButton: 55,
                personalities: 5),
            QuestionWidget(
                text: "You are a cooperative person",
                radioButton: 56,
                personalities: 6),
            QuestionWidget(
                text: "You a naturally energetic person?",
                radioButton: 57,
                personalities: 2),
            QuestionWidget(
                text: "You are naturally an assertive person",
                radioButton: 58,
                personalities: 0),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Restart.restartApp(webOrigin: homePageRoute);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    child: Icon(
                      CupertinoIcons.arrow_counterclockwise,
                      color: Colors.white,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        personalityType = '';
                        PersonalityCalculator().calculatePersonalityType();
                        if (personalityType == 'ISTJ') {
                          personalityType =
                              'ISTJ (The Inspector)\n\nQuiet, serious, earn success by thoroughness and dependability. Practical, matter-of-fact, realistic, and responsible. Decide logically what should be done and work toward it steadily, regardless of distractions. Take pleasure in making everything orderly and organized - their work, their home, their life. Value traditions and loyalty.';
                        } else if (personalityType == 'ISFJ') {
                          personalityType =
                              'ISFJ (The Protector)\n\nQuiet, friendly, responsible, and conscientious. Committed and steady in meeting their obligations. Thorough, painstaking, and accurate. Loyal, considerate, notice and remember specifics about people who are important to them, concerned with how others feel. Strive to create an orderly and harmonious environment at work and at home.';
                        } else if (personalityType == 'INFJ') {
                          personalityType =
                              'INFJ (The Counselor)\n\nSeek meaning and connection in ideas, relationships, and material possessions. Want to understand what motivates people and are insightful about others. Conscientious and committed to their firm values. Develop a clear vision about how best to serve the common good. Organized and decisive in implementing their vision.';
                        } else if (personalityType == 'INTJ') {
                          personalityType =
                              'INTJ (The Mastermind)\n\nHave original minds and great drive for implementing their ideas and achieving their goals. Quickly see patterns in external events and develop long-range explanatory perspectives. When committed, organize a job and carry it through. Skeptical and independent, have high standards of competence and performance - for themselves and others.';
                        } else if (personalityType == 'ISTP') {
                          personalityType =
                              'ISTP (The Craftsperson)\n\nTolerant and flexible, quiet observers until a problem appears, then act quickly to find workable solutions. Analyze what makes things work and readily get through large amounts of data to isolate the core of practical problems. Interested in cause and effect, organize facts using logical principles, value efficiency.';
                        } else if (personalityType == 'ISFP') {
                          personalityType =
                              "ISFP (The Composer)\n\nQuiet, friendly, sensitive, and kind. Enjoy the present moment, what's going on around them. Like to have their own space and to work within their own time frame. Loyal and committed to their values and to people who are important to them. Dislike disagreements and conflicts, do not force their opinions or values on others.";
                        } else if (personalityType == 'INTP') {
                          personalityType =
                              "INTP (The Architect)\n\nSeek to develop logical explanations for everything that interests them. Theoretical and abstract, interested more in ideas than in social interaction. Quiet, contained, flexible, and adaptable. Have unusual ability to focus in depth to solve problems in their area of interest. Skeptical, sometimes critical, always analytical.";
                        } else if (personalityType == 'ESTP') {
                          personalityType =
                              "ESTP (The Dynamo)\n\nFlexible and tolerant, they take a pragmatic approach focused on immediate results. Theories and conceptual explanations bore them - they want to act energetically to solve the problem. Focus on the here-and-now, spontaneous, enjoy each moment that they can be active with others. Enjoy material comforts and style. Learn best through doing.";
                        } else if (personalityType == 'ESFP') {
                          personalityType =
                              "ESFP (The Performer)\n\nOutgoing, friendly, and accepting. Exuberant lovers of life, people, and material comforts. Enjoy working with others to make things happen. Bring common sense and a realistic approach to their work, and make work fun. Flexible and spontaneous, adapt readily to new people and environments. Learn best by trying a new skill with other people.";
                        } else if (personalityType == 'ENFP') {
                          personalityType =
                              "ENFP (The Champion)\n\nWarmly enthusiastic and imaginative. See life as full of possibilities. Make connections between events and information very quickly, and confidently proceed based on the patterns they see. Want a lot of affirmation from others, and readily give appreciation and support. Spontaneous and flexible, often rely on their ability to improvise and their verbal fluency.";
                        } else if (personalityType == 'ENTP') {
                          personalityType =
                              "ENTP (The Visionary)\n\nQuick, ingenious, stimulating, alert, and outspoken. Resourceful in solving new and challenging problems. Adept at generating conceptual possibilities and then analyzing them strategically. Good at reading other people. Bored by routine, will seldom do the same thing the same way, apt to turn to one new interest after another.";
                        } else if (personalityType == 'ESTJ') {
                          personalityType =
                              "ESTJ (The Supervisor)\n\nPractical, realistic, matter-of-fact. Decisive, quickly move to implement decisions. Organize projects and people to get things done, focus on getting results in the most efficient way possible. Take care of routine details. Have a clear set of logical standards, systematically follow them and want others to also. Forceful in implementing their plans.";
                        } else if (personalityType == 'ESFJ') {
                          personalityType =
                              "ESFJ (The Provider)\n\nWarmhearted, conscientious, and cooperative. Want harmony in their environment, work with determination to establish it. Like to work with others to complete tasks accurately and on time. Loyal, follow through even in small matters. Notice what others need in their day-by-day lives and try to provide it. Want to be appreciated for who they are and for what they contribute.";
                        } else if (personalityType == 'ENFJ') {
                          personalityType =
                              "ENFJ (The Teacher)\n\nWarm, empathetic, responsive, and responsible. Highly attuned to the emotions, needs, and motivations of others. Find potential in everyone, want to help others fulfill their potential. May act as catalysts for individual and group growth. Loyal, responsive to praise and criticism. Sociable, facilitate others in a group, and provide inspiring leadership.";
                        } else if (personalityType == 'ENTJ') {
                          personalityType =
                              "ENTJ (The Commander)\n\nFrank, decisive, assume leadership readily. Quickly see illogical and inefficient procedures and policies, develop and implement comprehensive systems to solve organizational problems. Enjoy long-term planning and goal setting. Usually well informed, well read, enjoy expanding their knowledge and passing it on to others. Forceful in presenting their ideas.";
                        } else if (personalityType == 'INFP') {
                          personalityType =
                              "INFP (The Healer)\n\nIdealistic, loyal to their values and to people who are important to them. Want an external life that is congruent with their values. Curious, quick to see possibilities, can be catalysts for implementing ideas. Seek to understand people and to help them fulfill their potential. Adaptable, flexible, and accepting unless a value is threatened.";
                        }
                        showPersonalityDialogue(context, personalityType,
                            Colors.grey[900], Colors.black);
                      });
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    child: Icon(
                      CupertinoIcons.check_mark,
                      color: Colors.white,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      secondPageRoute,
                      (route) => false,
                    );
                  },
                  child: Icon(
                    CupertinoIcons.back,
                    color: Colors.greenAccent,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  style: TextButton.styleFrom(
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      firstPageRoute,
                      (route) => false,
                    );
                  },
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('..',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent,
                        fontSize: 16,
                      )),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
