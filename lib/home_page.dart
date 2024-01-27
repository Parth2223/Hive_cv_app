import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildMainBody(),
      persistentFooterButtons: [_buildEditeAndRemoveButton()],
      floatingActionButton: _FloatingActionButton(),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildMainBody() {
    return FutureBuilder(
        future: Hive.openBox("Hive_DB"),
        builder: (context, snapshot) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                snapshot.data!.get('name').toString(),
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
              Text(
                snapshot.data!.get('age').toString(),
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
              Text(
                snapshot.data!.get('details')['work'].toString(),
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
            ],
          );
        });
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.indigo,
      title: Text("Hive App",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500)),
      centerTitle: true,
    );
  }

  Widget _buildEditeAndRemoveButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 45,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.indigo, borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ),
        Container(
          height: 45,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.indigo, borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.delete,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget _FloatingActionButton() {
    return FloatingActionButton(
      onPressed: () async {
        var box = await Hive.openBox("Hive_DB");
        box.put('name', "Parth Padsala Developer"); // string
        box.put('age', 24); // int
        box.put('details', {
          'profession': 'Developer',
          'work': 'Mobile App Develop',
          'company': 'Freelancer',
        }); // list of data
        print(box.get('name'));
        print(box.get('age'));
        print(box.get('details')['work']);
      },
      backgroundColor: Colors.indigo,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(backgroundColor: Colors.white);
  }
}
