import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController textController = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderVal = 0.0;
  String? menuItem = 'el1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              DropdownButton(
                menuWidth: double.infinity,
                value: menuItem,
                items: [
                  DropdownMenuItem(value: 'el1', child: Text('Element 1')),
                  DropdownMenuItem(value: 'el2', child: Text('Element 2')),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
              TextField(
                controller: textController,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              Text(textController.text),
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Click Me'),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile(
                title: Icon(Icons.lightbulb),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider(
                value: sliderVal,
                max: 10.0,
                divisions: 5,
                onChanged: (double value) {
                  setState(() {
                    sliderVal = value;
                  });
                },
              ),
              Text(sliderVal.toString()),
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/images/Bg.jpg'),
              ),
              InkWell(
                splashColor: Colors.teal,
                onTap: () {},
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.white12,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text('ElButton'),
              ),
              ElevatedButton(onPressed: () {}, child: Text('ElButton')),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text('Filled'),
              ),
              TextButton(onPressed: () {}, child: Text('Text')),
              OutlinedButton(onPressed: () {}, child: Text('Outline')),
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
