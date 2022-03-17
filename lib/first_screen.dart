// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
//2020BTEIT00035
//ASSIGNMENT 4TH

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Assignment 4",
          style: TextStyle(fontSize: 28, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 10),
          MyListTile(img: 'img1', name: 'APPLE'),
          MyListTile(img: 'img2', name: 'BANANA'),
          MyListTile(img: 'img3', name: 'PAPAYA'),
          MyListTile(img: 'img4', name: 'MAIZE'),
          MyListTile(img: 'img5', name: 'MANGO'),
          MyListTile(img: 'img6', name: 'SAPOTA'),
          MyListTile(img: 'img7', name: 'STRAWBERY'),
          MyListTile(img: 'img8', name: 'SUGARCANE'),
        ],
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
    required this.name,
    required this.img,
  }) : super(key: key);

  final String name, img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
        ),
        child: ListTile(
          title: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
              // fontFamily: "Ubuntu",
            ),
          ),
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(300),
              border: Border.all(width: 2, color: Colors.white),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(300),
              child: Image(
                image: AssetImage("images/$img.jpg"),
                width: 52,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
          ),
          onTap: () {
            Fluttertoast.showToast(msg: name);
          },
        ),
      ),
    );
  }
}

