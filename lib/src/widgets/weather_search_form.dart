import 'package:flutter/material.dart';
import 'package:weather_now/src/core/resources/strings.dart';
import 'package:weather_now/src/widgets/outlined_action_button.dart';

class WeatherSearchForm extends StatefulWidget {
  final Function(String searchTerm) onSubmit;

  const WeatherSearchForm({required this.onSubmit, Key? key}) : super(key: key);

  @override
  _WeatherSearchFormState createState() => _WeatherSearchFormState();
}

class _WeatherSearchFormState extends State<WeatherSearchForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
            child: TextFormField(
                validator: onValidate,
                controller: _searchFieldController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                  labelText: Strings.searchFieldLabel,
                )),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          child: OutlinedActionButton(
            buttonText: Strings.searchButtonLabel,
            onClick: onSearch,
          ),
        )
      ],
    );
  }

  void onSearch() {
    if (_formKey.currentState!.validate()) {
      widget.onSubmit(_searchFieldController.value.text);
    }
  }

  String? onValidate(String? input) {
    return input == "" ? Strings.searchValidationMessage : null;
  }
}
