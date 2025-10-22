import 'package:flutter/material.dart';

import '../generic_widgets/generic_widget.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0D22),
      drawer: const Drawer(),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF0B0D22),
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        // leading:
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your Result',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: GenericContainer(
                        contentWidget: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Normal'.toUpperCase(),
                                  style: const TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  '22.1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 120,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const Column(
                              children: [
                                Text(
                                  'Normal BMI range:',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '18,5 - 25kg/m2',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'You have a normal body weight. Good job!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
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
                Navigator.of(context).pop();

                // print('selected Gender is $selectedGender');
                // print('height is $sliderValue');
                // print('weight is $weight');
                // print('age is $age');
              },
              color: Colors.pink,
              child: const Text(
                'RE-CALCULATE YOUR BMI',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
