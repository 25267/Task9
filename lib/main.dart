import 'package:flutter/material.dart';
import 'package:mobile_assignment9/card_widget.dart';
import 'package:mobile_assignment9/expanded_widgets.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text('Weather Forecast', style: TextStyle(fontSize: 20)),
    );
  }


  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final PreferredSizeWidget appBar = _buildAppBar();
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: (mediaQuery.size.height -
                      appBar.preferredSize.height -
                      mediaQuery.padding.top) *
                  0.05,
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 20, color: Colors.white),
                    hintText: 'Enter City Name',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    enabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15)),
              ),
            ),
            Container(
              height: (mediaQuery.size.height -
                      appBar.preferredSize.height -
                      mediaQuery.padding.top) *
                  0.14,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Murmansk Oblast, RU',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Friday, Mar 20, 2020',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 22),
                  ),
                ],
              ),
            ),
            Container(
              height: (mediaQuery.size.height -
                      appBar.preferredSize.height -
                      mediaQuery.padding.top) *
                  0.22,
              margin: EdgeInsets.only(left: 75),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.wb_sunny,
                    size: 90,
                    color: Colors.white,
                  ),
                SizedBox(width: 10,),
                  Column(
                    children: [
                      Text(
                        '14 \u2109',
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'LIGHT SNOW',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],


              ),
            ),
            Container(
              height: (mediaQuery.size.height -
                      appBar.preferredSize.height -
                      mediaQuery.padding.top) *
                  0.20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ExpandedWidgets('5', "km/hr"),
                  ExpandedWidgets('3', "%"),
                  ExpandedWidgets('20', "%"),
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.symmetric(vertical: 5.0),
              height: (mediaQuery.size.height -
                      appBar.preferredSize.height -
                      mediaQuery.padding.top) *
                  0.25,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardWidget(day: 'Monday', fahrenheit: '6',),
                  CardWidget(day: 'Tuesday', fahrenheit: '7',),
                  CardWidget(day: 'Wednesday', fahrenheit: '5',),
                  CardWidget(day: 'Thursday', fahrenheit: '10',),
                  CardWidget(day: 'Friday', fahrenheit: '6 '),
                  CardWidget(day: 'Saturday', fahrenheit: '5',),
                  CardWidget(day: 'Sunday', fahrenheit: '22',),
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
