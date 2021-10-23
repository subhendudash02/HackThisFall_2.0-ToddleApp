import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../my_text_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Weather",
          style: TextStyle(
              fontWeight: FontWeight.w300,
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){
                print("Yo!!!");
              },
              icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.grey.shade900,
                  Colors.black,
                ],
            ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // row-1
            _SnowIcon(),
            // row-2
            _Temperature(),
            // row-3
            _Location(),
            // and so-on
            _Date(),
            _Description(),
            _hourlyWeather(),
            _Weekly(),
          ],
        ),
      ),
    );
  }

  final List<String> times = ['Now', '23', '24', '25', '26', '27', '28', '29', '30', '31', '1'];
  final List<String> temps = ['24°', '20°', '25°', '28°', '31°', '19°', '20°', '23°', '29°', '33°', '30°'];

  Widget _hourlyWeather() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 100,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white.withOpacity(0.3),

          ),
          top: BorderSide(
            color: Colors.white.withOpacity(0.3),
          ),
        ),
      ),
      child: ListView.builder(
          itemCount: times.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 70,
              child: Card(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyTextWidget(
                        title: times[index],
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white,
                    ),
                    Icon(
                      Icons.cloud_queue,
                      color: Colors.white,
                    ),
                    MyTextWidget(
                      title: temps[index],
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            );
          },
      ),
    );
  }

  Widget _Temperature() {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Text(
        '24°',
        style: TextStyle(
            color: Colors.white,
            fontSize: 90.0,
            fontWeight: FontWeight.w200,
        ),
      ),
    );
  }

  Widget _Description() {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 10,),
      child:
      MyTextWidget(
        color: Colors.green,
        title: "Cloudy",
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _Date() {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Text(
              "Today",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w800,
              ),
          ),
          SizedBox(
            width: 10, // To give space between two child
          ),
          Text(
            "22/10/2021",
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ],
      ),
    );
  }

  Widget _Location() {
    return Container(
      padding: EdgeInsets.only(left: 20, bottom: 10,),
      child: Row(
        children: [
          Icon(
              Icons.place,
              color: Colors.white
          ),
          Text(
            "Bangalore, India",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  Widget _SnowIcon() {
    return Center(
      child: Container(
        height: 200,
        child:  Image.asset(
          "assets/images/cloud.png",
          height: 1000.0,
        ),
      ),
    );
  }

  final List<String> weekName = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];

  Widget _Weekly() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 100,
      child: ListView.builder(
        itemCount: weekName.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            width: 70,
            child: Card(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyTextWidget(
                    title: weekName[index],
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.cloud_queue,
                    color: Colors.yellow,
                  ),
                  MyTextWidget(
                    title: temps[index],
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}