import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to input")),
      body: Column(children: [
        CustomTextField("Username"),
        CustomTextField("Password"),
        CustomCheckbox(),
        CustomRadio(),
        CustomSwitch(),
        CustomSlider(),
        CustomDatePicker(),
      ]),
    );
  }
}

class CustomTextField extends StatefulWidget {
  final String label;

  @override
  createState() => CustomTextFieldState();

  const CustomTextField(this.label);
}

class CustomTextFieldState extends State<CustomTextField> {
  var val = "";

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: widget.label,
      ),
      onChanged: (String v) {
        print(val);
        setState(() {
          val = v;
        });
      },
    );
  }

  CustomTextFieldState();
}

class CustomCheckbox extends StatefulWidget {
  @override
  createState() => CustomCheckboxState();
}

class CustomCheckboxState extends State<CustomCheckbox> {
  var val1 = false;
  var val2 = false;
  var val3 = false;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column(children: [
        Text("val1"),
        Checkbox(
          value: val1,
          onChanged: (bool val) {
            setState(() {
              val1 = val;
            });
          },
        ),
      ]),
      Column(children: [
        Text("val2"),
        Checkbox(
          value: val2,
          onChanged: (bool val) {
            setState(() {
              val2 = val;
            });
          },
        ),
      ]),
      Column(children: [
        Text("val3"),
        Checkbox(
          value: val3,
          onChanged: (bool val) {
            setState(() {
              val3 = val;
            });
          },
        ),
      ]),
    ]);
  }
}

class CustomRadio extends StatefulWidget {
  @override
  createState() => CustomRadioState();
}

class CustomRadioState extends State<CustomRadio> {
  var val = 0;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column(children: [
        Text("one"),
        Radio<int>(
          value: 1,
          groupValue: val,
          onChanged: _onChange,
        ),
      ]),
      Column(children: [
        Text("two"),
        Radio<int>(
          value: 2,
          groupValue: val,
          onChanged: _onChange,
        ),
      ]),
      Column(children: [
        Text("three"),
        Radio<int>(
          value: 3,
          groupValue: val,
          onChanged: _onChange,
        ),
      ]),
    ]);
  }

  void _onChange(int v) {
    setState(() {
      val = v;
    });
  }
}

class CustomSwitch extends StatefulWidget {
  @override
  createState() => CustomSwitchState();
}

class CustomSwitchState extends State<CustomSwitch> {
  var val = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: (bool v) {
        setState(() {
          val = v;
        });
      },
      value: val,
    );
  }
}

class CustomSlider extends StatefulWidget {
  @override
  createState() => CustomSliderState();
}

class CustomSliderState extends State<CustomSlider> {
  var val = 25.0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(val.round().toString()),
      Slider(
        value: val,
        min: 0.0,
        max: 100.0,
        divisions: 100,
        label: "slider",
        onChanged: (double d) {
          setState(() {
            val = d;
          });
        },
      )
    ]);
  }
}

class CustomDatePicker extends StatefulWidget {
  @override
  createState() => CustomDatePickerState();
}

class CustomDatePickerState extends State<CustomDatePicker> {
  var val = "";

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: const Text("flat button"),
      color: Colors.green[100],
      onPressed: () {
        var dt = showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2019, 1, 1),
          lastDate: DateTime(2019, 12, 31),
          builder: (BuildContext context, Widget child) {
            return Theme(
              data: ThemeData.dark(),
              child: child,
            );
          },
        );
        dt.then((val) {
          print(val);
        });
      },
    );
  }
}
