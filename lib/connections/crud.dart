import 'package:cloud_firestore/cloud_firestore.dart';

class crudMethods{
  Future<void> addData(blogData) async{
    FirebaseFirestore.instance.collection("blogs").add(blogData).catchError((e){
      print(e);
    });
  }
}