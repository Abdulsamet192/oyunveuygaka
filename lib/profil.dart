import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:akademi_drewer/Flutter.dart';
import 'package:akademi_drewer/anasayfa-haberler.dart';
import 'package:akademi_drewer/Coursera.dart';
import 'package:akademi_drewer/unity.dart';
import 'package:akademi_drewer/ingilizce.dart';
import 'package:akademi_drewer/Planlama.dart';
import 'package:akademi_drewer/Girisimcilik.dart';

import 'BugünNeVar.dart';

class profil extends StatelessWidget {
  const profil({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4280ef),
        title: const Center(
          child: Text(
            "Profil",
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
                var title;
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
                  builder: (context) => Flutter(title: title),
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
                  builder: (context) => Coursera(title: title),
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
                  builder: (context) => ingilizce(title: title),
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
                  builder: (context) => girisimcilik(title: title),
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
                  builder: (context) => BuGunNeVar(title: title),
                ));
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('ekler/images/pp.png'),
            ),
            const SizedBox(height: 20),
            itemProfile(
              'Ad',
              'Kullanıcı',
              CupertinoIcons.person,
            ),
            const SizedBox(height: 10),
            itemProfile('Telefon', '03107085816', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile(
                'Adres', 'abc addre, xyz city', CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile(
                'Email', 'oyunveuygakde@gmail.com', CupertinoIcons.mail),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Profili Düzenle',
                      style: TextStyle(fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.blue.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle:
            Text(subtitle, style: const TextStyle(fontWeight: FontWeight.bold)),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.blue.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
