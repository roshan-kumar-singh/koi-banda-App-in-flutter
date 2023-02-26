import 'package:flutter/material.dart';
import 'package:koibanda/screens/signin_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget singalProducts(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(child: Image.network('https://i.postimg.cc/kgdqwtQm/222.png')
          ),
        ],
      ),
    );
  }
  Widget singalProducts1(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(child: Image.network('https://i.postimg.cc/jjBpdDs5/333.png')
          ),
        ],
      ),
    );
  }
  Widget singalProducts2(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(child: Image.network('https://i.postimg.cc/NFXmqPdF/444.png')
          ),
        ],
      ),
    );
  }
  Widget singalProducts3(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(child: Image.network('https://i.postimg.cc/JnfHq5RL/555.png')
          ),
        ],
      ),
    );
  }
  Widget singalProducts4(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(child: Image.network('https://i.postimg.cc/L6L4LMqh/666.png')
          ),
        ],
      ),
    );
  }
  Widget singalProducts5(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(child: Image.network('https://i.postimg.cc/9Q2mBNTb/7777.png')
          ),
        ],
      ),
    );
  }
  Widget singalProducts6(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(child: Image.network('https://i.postimg.cc/B6RsPh4x/888.png')
          ),
        ],
      ),
    );
  }
  Widget singalProducts7(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(child: Image.network('https://i.postimg.cc/wT8g6bWz/999.png')
          ),
        ],
      ),
    );
  }
  Widget singalProducts8(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(child: Image.network('https://i.postimg.cc/vHswRxBH/10.png')
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Home',
            style: TextStyle(color: Colors.black, fontSize: 17)),
        actions: const [
          CircleAvatar(
            radius: 12,
           // backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search, size: 17, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 12,
             // backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shop, size: 17, color: Colors.black),
            ),
          ),
        ],
        //backgroundColor: const Color(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/image.png'),
                  ),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),

            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child:Row (
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                Text('Our services',style: TextStyle(color: Colors.black, fontSize: 25))
              ],
            ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singalProducts(),
                singalProducts1(),
                singalProducts2(),
                singalProducts3(),
              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child:Row (
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Text('',style: TextStyle(color: Colors.black, fontSize: 25))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalProducts4(),
                  singalProducts5(),
                  singalProducts6(),
                  singalProducts7(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child:Row (
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Text('',style: TextStyle(color: Colors.black, fontSize: 25))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalProducts8(),
                  singalProducts3(),
                  singalProducts5(),
                  singalProducts7(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
