import 'package:flutter/material.dart';
import 'package:akademi_drewer/Flutter.dart';
import 'package:akademi_drewer/anasayfa-haberler.dart';
import 'package:akademi_drewer/Coursera.dart';
import 'package:akademi_drewer/unity.dart';
import 'package:akademi_drewer/ingilizce.dart';
import 'package:akademi_drewer/Girisimcilik.dart';
import 'package:akademi_drewer/profil.dart';
import 'package:table_calendar/table_calendar.dart';

import '../utils.dart';
import 'BugünNeVar.dart';

class planlama extends StatefulWidget {
  @override
  _planlamaState createState() => _planlamaState();
}

class _planlamaState extends State<planlama> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4280ef),
        title: const Center(
          child: Text(
            "Planlama",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const profil(
                  title: '',
                ),
              ));
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff4280ef),
              ),
              child: Center(
                child: Text(
                  'Oyun ve Uygulama Akademisi',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text(
                'Ana Sayfa',
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff787878),
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnaSayfa(
                    title: '',
                  ),
                ));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.add_alarm_sharp,
              ),
              title: const Text(
                'Planlama',
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff787878),
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => planlama(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.flutter_dash_outlined),
              title: const Text(
                'Flutter',
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff787878),
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Flutter(
                    title: '',
                  ),
                ));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.gamepad_outlined,
              ),
              title: const Text('Unity',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff787878),
                      fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const UnityPage(
                    title: '',
                  ),
                ));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.play_lesson,
              ),
              title: const Text('Coursera',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff787878),
                      fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Coursera(
                    title: '',
                  ),
                ));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.book,
              ),
              title: const Text('İngilizce',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff787878),
                      fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ingilizce(
                    title: '',
                  ),
                ));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.business_sharp,
              ),
              title: const Text('Girişimcilik',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff787878),
                      fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const girisimcilik(
                    title: '',
                  ),
                ));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.today,
              ),
              title: const Text('Bugün Ne Var?',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff787878),
                      fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BuGunNeVar(
                    title: '',
                  ),
                ));
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: kFirstDay,
            lastDay: kLastDay,
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDay, selectedDay)) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              }
            },
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffecbe12),
              ),
              padding: const EdgeInsets.all(12),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text('Nisan Ayı Sonuna Kadar Görevleri Bitir!',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('30 Nisan',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffdc4d3f),
              ),
              padding: const EdgeInsets.all(12),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text('Coursera Görevlerini Unutma!',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          '16 Nisan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff418cf5),
              ),
              padding: const EdgeInsets.all(12),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text('App JAM Proje Teslimi!',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('11 Nisan',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff31ab5c),
              ),
              padding: const EdgeInsets.all(12),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text('İngilizce Son 2 Modül!',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          '30 Nisan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
