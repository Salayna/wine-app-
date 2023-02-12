import 'package:flutter/material.dart';
import 'package:winey/shared/generic_tile.dart';

class AddTest extends StatelessWidget {

  //create a controller for each textfield
  final TextEditingController fixed_acidity_controller = TextEditingController();
  final TextEditingController volatile_acidity_controller = TextEditingController();
  final TextEditingController critic_acid_controller = TextEditingController();
  final TextEditingController residual_sugar_controller = TextEditingController();
  final TextEditingController Chlorides_controller = TextEditingController();
  final TextEditingController Free_sulfur_dioxide_controller = TextEditingController();
  final TextEditingController total_sulfur_dioxide_controller = TextEditingController();
  final TextEditingController density_controller = TextEditingController();
  final TextEditingController pH_controller = TextEditingController();
  final TextEditingController Sulphates_controller = TextEditingController();
  final TextEditingController alcohol_controller = TextEditingController();

  AddTest({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => AddTest());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a test"),
      ),

      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // add CustomTextFields for
                // fixed_acidity
                // volatile_acidity
                // critic_acid
                // residual_sugar
                // Chlorides
                // Free_sulfur_dioxide
                // total_sulfur_dioxide
                // density
                // pH
                // Sulphates
                // alcohol
                Padding(
                    padding: const EdgeInsets.only(
                        top: 43.0,
                        left: 12.0,
                        right: 12.0
                    ),
                  child: CustomTextField(
                    controller: fixed_acidity_controller,
                    hintText: "Fixed acidity",
                    labelText: "Fixed acidity",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 12.0,
                      right: 12.0
                  ),
                  child: CustomTextField(
                    controller: volatile_acidity_controller,
                    hintText: "Volatile acidity",
                    labelText: "Volatile acidity",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 12.0,
                      right: 12.0
                  ),
                  child: CustomTextField(
                    controller: critic_acid_controller,
                    hintText: "Critic acid",
                    labelText: "Critic acid",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 12.0,
                      right: 12.0
                  ),
                  child: CustomTextField(
                    controller: residual_sugar_controller,
                    hintText: "Residual sugar",
                    labelText: "Residual sugar",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 12.0,
                      right: 12.0
                  ),
                  child: CustomTextField(
                    controller: Chlorides_controller,
                    hintText: "Chlorides",
                    labelText: "Chlorides",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 12.0,
                      right: 12.0
                  ),
                  child: CustomTextField(
                    controller: Free_sulfur_dioxide_controller,
                    hintText: "Free sulfur dioxide",
                    labelText: "Free sulfur dioxide",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 12.0,
                      right: 12.0
                  ),
                  child: CustomTextField(
                    controller: total_sulfur_dioxide_controller,
                    hintText: "Total sulfur dioxide",
                    labelText: "Total sulfur dioxide",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 12.0,
                      right: 12.0
                  ),
                  child: CustomTextField(
                    controller: density_controller,
                    hintText: "Density",
                    labelText: "Density",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 12.0,
                      right: 12.0
                  ),
                  child: CustomTextField(
                    controller: pH_controller,
                    hintText: "pH",
                    labelText: "pH",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 12.0,
                      right: 12.0
                  ),
                  child: CustomTextField(
                    controller: Sulphates_controller,
                    hintText: "Sulphates",
                    labelText: "Sulphates",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 12.0,
                      right: 12.0
                  ),
                  child: CustomTextField(
                    controller: alcohol_controller,
                    hintText: "Alcohol",
                    labelText: "Alcohol",
                  ),
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}


