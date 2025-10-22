import 'package:flutter/material.dart';
import 'package:untitled55/pages/result_page.dart';

import '../generic_widgets/generic_widget.dart';
import '../generic_widgets/icon_with_text.dart';
import '../generic_widgets/inc_dec_widget.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double sliderValue = 183;

  int weight = 74;

  int age = 22;

  String? selectedGender;

  Color maleContainerColor = const Color.fromARGB(255, 17, 19, 40);
  Color femaleContainerColor = const Color.fromARGB(255, 17, 19, 40);

  void onGenderSelect({Gender? gender}) {
    if (gender == Gender.male) {
      setState(() {});
      selectedGender = "Male";
      maleContainerColor = Colors.pink;
      femaleContainerColor = const Color.fromARGB(255, 17, 19, 40);
    } else {
      setState(() {});
      selectedGender = 'Female';
      femaleContainerColor = Colors.pink;
      maleContainerColor = const Color.fromARGB(255, 17, 19, 40);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B0D22),
      drawer: Drawer(),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF0B0D22),
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        // leading:
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 750,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  onGenderSelect(gender: Gender.male);
                                },
                                child: GenericContainer(
                                  color: maleContainerColor,
                                  contentWidget: IconWithText(
                                    iconData: Icons.male,
                                    text: "MALE",
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  onGenderSelect(gender: Gender.female);
                                },
                                child: GenericContainer(
                                  color: femaleContainerColor,
                                  contentWidget: IconWithText(
                                    iconData: Icons.female,
                                    text: "FEMALE",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        flex: 3,
                        child: GenericContainer(
                          contentWidget: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'HEIGHT',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    '${sliderValue.toInt()}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    'cm',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: SliderTheme(
                                  data: SliderThemeData(
                                    activeTrackColor: Colors.white,
                                    inactiveTrackColor: Colors.grey,
                                    thumbColor: Colors.pink,
                                    trackHeight: 1,
                                    overlayColor: Colors.pink.withOpacity(0.2),
                                    thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 15,
                                    ),
                                  ),
                                  child: Slider(
                                    value: sliderValue,
                                    min: 100,
                                    max: 200,
                                    onChanged: (double value) {
                                      setState(() {
                                        sliderValue = value;
                                      });
                                      print(sliderValue);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            IncDecWidget(
                              text: 'WEIGHT',
                              num: '$weight',
                              decrementFunction: () {
                                weight--;
                                setState(() {});
                              },
                              incrementFunction: () {
                                weight++;
                                setState(() {});
                              },
                            ),
                            SizedBox(width: 10),
                            IncDecWidget(
                              text: 'AGE',
                              num: '$age',
                              decrementFunction: () {
                                setState(() {});
                                age--;
                              },
                              incrementFunction: () {
                                setState(() {});
                                age++;
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 80,
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => ResultPage()));
                  // print('selected Gender is $selectedGender');
                  // print('height is $sliderValue');
                  // print('weight is $weight');
                  // print('age is $age');
                },
                color: Colors.pink,
                child: Text(
                  'CALCULATE YOUR BMI',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum Gender { male, female }
