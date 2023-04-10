import 'package:akademi_drewer/profil.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:akademi_drewer/anasayfa-haberler.dart';
import 'package:akademi_drewer/Coursera.dart';
import 'package:akademi_drewer/unity.dart';
import 'package:akademi_drewer/ingilizce.dart';
import 'package:akademi_drewer/Planlama.dart';
import 'package:akademi_drewer/Girisimcilik.dart';
import 'package:akademi_drewer/BugünNeVar.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class Flutter extends StatelessWidget {
  const Flutter({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4280ef),
          title: const Center(
            child: Text(
              "Flutter",
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
        body: GridView.extent(
          primary: false,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          maxCrossAxisExtent: 1000.0,
          childAspectRatio: 1,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffecbe12),
              ),
              padding: const EdgeInsets.all(12),
              child: Container(
                child: Column(
                  children: [
                    Image.asset("ekler/images/image.png"),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            "1.01 Flutter ve Dart ile Mobil Uygulama Gelistirme Part 1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            "Açıklama : Bu derste Flutter ortamını tanımaya başlıyoruz.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Eğitim için ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' Buraya Tıklayınız!',
                                style: new TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.youtube.com/watch?v=Qv-3QWCbD1s&ab_channel=OyunveUygulamaAkademisi%27');
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffdc4d3f),
              ),
              padding: const EdgeInsets.all(12),
              child: Container(
                child: Column(
                  children: [
                    Image.asset("ekler/images/image.png"),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            "1.02 Flutter ve Dart ile Mobil Uygulama Gelistirme Part 2",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            "Açıklama: Bu derste Flutter ortamını tanımaya başlıyoruz.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Eğitim için ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' Buraya Tıklayınız!',
                                style: new TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.youtube.com/watch?v=R36qQKJEJes&ab_channel=OyunveUygulamaAkademisi');
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff418cf5),
              ),
              padding: const EdgeInsets.all(12),
              child: Container(
                child: Column(
                  children: [
                    Image.asset("ekler/images/image.png"),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            "1.03 Flutter ve Dart ile Mobil Uygulama Gelistirme Part 3",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            "Açıklama: Bu derste Flutter ortamını tanımaya başlıyoruz..",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Eğitim için ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' Buraya Tıklayınız!',
                                style: new TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.youtube.com/watch?v=IpbkpwPjTXI&ab_channel=OyunveUygulamaAkademisi');
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff31ab5c),
              ),
              padding: const EdgeInsets.all(12),
              child: Container(
                child: Column(
                  children: [
                    Image.asset("ekler/images/2.png"),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            "1.04-1 Flutter Kurulumu",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            "Açıklama: Bu derste Flutter kullanmak için gerekli olan IDE ve eklentilerin kurulumunu göreceğiz.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Eğitim için ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' Buraya Tıklayınız!',
                                style: new TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.youtube.com/watch?v=7fprzjYz2YY&ab_channel=OyunveUygulamaAkademisi');
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffecbe12),
              ),
              padding: const EdgeInsets.all(12),
              child: Container(
                child: Column(
                  children: [
                    Image.asset("ekler/images/3.png"),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            "1.04 Dart101 Geliştirme ortamı, Değişken ve sabitler",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                            "Açıklama: Bu derste Dart programlama diline giriş yapıyoruz.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Eğitim için ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' Buraya Tıklayınız!',
                                style: new TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.youtube.com/watch?v=fk1M7XpInpg&ab_channel=OyunveUygulamaAkademisi');
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
