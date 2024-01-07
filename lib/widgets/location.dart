import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  Position?position;
  fetchpostion() async{
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if(!serviceEnabled){
      Fluttertoast.showToast(msg: 'Service is not Enabled');
    }

    permission = await Geolocator.checkPermission();
    if(permission==LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission==LocationPermission.denied){
        Fluttertoast.showToast(msg: 'You denied the permission');
      }
    }
    if(permission==LocationPermission.deniedForever){
      Fluttertoast.showToast(msg: 'You denied the permission Forever');
    }
    Position currentpostion = await Geolocator.getCurrentPosition();
    setState(() {
      position = currentpostion;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade900,
        title: Text('Geolocator', style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white,),
        ),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(position==null? 'Location': position.toString(),style: TextStyle(color: Colors.white,fontSize: 20),)),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){ fetchpostion();}, child: Text('Getlocation',style: TextStyle(fontSize: 15),)),
          ],
        ),
      ),
    );
  }
}
