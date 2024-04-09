import 'package:flutter/material.dart';

class home extends StatefulWidget{
 const home({super.key});

  @override
  State<home> createState()  => _home();
}

class _home extends State<home>{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, MediaQuery.of(context).size.height*0.15),
          child: AppBar(
            backgroundColor: Colors.white,
            shadowColor: Colors.white,
            elevation: 5,
            shape: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),),
            actions: [
              IconButton(onPressed: (){}, icon:Icon(Icons.notifications) ,),
              IconButton(onPressed: (){}, icon:Icon(Icons.chat) ,),
            ],
            bottom: PreferredSize(
              preferredSize: Size.zero,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: TabBar(tabs: [
                  Text('For You',style: TextStyle(color: Colors.black , fontSize: 25),),
                  Text('Following',style: TextStyle(color: Colors.black , fontSize: 25),),

                ],
                  indicatorColor: Colors.black,
                ),
              ),
            ) ,
          ),
        ),
        drawer: Drawer(),

        body: TabBarView(children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
            height: 10,

          ),
          Container(
            height: 10,

          ),
        ]),
        
      ),
    );
  }
}