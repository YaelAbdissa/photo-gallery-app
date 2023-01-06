import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

import 'new.dart';
import 'screens/photo_gallery_screen.dart';
import 'package:add_2_calendar/add_2_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedScreenIndex = 0;
  final List<Widget> _screens = const [HomePage(), HomePageSecond()];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Screen 1'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Screen 2")
        ],
      ),
    );
  }
}

class EmailSender extends StatefulWidget {
  const EmailSender({super.key});

  @override
  State<EmailSender> createState() => _EmailSenderState();
}

class _EmailSenderState extends State<EmailSender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // final Email email = Email(
                //   body: 'Email body',
                //   subject: 'Email subject',
                //   recipients: ['fixmycity3@gmail.com'],
                //   isHTML: false,
                // );

                // await FlutterEmailSender.send(email);

                final Event event = Event(
                  title: 'Event title',
                  description: 'Event description',
                  location: 'Event location',
                  startDate: DateTime(2022, 12, 15),
                  endDate: DateTime(2022, 12, 15),
                  // iosParams: IOSParams(
                  //   reminder: Duration(
                  //                       ),                    url:
                  //       'https://www.example.com', // on iOS, you can set url to your event.
                  // ),
                  // androidParams: AndroidParams(
                  //   emailInvites: [],
                  // ),
                );
                Add2Calendar.addEvent2Cal(event);
              },
              child: const Text(
                "Send Email",
              ),
            )
          ],
        ),
      ),
    );
  }
}
