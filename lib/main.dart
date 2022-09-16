import 'package:flutter/material.dart';

void main() {
  runApp(Layout());
}

class Layout extends StatelessWidget {
  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  Layout({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(text: "Berita Terbaru"),
                  Tab(text: "Pertandingan Hari Ini"),
                ],
              ),
              title: Text('MyApp'),
            ),
            body: TabBarView(
              children: [
                Layout1(
                  key: this.key,
                ),
                Layout1(
                  key: this.key,
                ),
              ],
            ),
          )),
    );
  }
}

class Layout1 extends StatelessWidget {
  const Layout1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
              child: Column(
                children: [
                  Container(
                    child: Image(
                      image: AssetImage("images/timnas.jpg"),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Timnas Indonesia",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    color: Colors.purpleAccent,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(19),
                    child: Text(
                      "Transfer",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(width: 1)),
              margin: EdgeInsets.fromLTRB(2, 8, 2, 2),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      children: [
                        Container(
                          height: 130,
                          width: MediaQuery.of(context).size.width / 2,
                          child: Image(
                            image: AssetImage("images/asnawi.jpg"),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerRight,
                            height: 130,
                            padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                            width: (MediaQuery.of(context).size.width / 2) - 12,
                            child: Text(
                                "Asnawi cetak gol dengan operan yang bagus")),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text("Indonesia May 15, 2022"),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(width: 1)),
              margin: EdgeInsets.fromLTRB(2, 8, 2, 2),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      children: [
                        Container(
                          height: 130,
                          width: MediaQuery.of(context).size.width / 2,
                          child: Image(
                            image: AssetImage("images/arhan.jpg"),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          height: 130,
                          padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                          width: (MediaQuery.of(context).size.width / 2) - 12,
                          child: Text("Arhan Cetak Gol Lagi"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text("Indonesia Feb 12, 2022"),
                  )
                ],
              ),
            )
            return ListView.builder(
                      itemCount: titles.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(titles[index]),
                            subtitle: Text(subtitles[index]),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                                trailing: Icon(icons[index])));
                        }
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
