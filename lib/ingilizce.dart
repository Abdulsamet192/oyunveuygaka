import 'package:akademi_drewer/profil.dart';
import 'package:flutter/material.dart';
import 'package:akademi_drewer/Flutter.dart';
import 'package:akademi_drewer/anasayfa-haberler.dart';
import 'package:akademi_drewer/Coursera.dart';
import 'package:akademi_drewer/unity.dart';
import 'package:akademi_drewer/Planlama.dart';
import 'package:akademi_drewer/Girisimcilik.dart';
import 'package:akademi_drewer/BugünNeVar.dart';

class ingilizce extends StatelessWidget {
  const ingilizce({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4280ef),
          title: Center(
            child: Text(
              "İngilizce",
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

        /* DRAWER START*/
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color(0xff4280ef),
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
                leading: Icon(
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
                    builder: (context) => AnaSayfa(
                      title: '',
                    ),
                  ));
                },
              ),
              ListTile(
                leading: Icon(
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
                leading: Icon(Icons.flutter_dash_outlined),
                title: const Text(
                  'Flutter',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff787878),
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Flutter(title: title),
                  ));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.gamepad_outlined,
                ),
                title: const Text('Unity',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff787878),
                        fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => UnityPage(
                      title: '',
                    ),
                  ));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.play_lesson,
                ),
                title: const Text('Coursera',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff787878),
                        fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Coursera(title: title),
                  ));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.book,
                ),
                title: const Text('İngilizce',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff787878),
                        fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ingilizce(title: title),
                  ));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.business_sharp,
                ),
                title: const Text('Girişimcilik',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff787878),
                        fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => girisimcilik(title: title),
                  ));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.today,
                ),
                title: const Text('Bugün Ne Var?',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff787878),
                        fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BuGunNeVar(title: title),
                  ));
                },
              ),
            ],
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("ekler/images/ing.png"), fit: BoxFit.fill)),
        ));
  }
}
