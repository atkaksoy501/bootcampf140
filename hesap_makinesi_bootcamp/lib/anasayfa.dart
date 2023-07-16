import 'package:flutter/material.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  var sayi1, sayi2, sonuc;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        50,
      ),
      child: Center(
        child: Column(
          children: <Widget>[

            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  onPressed: sayiTopla,
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.deepPurple[50],
                      backgroundColor: Colors.deepPurpleAccent[100]),
                  child: Text("Topla"),
                ),
                ElevatedButton(
                  onPressed: sayiCikar,
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.deepPurple[50],
                      backgroundColor: Colors.deepPurpleAccent[100]),
                  child: Text("Çıkar"),
                ),
                ElevatedButton(
                  onPressed: sayiCarp,
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.deepPurple[50],
                      backgroundColor: Colors.deepPurpleAccent[100]),
                  child: Text("Çarp"),
                ),
                ElevatedButton(
                  onPressed: sayiBol,
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.deepPurple[50],
                      backgroundColor: Colors.deepPurpleAccent[100]),
                  child: Text("Böl"),
                )
              ],
            ),
            Text('Sonuç: $sonuc'),
          ],
        ),
      ),
    );
  }
}
