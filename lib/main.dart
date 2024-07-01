import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWidget(), // Set MyWidget as the home widget
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int age = 20; // Initialize age variable
  int height = 160; // Initialize height variable
  int weight = 70; // Initialize weight variable
  double bmi = 0; // Initialize bmi variable
  String selectedGender = ""; // Initialize selected gender variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "BMI APP",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "$age", // Display the current age
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        age++; // Increment age
                                      });
                                    },
                                    child: Text("+"),
                                  ),
                                  SizedBox(width: 10), // Add spacing between buttons
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        age--; // Decrement age
                                      });
                                    },
                                    child: Text("-"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Weight(Kg)",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "$weight",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: Text("+"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: Text("-"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 300, // Width of the rectangular container
                    height: 150, // Height of the rectangular container
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Height (cm)",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "$height",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  height++;
                                });
                              },
                              child: Text("+"),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  height--;
                                });
                              },
                              child: Text("-"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 300, // Width of the rectangular container
                    height: 150, // Height of the rectangular container
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Gender",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedGender = "male";
                                });
                              },
                              child: Icon(
                                Icons.male,
                                size: 36,
                                color: selectedGender == "male" ? Colors.blue : Colors.grey,
                              ),
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedGender = "female";
                                });
                              },
                              child: Icon(
                                Icons.female,
                                size: 36,
                                color: selectedGender == "female" ? Colors.pink : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 300, // Width of the rectangular container
                    height: 150, // Height of the rectangular container
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Your result is",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "$bmi",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 1),
                        Text(
                          bmi < 18.5
                              ? "Underweight"
                              : bmi < 25
                                  ? "Normal"
                                  : bmi < 30
                                      ? "Overweight"
                                      : "Obese",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 120, // Width of the rectangular container
                    height: 50, // Height of the rectangular container
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  bmi = weight / ((height / 100) * (height / 100)); // Corrected BMI calculation
                                });
                              },
                              child: Text("Calculate"),
                            ),
                      ],
                    )
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
