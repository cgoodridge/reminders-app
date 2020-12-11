import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Reminders"),
      ),
      body: _buildBody(context),
      backgroundColor: Color(0xfff5f0ec),
    );
  }

  Widget _buildBody(BuildContext context) {

    double cardRadius = 15.0;
    return SafeArea(
      child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'Search ',
                    filled: true,
                    //contentPadding: EdgeInsets.all(0.0),
                    isDense: true,
                    prefixIcon: Icon(Icons.search),
                ),
                style: TextStyle(
                  //backgroundColor: Colors.grey
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: GridView.count(
                    shrinkWrap: true, // new line
                    physics: NeverScrollableScrollPhysics(), // new line
                    crossAxisCount: 2,
                    childAspectRatio: 2/1.3,
                    children: <Widget>[
                      SizedBox(

                        child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(0),
                                        padding: EdgeInsets.all(10),

                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Colors.blue,
                                            border: Border.all(width: 1, color: Colors.white)
                                        ),

                                        child: Icon(Icons.calendar_today_outlined, color: Colors.white),

                                      ),
                                      Text("2", style: TextStyle(
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.bold)
                                      ),
                                    ],
                                  ),
                                  Text("Today",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                        child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(0),
                                        padding: EdgeInsets.all(10),

                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Colors.red,
                                            border: Border.all(width: 1, color: Colors.white)
                                        ),

                                        child: Icon(Icons.calendar_view_day_rounded, color: Colors.white),
                                      ),

                                      Text("3",
                                          style: TextStyle(
                                              fontSize: 28.0,
                                              fontWeight: FontWeight.bold)
                                      ),
                                    ],
                                  ),
                                  Text("Scheduled",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 20.0)
                                  ),
                                ],
                              ),

                            )

                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                        child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(0),
                                        padding: EdgeInsets.all(10),

                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Colors.black54,
                                            border: Border.all(width: 1, color: Colors.white)
                                        ),
                                        child: Icon(Icons.all_inbox_rounded, color: Colors.white),
                                      ),
                                      Text("9",
                                          style: TextStyle(
                                              fontSize: 28.0,
                                              fontWeight: FontWeight.bold)
                                      ),
                                    ],
                                  ),
                                  Text("All",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 20.0)
                                  ),
                                ],
                              ),
                            )

                        ),
                      ),

                      SizedBox(
                        height: 10.0,
                        child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardRadius),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(0),
                                        padding: EdgeInsets.all(10),

                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Colors.deepOrange,
                                            border: Border.all(width: 1, color: Colors.white)
                                        ),
                                        child: Icon(Icons.flag_rounded, color: Colors.white),

                                      ),
                                      Text("0",
                                          style: TextStyle(
                                              fontSize: 28.0,
                                              fontWeight: FontWeight.bold)
                                      ),
                                    ],
                                  ),
                                  Text("Flagged",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 20.0)
                                  ),
                                ],
                              ),
                            )

                        ),
                      ),
                    ]
                )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 4.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("My Lists",
                    style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.white)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),

                        ),

                        ListTile(
                          leading: Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(6),

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.deepOrange,
                                border: Border.all(width: 1, color: Colors.white)
                            ),
                            child: Icon(Icons.list, color: Colors.white),
                          ),
                          title: Text("Reminders"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("2"),
                              Icon(Icons.chevron_right_sharp),
                            ],
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(6),

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blue,
                                border: Border.all(width: 1, color: Colors.white)
                            ),
                            child: Icon(Icons.business, color: Colors.white),
                          ),
                          title: Text("Pellucid IT"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("3"),
                              Icon(Icons.chevron_right_sharp),
                            ],
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(6),

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.yellow,
                                border: Border.all(width: 1, color: Colors.white)
                            ),
                            child:Icon(Icons.family_restroom, color: Colors.white),
                          ),
                          title: Text("Family"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("0"),
                              Icon(Icons.chevron_right_sharp),
                            ],
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(6),

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.green,
                                border: Border.all(width: 1, color: Colors.white)
                            ),
                            child:Icon(Icons.list, color: Colors.white),
                          ),
                          title: Text("Tasks"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("1"),
                              Icon(Icons.chevron_right_sharp),
                            ],
                          ),
                        ),
                      ],
                    ),

                  )
              ),
            ),



          ]
        )
      );


  }
}
