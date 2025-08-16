import 'package:flutter/material.dart';
import 'package:flutter_mapp/feature/home/views/expanded_flexible_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key, required this.title});

  final String title;
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = '1';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Save Successfully'),
                      backgroundColor: Colors.amber,
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: Text('Save Settings(Snackbar)'),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Save'),
                        content: Text('Save Settings?'),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Save'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Save Settings(Alert)'),
              ),
              Divider(color: Colors.teal, thickness: 2.0),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(value: '1', child: Text('Monday')),
                  DropdownMenuItem(value: '2', child: Text('Wednesday')),
                  DropdownMenuItem(value: '3', child: Text('Friday')),
                  DropdownMenuItem(value: '4', child: Text('Saturday')),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              CheckboxListTile(
                value: isChecked,
                title: Text('Hello'),
                onChanged: (value) {
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
                title: Text('Run on Background'),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider(
                value: sliderValue,
                max: 10,
                divisions: 10,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              Text(sliderValue.toString()),
              GestureDetector(
                onTap: () {
                  print('first image');
                },
                child: Image.asset(
                  'assets/images/suguru-geto.jpeg',
                  height: 200,
                ),
              ),
              InkWell(
                splashColor: Colors.white10,
                onTap: () {
                  print('second image');
                },
                child: Image.asset(
                  'assets/images/suguru-geto.jpeg',
                  height: 200,
                ),
              ),
              Image.asset('assets/images/suguru-geto.jpeg', height: 200),
              Image.asset('assets/images/suguru-geto.jpeg', height: 200),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text('Save'),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Edit')),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ExpandedFlexiblePage();
                          },
                        ),
                      );
                    },
                    child: Text('Go to Expanded/Flexible'),
                  ),
                  FilledButton(onPressed: () {}, child: Text('Exit')),
                  TextButton(onPressed: () {}, child: Text('Skip')),
                  CloseButton(onPressed: () {}),
                  BackButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
