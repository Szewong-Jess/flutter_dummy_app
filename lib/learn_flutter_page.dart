import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('appbar action');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/einstein.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.amber,
            ),
            Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                width: double.infinity,
                color: Colors.blueGrey,
                child: const Center(
                  child: Text('This is a text widget',
                      style: TextStyle(color: Colors.white)),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.amberAccent : Colors.blue,
                ),
                onPressed: () {
                  debugPrint('Elevated Button');
                },
                child: const Text('Elevated Button')),
            OutlinedButton(
                onPressed: () {
                  debugPrint('Outlines Button');
                },
                child: const Text('Outlined Button')),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint(
                  'This is the row',
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.amber,
                  ),
                  Text(
                    'Row widgets',
                  ),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool;
                  });
                }),
            Image.network(
                'https://hips.hearstapps.com/hmg-prod/images/worlds-smallest-dogs-1647336453.jpg?crop=0.493xw:0.987xh;0.505xw,0.00326xh&resize=1200:*')
          ],
        ),
      ),
    );
  }
}
