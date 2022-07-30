import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateBlog extends StatefulWidget {
  const CreateBlog({Key? key}) : super(key: key);

  @override
  State<CreateBlog> createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
  String? authorName,title,desc;
  XFile? selectedImg;
  ImagePicker picker = ImagePicker();
  Future getImage() async{
    var image=await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      selectedImg=image;
    });
  }


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
    actions: <Widget> [
      GestureDetector(
        onTap: (){

        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 17.0),
            child: Icon(Icons.file_upload)
        ),
      ),
    ],
    ),
      body: Column(
        children: [
          SizedBox(height: 20.0,),
          GestureDetector(
            onTap: (){
              getImage();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0),
              height: 170,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Icon(Icons.add_a_photo, color: Colors.black45,),
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(hintText: "Author Name"),
                  onChanged: (val){
                    authorName=val;
                  },
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Title"),
                  onChanged: (val){
                    title=val;
                  },
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Description"),
                  onChanged: (val){
                    desc=val;
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
