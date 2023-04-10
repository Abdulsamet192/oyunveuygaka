import 'package:akademi_drewer/profil.dart';
import 'package:flutter/material.dart';
import 'package:akademi_drewer/Flutter.dart';
import 'package:akademi_drewer/Coursera.dart';
import 'package:akademi_drewer/unity.dart';
import 'package:akademi_drewer/ingilizce.dart';
import 'package:akademi_drewer/Planlama.dart';
import 'package:akademi_drewer/Girisimcilik.dart';
import 'package:akademi_drewer/BugünNeVar.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4280ef),
        title: const Center(
          child: Text(
            "Ana Sayfa - Haberler",
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
              })
        ],
      ),
      body: GridView.extent(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        maxCrossAxisExtent: 1000.0,
        childAspectRatio: 2,
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
                  Row(
                    children: const [
                      Icon(
                        Icons.account_balance_sharp,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      Text("Oyun ve Uygulama Akademisi",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  const Text(
                      "Merhabalar, APP JAM başladı! Konseptimiz Akademi içinde kullanılabilecek uygulamalar! Herkese başarılar diliyoruz!",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('6 Nisan',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
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
                  Row(
                    children: const [
                      Icon(
                        Icons.account_balance_sharp,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      Text("Yazılımcılar için İngilizce",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  const Text(
                      "BU AKŞAM 21.00'da eğitmenimiz Seçkin Esen ile Yazılımcılar için İngilizce Canlı Yayınımız var! Hem speaking praktiği yapıp hem de sorularınıza cevap bulabileceğiniz şahane bir etkinlik sizi bekliyor!",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('29 Mart',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
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
                  Row(
                    children: const [
                      Icon(
                        Icons.account_balance_sharp,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      Text("Deneyimlerinizi Aktarın",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  const Text(
                      "Akademi’ye veya oyun, uygulama geliştirmeye dair tüm içeriklerinizi Akademi Medium yayınımıza gönderebilirsiniz🤗 Yayına girdiğinizde “Yazar Ol” butonu ile örnek bir yazınızı ileterek Akademi yazarları arasına dahil edilebilirsiniz.",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('29 Mart',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
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
                  Row(
                    children: const [
                      Icon(
                        Icons.account_balance_sharp,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      Text("Soru-Cevap Buluşması",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  const Text(
                      "BU AKŞAM 20.00'de Girişimciler için İK Etkinliğimiz var. İnsan Kaynaklarına dair merak edilenleri dinlemek ve sormak isteyen herkesi bekleriz.",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('15 Mart',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
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
                  Row(
                    children: const [
                      Icon(
                        Icons.account_balance_sharp,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      Text("Psikolojik Bakım Seansı",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  const Text(
                      "Afet sonrası travmaya dair detayları ve Akademi topluluğunda sağlıklı iletişim süreci yönetebilmek için nelere dikkat etmemiz gerektiğini öğreneceğimiz seansımıza müsait olan herkesi bekliyoruz.",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('6 Mart',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
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
                  Row(
                    children: const [
                      Icon(
                        Icons.account_balance_sharp,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      Text("Görevler Güncellendi",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  const Text(
                      "Deprem bölgesinde bulunan arkadaşlarımıza bundan sonrası için bir form ilettik, 1 Mart’a kadar forma yanıt vermelerini rica ediyoruz, 2023 yılı bursiyeri olma hakları tanıdık.",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('22 Şubat',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
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
                  Row(
                    children: const [
                      Icon(
                        Icons.account_balance_sharp,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      Text("İngilizce Canlı Yayını",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  const Text(
                      "Yazılımcılar için İngilizce canlı yayınımız BAŞLIYOR! Etkinliğimiz ZOOM üzerinden gerçekleşecek ve speaking pratiği üzerine olacak. ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('26 Ocak',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff31ab5c),
            ),
            padding: const EdgeInsets.all(12),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.account_balance_sharp,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      Text("Game Jam Açılıyor",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  const Text(
                      "Game & App Jam’de BUGÜN 21:00'da Game Jam açılışı var! Danışmanımız Atıl Samancıoğlu ve Unity Eğitmenimiz Tolgay Hıçkıran’ın katılımıyla gerçekleştireceğimiz etkinlikte Game Jam temasını ve Game Jame dair süreç detaylarını konuşacağız",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('7 Nisan',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      /* DRAWER START*/
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: const Color(0xff4280ef)),
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
    );
  }
}
