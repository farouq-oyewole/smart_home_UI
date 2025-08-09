import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/weather_showcase.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
 bool _isSwitched = false;
 bool _isSwitched1 = false;
 bool _isSwitched2 = false;
 bool _isSwitched3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leadingWidth: 200 ,actions: [Padding(
        padding: const EdgeInsets.only(right: 20.0,),
        child: IconButton(onPressed:() {Scaffold.of(context).openDrawer();},icon: CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.notifications_outlined))),
      )],leading: Padding(
        padding: const EdgeInsets.only(left: 20.0, ),
        child: Row(children: [
          IconButton(onPressed: (){}, icon: CircleAvatar(backgroundImage: AssetImage("assets/image-circle.png"),radius: 22,)),
          SizedBox(width: 5,),
          Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8,),
                    Text("Good Morning",),
                    Text("Oyewole Farouq", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                  ],
                ),  
        ],),
      ),),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0,),
        child: Center(
          child: Container(
            color: Colors.transparent, // Don't override grey background
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Center(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)),
                    width: 600,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: WeatherShow(),
                    ),
                    ),
                ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Text("My Device",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 IconButton(onPressed: () {}, icon: CircleAvatar(backgroundColor: Colors.black,child: Icon(Icons.add, size: 16,color: Colors.white,),)),
                 IconButton(onPressed: () {}, icon: CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.lightbulb_outlined, size: 16,color: Colors.black,))),
                 IconButton(onPressed: () {}, icon: CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.tv_outlined, size: 16,color: Colors.black,))), 
                 IconButton(onPressed: () {}, icon: CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.speaker_outlined, size: 16,color: Colors.black,))),
                 IconButton(onPressed: () {}, icon: CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.air_outlined, size: 16,color: Colors.black,))),
                ],
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.white, border: Border.all(
                      color: Colors.transparent, // Border color
                      width: 1.0,         // Border thickness
                    ),),
                      height: 280,
                      width: 170,
                      child: Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(backgroundColor: Colors.grey[200],child: Icon(Icons.air_outlined, size: 16,color: Colors.black,)),
                                CupertinoSwitch(
                          value: _isSwitched,
                          onChanged: (bool value) {
                          setState(() {
                          _isSwitched = value;
                       });},
                       )
                              ],
                            ),
                            Text("Air Conditioner", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),),
                            Text("Bedroom", style: TextStyle(fontSize: 13,),), 
                            Divider(thickness: 0.3,color: Colors.grey),
                            Text("71°", style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),), 
                            Text("Fareinheit",style: TextStyle(fontSize: 13,)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              IconButton(onPressed:() {},  icon: CircleAvatar(backgroundColor: Colors.grey[200], child: IconButton(onPressed: () {}, icon: Icon(Icons.add, color: Colors.black,))),),
                              IconButton(onPressed:() {}, icon: CircleAvatar(backgroundColor: Colors.grey[200], child: IconButton(onPressed: () {}, icon: Icon(Icons.remove, color: Colors.black,)))),
                            ],),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.white, border: Border.all(
                          color: Colors.transparent, // Border color
                          width: 1.0,         // Border thickness
                        ),),
                          height: 135,
                          width: 170,
                          child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(backgroundColor: Colors.grey[200],child: Icon(Icons.tv_outlined, size: 16,color: Colors.black,)),
                                    CupertinoSwitch(
                              value: _isSwitched1,
                              onChanged: (bool value) {
                              setState(() {
                              _isSwitched1 = value;
                           });},)
                                  ],
                                ),
                                Text("Smart TV", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),),
                                Text("Living Room", style: TextStyle(fontSize: 13,),), 
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.white, border: Border.all(
                      color: Colors.transparent, // Border color
                      width: 1.0,         // Border thickness
                    ),),
                      height: 135,
                      width: 170,
                      child: Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(backgroundColor: Colors.grey[200],child: Icon(Icons.speaker_outlined, size: 16,color: Colors.black,)),
                                CupertinoSwitch(
                          value: _isSwitched2,
                          onChanged: (bool value) {
                          setState(() {
                          _isSwitched2 = value;
                       });})
                              ],
                            ),
                            Text("Speakers", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),),
                            Text("Work Office", style: TextStyle(fontSize: 13,),), 
                          ],
                        ),
                      ),
                    ),
                      ],
                    ),
                  ],),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.white, border: Border.all(
                      color: Colors.transparent, // Border color
                      width: 1.0,         // Border thickness
                    ),),
                      height: 65,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(backgroundColor: Colors.grey[200],child: Icon(Icons.lightbulb_outlined, size: 16,color: Colors.black,)),
                            SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Lamp", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),),
                                Text("Kitchen", style: TextStyle(fontSize: 13,),),
                              ],
                            ), 
                            Spacer(flex:1),
                                 CupertinoSwitch(
                                                value: _isSwitched3,
                                                onChanged: (bool value) {
                                                setState(() {
                                                _isSwitched3 = value;
                                             });})
                          ],
                        ),
                      ),
                    ),
              ),

            ],),
          ),
        ),
      ),
    );
  }
}

