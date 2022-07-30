import 'package:flutter/material.dart';
import 'create_blog.dart';

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
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Flutter'
            ,
                style: TextStyle(
                  fontSize: 25,
                )),
            Text('Blog',
            style: TextStyle(
              fontSize: 25,
              color: Colors.blue,
            ))
          ],
        ),
      ),
      body: Container(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left:40.0,bottom: 20.0),
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
                onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => const CreateBlog()),);
                },
                child: Icon(Icons.add)),
          ),
        ],

      ),
    );
  }
}
