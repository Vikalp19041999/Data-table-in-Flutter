import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table in Flutter'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
      ),
      body: Container(
        child: DataTable(
            columns: <DataColumn>[
              DataColumn(
                  label: Text(
                    'First Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  numeric: true,
                  onSort: (i, b) {},
                  tooltip: 'Display the first name'),
              DataColumn(
                  label: Text(
                    'Last Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  numeric: true,
                  onSort: (i, b) {},
                  tooltip: 'Display the last name'),
            ],
            rows: names
                .map((name) => DataRow(
                  cells: [
                      DataCell(Text(name.firstName),
                          showEditIcon: false, placeholder: false),
                      DataCell(Text(name.lastName),
                          showEditIcon: false, placeholder: false),
                    ]))
                .toList()),
      ),
    );
  }
}

class Name {
  String firstName;
  String lastName;

  Name({this.firstName, this.lastName});
}

var names = <Name>[
  Name(firstName: "Vikalp", lastName: "Chakravorty"),
  Name(firstName: "Shubham", lastName: "Jaroli"),
  Name(firstName: "Rajveer", lastName: "Choudhary"),
  Name(firstName: "Ranjeet", lastName: "Sen"),
];
